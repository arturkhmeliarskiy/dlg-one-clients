import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:collection/collection.dart';
import 'package:common/common.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/home/presentation/bloc/global_chat_bloc.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';
import 'package:sip_repository/sip_repository.dart';
import 'package:socket_api_models/socket_api_models.dart';
import 'package:web_socket_client/web_socket_client.dart' as ws;

///
/// Created by Nightwelf 24.03.2023 13:28
/// Telegram: @nightwelf
///

part 'sip_bloc.freezed.dart';

part 'sip_event.dart';

part 'sip_state.dart';

class SipBloc extends Bloc<SipEvent, SipState>
    with SipListener, SipActiveCallListener, SubscriptionMixin {
  /// constructor Sip Bloc
  SipBloc({
    required UsersBloc usersBloc,
    required GlobalChatBloc globalChatBloc,
    required DlsRestApi restApi,
    required ws.WebSocket socketApi,
    required SipRepository sipRepository,
    required DlsLogger logger,
  })  : _usersBloc = usersBloc,
        _globalChatBloc = globalChatBloc,
        _restApi = restApi,
        _socketApi = socketApi,
        _sipRepository = sipRepository,
        _logger = logger,
        super(
          const _IdleSipState(
            activeCalls: [],
            uniqueLocalIgnoreCallIds: <String>[],
            incomingCatched: null,
          ),
        ) {
    on<SipEvent>(
      (event, em) => event.map<Future<void>>(
        doCall: (ev) => _doCall(ev, em),
        hangUp: (ev) => _hangUp(ev, em),
        forceHangUp: (ev) => _forceHangUp(ev, em),
        muteAudio: (ev) => _muteAudio(ev, em),
        muteVideo: (ev) => _muteVideo(ev, em),
        muteSpeaker: (ev) => _muteSpeaker(ev, em),
        switchCamera: (ev) => _switchCamera(ev, em),
        onSocketUpdate: (ev) => _onSocketUpdate(ev, em),
        onSocketRemoteUserReject: (ev) => _onSocketRemoteUserReject(ev, em),
        onSocketRemoteUserBusy: (ev) => _onSocketRemoteUserBusy(ev, em),
        onSocketRemoteUserHangup: (ev) => _onSocketRemoteUserHangup(ev, em),
        onSocketSpeak: (ev) => _onSocketSpeak(ev, em),
        onCallStateChanged: (ev) => _onCallStateChanged(ev, em),
        onSipCallStream: (ev) => _onSipCallStream(ev, em),
        onSipNewCall: (ev) => _onSipNewCall(ev, em),
        onSipCallEnded: (ev) => _onSipCallEnded(ev, em),
        onSipMuted: (ev) => _onSipMuted(ev, em),
        onSipUnmuted: (ev) => _onSipUnmuted(ev, em),
        maximize: (ev) => _maximize(ev, em),
        rejectIncoming: (ev) => _rejectIncoming(ev, em),
        acceptIncoming: (ev) => _acceptIncoming(ev, em),
        busyIncoming: (ev) => _busyIncoming(ev, em),
      ),
      transformer: sequential(),
    );
    // Listen for socket incoming messages.
    addSubscription(
      _socketApi.messages.listen(
        (message) {
          if (message is String) {
            onSocketMessage(SocketResponseMessage.fromStringJson(message));
          }
        },
      ),
    );
    _sipRepository.addListener(this);
    const delay = 350;
    _timer ??= Timer.periodic(const Duration(milliseconds: delay), (_) async {
      await state.whenOrNull(
        activeCall: (
          activeCalls,
          incomingCatched,
          uniqueLocalIgnoreCallIds,
          currentActiveCall,
          isAudioMuted,
          isVideoMuted,
          localStreamer,
          remoteStreamers,
          isMaximized,
          transaction,
        ) async {
          if (isAudioMuted) {
            if (currentActiveCall.callMeta.callers
                    .firstWhereOrNull(
                      (element) =>
                          element.dlsId == _usersBloc.state.currentUser?.dlsId,
                    )
                    ?.speak ??
                false) {
              _socketApi.send(
                SocketRequestMessage.call(
                  CallAction.speak(
                    speak: false,
                    number: currentActiveCall.callMeta.number,
                  ),
                ).callAction.stringify(),
              );
            }
            return;
          }
          final call = _sipRepository.activeCalls
              .firstWhereOrNull((call) => currentActiveCall.callId == call.id);
          final senders = await call?.peerConnection?.getSenders();
          if (senders == null) {
            return;
          }
          for (final sender in senders) {
            if (sender.track?.kind == 'audio') {
              final stats = await sender.getStats();
              for (final stat in stats) {
                if (stat.values['audioLevel'] != null &&
                    localStreamer?.stream.getAudioTracks().first.label ==
                        stat.values['trackIdentifier']) {
                  if (stat.values['audioLevel'] as double > 0.1) {
                    _socketApi.send(
                      SocketRequestMessage.call(
                        CallAction.speak(
                          speak: true,
                          number: currentActiveCall.callMeta.number,
                        ),
                      ).callAction.stringify(),
                    );
                  } else {
                    if (currentActiveCall.callMeta.callers
                            .firstWhereOrNull(
                              (element) =>
                                  element.dlsId ==
                                  _usersBloc.state.currentUser?.dlsId,
                            )
                            ?.speak ??
                        false) {
                      _socketApi.send(
                        SocketRequestMessage.call(
                          CallAction.speak(
                            speak: false,
                            number: currentActiveCall.callMeta.number,
                          ),
                        ).callAction.stringify(),
                      );
                    }
                  }
                  break;
                }
              }
            }
          }
        },
      );
    });
  }

  Timer? _timer;
  final UsersBloc _usersBloc;
  final DlsRestApi _restApi;
  final ws.WebSocket _socketApi;
  final SipRepository _sipRepository;
  final GlobalChatBloc _globalChatBloc;
  final DlsLogger _logger;

  @override
  Future<void> close() {
    _timer?.cancel();
    _sipRepository.removeListener(this);
    cancelAllSubscriptions();
    return super.close();
  }

  /// работа с сокетами
  void onSocketMessage(SocketResponseMessage message) {
    message.whenOrNull(
      call: (payload) => payload.when(
        room_list: (callsMeta) => add(
          SipEvent.onSocketUpdate(
            callsMeta,
          ),
        ),
        hangup: (number, dlsId) => add(
          SipEvent.onSocketRemoteUserHangup(
            dlsId,
            number,
          ),
        ),
        reject: (number, dlsId) => add(
          SipEvent.onSocketRemoteUserReject(
            dlsId,
            number,
          ),
        ),
        busy: (number, dlsId) => add(
          SipEvent.onSocketRemoteUserBusy(
            dlsId,
            number,
          ),
        ),
        speak: (callMeta) => add(
          SipEvent.onSocketSpeak(
            callMeta: callMeta,
          ),
        ),
      ),
    );
  }

  /// работа с сип
  @override
  void onCallStateChanged(String callId, SipActiveCallState callState) =>
      add(SipEvent.onCallStateChanged(callId, callState));

  @override
  void onSipCallStream(SipActiveCall sipCall) =>
      add(SipEvent.onSipCallStream(sipCall));

  @override
  void onSipNewCall(SipActiveCall sipCall, SipActiveCallState callState) =>
      add(SipEvent.onSipNewCall(sipCall, callState));

  @override
  void onSipCallEnded(SipActiveCall sipCall) =>
      add(SipEvent.onSipCallEnded(sipCall));

  @override
  void onSipMuted(
    SipActiveCall sipCall,
    bool isAudioMuted,
    bool isVideoMuted,
  ) =>
      add(
        SipEvent.onSipMuted(
          sipCall,
          isAudioMuted,
          isVideoMuted,
        ),
      );

  @override
  void onSipUnmuted(
    SipActiveCall sipCall,
    bool isAudioMuted,
    bool isVideoMuted,
  ) =>
      add(
        SipEvent.onSipUnmuted(
          sipCall,
          isAudioMuted,
          isVideoMuted,
        ),
      );

  /// совершить звонок
  Future<void> _doCall(
    _DoCallSipEvent event,
    Emitter<SipState> emitter,
  ) async {
    emitter(
      SipState.calling(
        activeCalls: state.activeCalls,
        incomingCatched: state.incomingCatched,
        info: CallInitStep.one,
        uniqueLocalIgnoreCallIds: state.uniqueLocalIgnoreCallIds,
      ),
    );
    try {
      /// звонить
      final dlsCall = await _restApi.createCall(event.chatId);
      await _sipRepository.call(
        target: dlsCall.asteriskRoom.toString(),
        isVideoMuted: event.isVideoMuted,
      );
      emitter(
        SipState.calling(
          activeCalls: [
            ...state.activeCalls,
            ActiveCall(
              /// ид будет присвоен через newSipCall
              callId: null,

              /// мета которую уже можем взять/сгенерить
              callMeta: CallMeta(
                callers: [],
                uniqueId: null,
                chatId: event.chatId,
                number: dlsCall.asteriskRoom.toString(),
                startAt: null,
              ),
            ),
          ],
          incomingCatched: state.incomingCatched,
          info: CallInitStep.two,
          uniqueLocalIgnoreCallIds: state.uniqueLocalIgnoreCallIds,
        ),
      );
    } on ApiError catch (e, stackTrace) {
      if (e.statusCode == 429) {
        emitter(
          SipState.idle(
            message: S.current.serverError,
            activeCalls: state.activeCalls,
            incomingCatched: state.incomingCatched,
            uniqueLocalIgnoreCallIds: state.uniqueLocalIgnoreCallIds,
            transaction: getUuid,
          ),
        );
      } else if (e.toString().contains('Failed host lookup')) {
        emitter(
          SipState.idle(
            message: S.current.failedHostLookup,
            activeCalls: state.activeCalls,
            incomingCatched: state.incomingCatched,
            uniqueLocalIgnoreCallIds: state.uniqueLocalIgnoreCallIds,
            transaction: getUuid,
          ),
        );
      } else {
        emitter(
          SipState.idle(
            message: e.toString(),
            activeCalls: state.activeCalls,
            incomingCatched: state.incomingCatched,
            uniqueLocalIgnoreCallIds: state.uniqueLocalIgnoreCallIds,
            transaction: getUuid,
          ),
        );
      }
      _logger.e(e, stackTrace);
      rethrow;
    } catch (e, stackTrace) {
      if (e.toString().contains('Permission denied') ||
          e.toString().contains('Unable to getUserMedia')) {
        emitter(
          SipState.idle(
            message: S.current.noAccessToMicAndCamera,
            activeCalls: state.activeCalls,
            incomingCatched: state.incomingCatched,
            uniqueLocalIgnoreCallIds: state.uniqueLocalIgnoreCallIds,
            transaction: getUuid,
          ),
        );
      } else {
        emitter(
          SipState.idle(
            message: e.toString(),
            activeCalls: state.activeCalls,
            incomingCatched: state.incomingCatched,
            uniqueLocalIgnoreCallIds: state.uniqueLocalIgnoreCallIds,
            transaction: getUuid,
          ),
        );
      }
      _logger.e(e, stackTrace);
      rethrow;
    }
  }

  /// положить трубку
  Future<void> _hangUp(
    _DoHangUpSipEvent event,
    Emitter<SipState> emitter,
  ) async {
    await state.mapOrNull(
      idle: (idle) async {
        try {
          if (idle.incomingCatched != null) {
            emitter(
              SipState.hangUp(
                activeCalls: idle.activeCalls,

                /// выкинуть персональный звонок
                incomingCatched: null,
                uniqueLocalIgnoreCallIds: idle.uniqueLocalIgnoreCallIds,
                status: event.outcomingPersonalCallStatus,
                transaction: getUuid,
              ),
            );

            emitter(
              SipState.idle(
                activeCalls: idle.activeCalls,

                /// выкинуть персональный звонок
                incomingCatched: null,
                uniqueLocalIgnoreCallIds: idle.uniqueLocalIgnoreCallIds,
                transaction: getUuid,
              ),
            );
          }
        } catch (e, stackTrace) {
          emitter(
            SipState.idle(
              activeCalls: idle.activeCalls,
              message: e.toString(),

              /// выкинуть персональный звонок
              incomingCatched: null,
              uniqueLocalIgnoreCallIds: idle.uniqueLocalIgnoreCallIds,

              transaction: getUuid,
            ),
          );
          _logger.e(e, stackTrace);
          rethrow;
        }
      },
      activeCall: (activeCallState) async {
        try {
          final isPrivate =
              _privateCalls([activeCallState.currentActiveCall]).isNotEmpty;
          if (isPrivate) {
            _socketApi.send(
              SocketRequestMessage.call(
                CallAction.hangup(
                  number: activeCallState.currentActiveCall.callMeta.number,
                ),
              ).callAction.stringify(),
            );
          }

          if (activeCallState.currentActiveCall.callId != null) {
            /// просто положить трубку
            _sipRepository.hangUp(activeCallState.currentActiveCall.callId!);
          }

          emitter(
            SipState.hangUp(
              activeCalls: activeCallState.activeCalls,

              /// выкинуть персональный звонок
              incomingCatched: null,
              uniqueLocalIgnoreCallIds:
                  activeCallState.uniqueLocalIgnoreCallIds,
              status: event.outcomingPersonalCallStatus,
              transaction: getUuid,
            ),
          );

          emitter(
            SipState.idle(
              activeCalls: activeCallState.activeCalls,

              /// выкинуть персональный звонок
              incomingCatched: null,
              uniqueLocalIgnoreCallIds:
                  activeCallState.uniqueLocalIgnoreCallIds,
              transaction: getUuid,
            ),
          );
        } catch (e, stackTrace) {
          emitter(
            SipState.idle(
              activeCalls: activeCallState.activeCalls,
              message: e.toString(),

              /// выкинуть персональный звонок
              incomingCatched: null,
              uniqueLocalIgnoreCallIds:
                  activeCallState.uniqueLocalIgnoreCallIds,
              transaction: getUuid,
            ),
          );
          _logger.e(e, stackTrace);
          rethrow;
        }
      },
    );
  }

  /// положить трубку
  // TODO(nightwelf): надо потестить
  Future<void> _forceHangUp(
    _ForceHangUpSipEvent event,
    Emitter<SipState> emitter,
  ) async {
    _sipRepository.hangUpAll();
    emitter(
      SipState.idle(
        activeCalls: state.activeCalls,

        /// выкинуть персональный звонок
        incomingCatched: null,
        uniqueLocalIgnoreCallIds: state.uniqueLocalIgnoreCallIds,
        transaction: getUuid,
      ),
    );
  }

  Future<void> _muteAudio(
    _MuteAudioSipEvent event,
    Emitter<SipState> emitter,
  ) async {
    await state.mapOrNull(
      activeCall: (activeCallState) async {
        try {
          _sipRepository.muteAudio(activeCallState.currentActiveCall.callId!);
        } catch (e, stackTrace) {
          _logger.e(e, stackTrace);
          rethrow;
        }
      },
    );
  }

  Future<void> _muteVideo(
    _MuteVideoSipEvent event,
    Emitter<SipState> emitter,
  ) async {
    state.mapOrNull(
      activeCall: (activeCallState) {
        try {
          _sipRepository.muteVideo(activeCallState.currentActiveCall.callId!);
        } catch (e, stackTrace) {
          _logger.e(e, stackTrace);
          rethrow;
        }
      },
    );
  }

  /// todo не тестировалось
  Future<void> _muteSpeaker(
    _MuteSpeakerSipEvent event,
    Emitter<SipState> emitter,
  ) async {
    state.mapOrNull(
      activeCall: (activeCallState) {
        _sipRepository.toggleSpeaker(activeCallState.currentActiveCall.callId!);
      },
    );
  }

  Future<void> _switchCamera(
    _SwitchCameraSipEvent event,
    Emitter<SipState> emitter,
  ) async {
    state.mapOrNull(
      activeCall: (activeCallState) {
        try {
          _sipRepository
              .switchCamera(activeCallState.currentActiveCall.callId!);
        } catch (e, stackTrace) {
          _logger.e(e, stackTrace);
          rethrow;
        }
      },
    );
  }

  /// через это событие прогоняются данные сервиса socket
  Future<void> _onSocketUpdate(
    _OnSocketUpdateSipEvent event,
    Emitter<SipState> emitter,
  ) async {
    final metas = event.callsMeta;
    if (metas == null) {
      return;
    }
    await state.whenOrNull(
      idle: (
        activeCalls,
        incomingCatched,
        uniqueLocalIgnoreCallIds,
        message,
        transaction,
      ) async {
        try {
          /// --------------------------------
          /// я не нахожусь в активном звонке
          /// --------------------------------

          /// сделаем новые звонки БЕЗ callId
          final newCalls = <ActiveCall>[];
          for (final meta in metas) {
            newCalls.add(ActiveCall(callId: null, callMeta: meta));
          }

          /// --------------------------------
          /// работа с персональными звонками
          /// --------------------------------

          /// оставить только новые персональные звонки
          final newPC = _privateCalls(newCalls)
            ..removeWhere(
              (element) =>
                  element.callMeta.uniqueId == null ||
                  uniqueLocalIgnoreCallIds.firstWhereOrNull(
                        (ign) => ign == element.callMeta.uniqueId,
                      ) !=
                      null,
            );

          /// обновить игнор лист
          final updatedUniqueLocalIgnoreCallIds =
              List<String>.from(uniqueLocalIgnoreCallIds);
          for (final call in newCalls) {
            if (call.callMeta.uniqueId != null) {
              updatedUniqueLocalIgnoreCallIds.add(call.callMeta.uniqueId!);
            }
          }

          /// --------------------------------
          /// обновление состояния
          /// --------------------------------
          emitter(
            state.copyWith(
              activeCalls: newCalls,
              uniqueLocalIgnoreCallIds: updatedUniqueLocalIgnoreCallIds,
              incomingCatched: newPC.firstOrNull,
              transaction: getUuid,
            ),
          );
        } catch (e, stackTrace) {
          _logger.e(e, stackTrace);
          rethrow;
        }
      },
      calling: (
        activeCalls,
        incomingCatched,
        info,
        uniqueLocalIgnoreCallIds,
        isMaximized,
        transaction,
      ) async {
        try {
          /// --------------------------------
          /// я в подготовительном состоянии
          /// --------------------------------

          /// --------------------------------
          /// сделаем новые звонки БЕЗ callId
          /// --------------------------------
          final newCalls = <ActiveCall>[];
          for (final meta in metas) {
            newCalls.add(ActiveCall(callId: null, callMeta: meta));
          }

          /// --------------------------------
          /// обновление состояния
          /// --------------------------------
          emitter(
            state.copyWith(
              activeCalls: newCalls,
              transaction: getUuid,
            ),
          );
        } catch (e, stackTrace) {
          _logger.e(e, stackTrace);
          rethrow;
        }
      },
      activeCall: (
        activeCalls,
        incomingCatched,
        uniqueLocalIgnoreCallIds,
        currentActiveCall,
        isAudioMuted,
        isVideoMuted,
        localStreamer,
        remoteStreamers,
        isMaximized,
        transaction,
      ) async {
        try {
          /// --------------------------------
          /// я в активном звонке
          /// --------------------------------
          ActiveCall? updatedCurrentActiveCall;

          /// --------------------------------
          /// сделаем новые звонки
          /// --------------------------------
          final newCalls = <ActiveCall>[];
          for (final meta in metas) {
            /// в этом состоянии нужны имена пользователей
            final callers = List<Caller>.from(meta.callers);
            for (var i = 0; i < callers.length; i++) {
              /// взять пользователя системы из хранилища
              final user = await _usersBloc.getUserByDlsId(callers[i].dlsId);

              /// добавить обновленного пользователя в массив пользователей звонка
              callers[i] =
                  callers[i].copyWith(userFriendlyName: user?.DLSUserName);
            }
            if (currentActiveCall.callMeta.number == meta.number) {
              updatedCurrentActiveCall = ActiveCall(
                callId: currentActiveCall.callId,
                callMeta: meta.copyWith(callers: callers),
              );
              newCalls.add(updatedCurrentActiveCall);
            } else {
              newCalls.add(ActiveCall(callId: null, callMeta: meta));
            }
          }

          /// --------------------------------
          /// подчистить потоки/рендеры в репозитории звонков через метки
          /// --------------------------------
          /// взять все старые метки
          final oldLabels = <String>[];
          for (final call in activeCalls) {
            for (final caller in call.callMeta.callers) {
              oldLabels.add(caller.label);
            }
          }

          /// взять все новые метки
          final newLabels = <String>[];
          for (final meta in metas) {
            for (final caller in meta.callers) {
              newLabels.add(caller.label);
            }
          }

          /// из старых меток вычесть новые = метки которые уже не актуальны
          final removeThisLabels = List<String>.from(oldLabels)
            ..removeWhere(
              (oldLabel) =>
                  newLabels
                      .firstWhereOrNull((newLabel) => newLabel == oldLabel) !=
                  null,
            );

          /// почистить стримеров по меткам
          for (final label in removeThisLabels) {
            await _sipRepository.removeRemoteStreamerByLabel(label);
          }

          /// --------------------------------
          /// работа с персональными звонками
          /// --------------------------------

          /// оставить только новые персональные звонки
          final newPC = _privateCalls(newCalls)
            ..removeWhere(
              (element) =>
                  element.callMeta.uniqueId == null ||
                  uniqueLocalIgnoreCallIds.firstWhereOrNull(
                        (ign) => ign == element.callMeta.uniqueId,
                      ) !=
                      null,
            );

          /// обновить игнор лист
          final updatedUniqueLocalIgnoreCallIds =
              List<String>.from(uniqueLocalIgnoreCallIds);
          for (final call in newCalls) {
            if (call.callMeta.uniqueId != null) {
              updatedUniqueLocalIgnoreCallIds.add(call.callMeta.uniqueId!);
            }
          }
          if (newPC.isNotEmpty) {
            /// пользователь занят (сейчас же состояние активного звонка)
            for (final call in newPC) {
              _socketApi.send(
                SocketRequestMessage.call(
                  CallAction.busy(
                    number: call.callMeta.number,
                  ),
                ).callAction.stringify(),
              );
            }
          }

          /// --------------------------------
          /// обновление состояния
          /// --------------------------------

          final activeCallState = currentActiveCall.callId == null
              ? null
              : _sipRepository.activeCallState(currentActiveCall.callId!);

          if (updatedCurrentActiveCall != null) {
            /// у меня есть инфа о звонке в сокете
            emitter(
              SipState.activeCall(
                activeCalls: newCalls,
                incomingCatched: null,
                uniqueLocalIgnoreCallIds: updatedUniqueLocalIgnoreCallIds,
                currentActiveCall: updatedCurrentActiveCall,
                isAudioMuted: activeCallState?.isAudioMuted ?? isAudioMuted,
                isVideoMuted: activeCallState?.isVideoMuted ?? isVideoMuted,
                localStreamer: localStreamer,
                remoteStreamers: currentActiveCall.callId == null
                    ? <Streamer>[]
                    : _sipRepository
                            .callRemoteStreamers(currentActiveCall.callId!) ??
                        <Streamer>[],
                isMaximized: isMaximized,
                transaction: getUuid,
              ),
            );
          } else {
            /// у меня нет инфы о звонке в сокете
            emitter(
              SipState.idle(
                activeCalls: newCalls,
                incomingCatched: newPC.firstOrNull,
                uniqueLocalIgnoreCallIds: updatedUniqueLocalIgnoreCallIds,
                transaction: getUuid,
              ),
            );
          }
        } catch (e, stackTrace) {
          _logger.e(e, stackTrace);
          rethrow;
        }
      },
    );
  }

  /// все персональные звонки
  List<ActiveCall> _privateCalls(List<ActiveCall> activeCalls) {
    try {
      final privateCalls = <ActiveCall>[];
      for (final chat in _globalChatBloc.state.privateRooms) {
        final activeCall =
            activeCalls.firstWhereOrNull((ac) => chat.id == ac.callMeta.chatId);
        if (activeCall != null) {
          privateCalls.add(activeCall);
        }
      }
      return privateCalls;
    } catch (e, stackTrace) {
      _logger.e(e, stackTrace);
      rethrow;
    }
  }

  Future<void> _onCallStateChanged(
    _OnCallStateChangedSipEvent event,
    Emitter<SipState> emitter,
  ) async {
    state.whenOrNull(
      activeCall: (
        activeCalls,
        incomingCatched,
        uniqueLocalIgnoreCallIds,
        currentActiveCall,
        stateIsAudioMuted,
        stateIsVideoMuted,
        stateLocalStreamer,
        stateRemoteStreamers,
        isMaximized,
        transaction,
      ) {
        try {
          final localStreamer = currentActiveCall.callId == null
              ? null
              : _sipRepository.callLocalStreamer(currentActiveCall.callId!);
          final remoteStreamers = currentActiveCall.callId == null
              ? null
              : _sipRepository.callRemoteStreamers(currentActiveCall.callId!);
          final activeCallState = currentActiveCall.callId == null
              ? null
              : _sipRepository.activeCallState(currentActiveCall.callId!);
          emitter(
            SipState.activeCall(
              activeCalls: activeCalls,
              incomingCatched: incomingCatched,
              uniqueLocalIgnoreCallIds: uniqueLocalIgnoreCallIds,
              currentActiveCall: currentActiveCall,
              isAudioMuted: activeCallState?.isAudioMuted ?? stateIsAudioMuted,
              isVideoMuted: activeCallState?.isVideoMuted ?? stateIsVideoMuted,
              localStreamer: localStreamer ?? stateLocalStreamer,
              remoteStreamers: remoteStreamers ?? stateRemoteStreamers,
              transaction: transaction,
              isMaximized: isMaximized,
            ),
          );
        } catch (e, stackTrace) {
          _logger.e(e, stackTrace);
          rethrow;
        }
      },
    );
  }

  Future<void> _onSipCallStream(
    _OnSipCallStreamSipEvent event,
    Emitter<SipState> emitter,
  ) async {
    state.whenOrNull(
      activeCall: (
        activeCalls,
        incomingCatched,
        uniqueLocalIgnoreCallIds,
        currentActiveCall,
        stateIsAudioMuted,
        stateIsVideoMuted,
        stateLocalStreamer,
        stateRemoteStreamers,
        isMaximized,
        transaction,
      ) {
        try {
          final localStreamer = currentActiveCall.callId == null
              ? null
              : _sipRepository.callLocalStreamer(currentActiveCall.callId!);
          final remoteStreamers = currentActiveCall.callId == null
              ? null
              : _sipRepository.callRemoteStreamers(currentActiveCall.callId!);
          final activeCallState = currentActiveCall.callId == null
              ? null
              : _sipRepository.activeCallState(currentActiveCall.callId!);
          emitter(
            SipState.activeCall(
              activeCalls: activeCalls,
              incomingCatched: incomingCatched,
              uniqueLocalIgnoreCallIds: uniqueLocalIgnoreCallIds,
              currentActiveCall: currentActiveCall,
              isAudioMuted: activeCallState?.isAudioMuted ?? stateIsAudioMuted,
              isVideoMuted: activeCallState?.isVideoMuted ?? stateIsVideoMuted,
              localStreamer: localStreamer ?? stateLocalStreamer,
              remoteStreamers: remoteStreamers ?? stateRemoteStreamers,
              transaction: transaction,
              isMaximized: isMaximized,
            ),
          );
        } catch (e, stackTrace) {
          _logger.e(e, stackTrace);
          rethrow;
        }
      },
    );
  }

  Future<void> _onSipNewCall(
    _OnSipNewCallSipEvent event,
    Emitter<SipState> emitter,
  ) async {
    state.whenOrNull(
      calling: (
        activeCalls,
        incomingCatched,
        info,
        uniqueLocalIgnoreCallIds,
        isMaximized,
        transaction,
      ) {
        try {
          for (final ac in activeCalls) {
            if (event.sipCall.number == ac.callMeta.number) {
              emitter(
                SipState.activeCall(
                  activeCalls: List.from(state.activeCalls)
                    ..removeWhere(
                      (element) => event.sipCall.number == ac.callMeta.number,
                    )
                    ..add(
                      ac.copyWith(
                        callId: event.sipCall.id,
                      ),
                    ),
                  incomingCatched: incomingCatched,
                  uniqueLocalIgnoreCallIds: state.uniqueLocalIgnoreCallIds,
                  currentActiveCall: ac.copyWith(
                    callId: event.sipCall.id,
                  ),
                  isAudioMuted: event.callState.isAudioMuted,
                  isVideoMuted: event.callState.isVideoMuted,
                  localStreamer: null,
                  remoteStreamers: [],
                ),
              );
            }
          }
        } catch (e, stackTrace) {
          _logger.e(e, stackTrace);
          rethrow;
        }
      },
    );
  }

  Future<void> _onSipCallEnded(
    _OnSipCallEndedSipEvent event,
    Emitter<SipState> emitter,
  ) async {
    state.mapOrNull(
      idle: (idleState) {
        try {
          _socketApi.send(
            SocketRequestMessage.call(
              CallAction.room_list(),
            ).callAction.stringify(),
          );
        } catch (e, stackTrace) {
          _logger.e(e, stackTrace);
          rethrow;
        }
      },
      calling: (callingState) {
        try {
          emitter(
            SipState.idle(
              activeCalls: callingState.activeCalls,
              incomingCatched: callingState.incomingCatched,
              uniqueLocalIgnoreCallIds: callingState.uniqueLocalIgnoreCallIds,
            ),
          );
          _socketApi.send(
            SocketRequestMessage.call(
              CallAction.room_list(),
            ).callAction.stringify(),
          );
        } catch (e, stackTrace) {
          _logger.e(e, stackTrace);
          rethrow;
        }
      },
      activeCall: (activeCallState) {
        try {
          emitter(
            SipState.idle(
              activeCalls: activeCallState.activeCalls,
              incomingCatched: activeCallState.incomingCatched,
              uniqueLocalIgnoreCallIds:
                  activeCallState.uniqueLocalIgnoreCallIds,
            ),
          );
          _socketApi.send(
            SocketRequestMessage.call(
              CallAction.room_list(),
            ).callAction.stringify(),
          );
        } catch (e, stackTrace) {
          _logger.e(e, stackTrace);
          rethrow;
        }
      },
    );
  }

  Future<void> _onSipMuted(
    _OnSipMutedSipEvent event,
    Emitter<SipState> emitter,
  ) async {
    state.mapOrNull(
      activeCall: (activeCallState) {
        try {
          emitter(
            SipState.activeCall(
              activeCalls: activeCallState.activeCalls,
              incomingCatched: activeCallState.incomingCatched,
              uniqueLocalIgnoreCallIds:
                  activeCallState.uniqueLocalIgnoreCallIds,
              currentActiveCall: activeCallState.currentActiveCall,
              isAudioMuted: event.isAudioMuted,
              isVideoMuted: event.isVideoMuted,
              localStreamer: activeCallState.localStreamer,
              remoteStreamers: activeCallState.remoteStreamers,
              transaction: activeCallState.transaction,
              isMaximized: activeCallState.isMaximized,
            ),
          );
        } catch (e, stackTrace) {
          _logger.e(e, stackTrace);
          rethrow;
        }
      },
    );
  }

  Future<void> _onSipUnmuted(
    _OnSipUnmutedSipEvent event,
    Emitter<SipState> emitter,
  ) async {
    state.mapOrNull(
      activeCall: (activeCallState) {
        try {
          emitter(
            SipState.activeCall(
              activeCalls: activeCallState.activeCalls,
              incomingCatched: activeCallState.incomingCatched,
              uniqueLocalIgnoreCallIds:
                  activeCallState.uniqueLocalIgnoreCallIds,
              currentActiveCall: activeCallState.currentActiveCall,
              isAudioMuted: event.isAudioMuted,
              isVideoMuted: event.isVideoMuted,
              localStreamer: activeCallState.localStreamer,
              remoteStreamers: activeCallState.remoteStreamers,
              transaction: activeCallState.transaction,
              isMaximized: activeCallState.isMaximized,
            ),
          );
        } catch (e, stackTrace) {
          _logger.e(e, stackTrace);
          rethrow;
        }
      },
    );
  }

  Future<void> _maximize(
    _MaximizeSipEvent event,
    Emitter<SipState> emitter,
  ) async {
    state.mapOrNull(
      activeCall: (activeCallState) {
        try {
          emitter(
            SipState.activeCall(
              activeCalls: activeCallState.activeCalls,
              incomingCatched: activeCallState.incomingCatched,
              uniqueLocalIgnoreCallIds:
                  activeCallState.uniqueLocalIgnoreCallIds,
              currentActiveCall: activeCallState.currentActiveCall,
              isAudioMuted: activeCallState.isAudioMuted,
              isVideoMuted: activeCallState.isVideoMuted,
              localStreamer: activeCallState.localStreamer,
              remoteStreamers: activeCallState.remoteStreamers,
              isMaximized: !(activeCallState.isMaximized ?? false),
              transaction: getUuid,
            ),
          );
        } catch (e, stackTrace) {
          _logger.e(e, stackTrace);
          rethrow;
        }
      },
    );
  }

  Future<void> _rejectIncoming(
    _RejectIncomingSipEvent event,
    Emitter<SipState> emitter,
  ) async {
    try {
      final meta = state.incomingCatched?.callMeta;
      if (meta == null || meta.uniqueId == null) {
        return;
      }
      emitter(
        state.copyWith(
          incomingCatched: null,
          uniqueLocalIgnoreCallIds: [
            ...state.uniqueLocalIgnoreCallIds,
            meta.uniqueId!,
          ],
          transaction: getUuid,
        ),
      );
      _socketApi.send(
        SocketRequestMessage.call(
          CallAction.reject(number: meta.number),
        ).callAction.stringify(),
      );
    } catch (e, stackTrace) {
      _logger.e(e, stackTrace);
      rethrow;
    }
  }

  Future<void> _busyIncoming(
    _BusyIncomingSipEvent event,
    Emitter<SipState> emitter,
  ) async {
    try {
      final meta = event.activeCall.callMeta;
      if (meta.uniqueId == null) {
        return;
      }
      emitter(
        state.copyWith(
          incomingCatched: null,
          uniqueLocalIgnoreCallIds: [
            ...state.uniqueLocalIgnoreCallIds,
            meta.uniqueId!,
          ],
          transaction: getUuid,
        ),
      );
      _socketApi.send(
        SocketRequestMessage.call(
          CallAction.busy(
            number: event.activeCall.callMeta.number,
          ),
        ).callAction.stringify(),
      );
    } catch (e, stackTrace) {
      _logger.e(e, stackTrace);
      rethrow;
    }
  }

  Future<void> _acceptIncoming(
    _AcceptIncomingSipEvent event,
    Emitter<SipState> emitter,
  ) async {
    try {
      final meta = state.incomingCatched?.callMeta;
      if (meta == null || meta.uniqueId == null) {
        return;
      }
      emitter(
        state.copyWith(
          incomingCatched: null,
          uniqueLocalIgnoreCallIds: [
            ...state.uniqueLocalIgnoreCallIds,
            meta.uniqueId!,
          ],
          transaction: getUuid,
        ),
      );
      add(SipEvent.doCall(meta.chatId, false));
    } catch (e, stackTrace) {
      _logger.e(e, stackTrace);
      rethrow;
    }
  }

  Future<void> _onSocketRemoteUserReject(
    _OnSocketRemoteUserRejectSipEvent event,
    Emitter<SipState> emitter,
  ) async {
    state.mapOrNull(
      activeCall: (activeCallState) {
        /// --------------------------------
        /// я в активном звонке
        /// --------------------------------
        try {
          if (activeCallState.currentActiveCall.callMeta.number ==
              event.number) {
            add(
              SipEvent.hangUp(
                outcomingPersonalCallStatus: OutcomingPersonalCallStatus(
                  message: S.current.userRejectYourCall,
                  status: Status.rejected,
                ),
              ),
            );
          }
        } catch (e, stackTrace) {
          _logger.e(e, stackTrace);
          rethrow;
        }
      },
    );
  }

  Future<void> _onSocketRemoteUserHangup(
    _OnSocketRemoteUserHangup event,
    Emitter<SipState> emitter,
  ) async {
    state.mapOrNull(
      idle: (idle) {
        /// --------------------------------
        /// я в активном звонке
        /// --------------------------------
        try {
          if (idle.incomingCatched?.callMeta.number == event.number) {
            add(
              SipEvent.hangUp(
                outcomingPersonalCallStatus: OutcomingPersonalCallStatus(
                  message: S.current.userEndCall,
                  status: Status.hangUp,
                ),
              ),
            );
          }
        } catch (e, stackTrace) {
          _logger.e(e, stackTrace);
          rethrow;
        }
      },
      activeCall: (activeCallState) {
        /// --------------------------------
        /// я в активном звонке
        /// --------------------------------
        try {
          if (activeCallState.currentActiveCall.callMeta.number ==
              event.number) {
            add(
              SipEvent.hangUp(
                outcomingPersonalCallStatus: OutcomingPersonalCallStatus(
                  message: S.current.userEndCall,
                  status: Status.hangUp,
                ),
              ),
            );
          }
        } catch (e, stackTrace) {
          _logger.e(e, stackTrace);
          rethrow;
        }
      },
    );
  }

  Future<void> _onSocketRemoteUserBusy(
    _OnSocketRemoteUserBusySipEvent event,
    Emitter<SipState> emitter,
  ) async {
    state.mapOrNull(
      activeCall: (activeCallState) {
        /// --------------------------------
        /// я в активном звонке
        /// --------------------------------
        try {
          if (activeCallState.currentActiveCall.callMeta.number ==
              event.number) {
            add(
              SipEvent.hangUp(
                outcomingPersonalCallStatus: OutcomingPersonalCallStatus(
                  message: S.current.userBusy,
                  status: Status.busy,
                ),
              ),
            );
          }
        } catch (e, stackTrace) {
          _logger.e(e, stackTrace);
          rethrow;
        }
      },
    );
  }

  Future<void> _onSocketSpeak(
    _OnSocketSpeakSipEvent event,
    Emitter<SipState> emitter,
  ) async {
    state.mapOrNull(
      activeCall: (activeCallState) {
        try {
          /// пришли данные для активного звонка
          if (event.callMeta.number ==
              activeCallState.currentActiveCall.callMeta.number) {
            /// надо сделать копию пользователей звонка
            /// перебрать их и расставить метки,
            /// т.к. в пришедших данных нет инфы о фио
            final callers = List<Caller>.from(
              activeCallState.currentActiveCall.callMeta.callers,
            );
            for (var i = 0; i < callers.length; i++) {
              for (final caller in event.callMeta.callers) {
                if (callers[i].dlsId == caller.dlsId) {
                  callers[i] = callers[i].copyWith(speak: caller.speak);
                  break;
                }
              }
            }
            emitter(
              activeCallState.copyWith(
                currentActiveCall: activeCallState.currentActiveCall.copyWith(
                  callMeta: event.callMeta.copyWith(
                    callers: callers,
                  ),
                ),
              ),
            );
          }
        } catch (e, stackTrace) {
          _logger.e(e, stackTrace);
          rethrow;
        }
      },
    );
  }
}
