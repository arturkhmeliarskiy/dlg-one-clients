import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:cross_file/cross_file.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matrix/matrix.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rest_api/rest_api.dart';

///
/// Created by Nightwelf 21.12.2022 14:51
/// Telegram: @nightwelf
///
part 'forward_message_bloc.freezed.dart';

@freezed
class ForwardMessageEvent with _$ForwardMessageEvent {
  const factory ForwardMessageEvent.forward(Room room, Function callback) =
      _ForwardForwardMessageEvent;

  const factory ForwardMessageEvent.update(String query) =
      _UpdateForwardMessageEvent;

  const factory ForwardMessageEvent.init({
    required String roomId,
    required String eventId,
    required List<String> dependentsIds,
  }) = _InitForwardMessageEvent;
}

@freezed
class ForwardMessageState with _$ForwardMessageState {
  const factory ForwardMessageState({
    required String query,
    required List<Room> rooms,
    required String roomId,
    required String eventId,
    required List<String> dependentsIds,
    required bool loading,
    String? failure,
  }) = _ForwardMessageState;
}

class ForwardMessageBloc
    extends Bloc<ForwardMessageEvent, ForwardMessageState> {

  ///
  ForwardMessageBloc({
    required DlsMatrixClient matrixClient,
    required DlsRestApi restApi,
  }) : _matrixClient = matrixClient,
        _restApi = restApi,
        super(const _ForwardMessageState(
          query: '',
          rooms: [],
          roomId: '',
          eventId: '',
          dependentsIds: [],
          loading: false,
        )) {
    on<ForwardMessageEvent>(
      (event, emitter) => event.map<Future<void>>(
        forward: (event) => _forward(event, emitter),
        update: (event) => _update(event, emitter),
        init: (event) => _init(event, emitter),
      ),
      transformer: sequential(),
    );
    add(const ForwardMessageEvent.update(''));
  }

  final DlsMatrixClient _matrixClient;
  final DlsRestApi _restApi;

  Future<void> _forward(_ForwardForwardMessageEvent event,
      Emitter<ForwardMessageState> emitter) async {
    /// пользователь должен быть членом чата в который он пересылает сообщение
    if (event.room.membership == Membership.join) {
      try {
        emitter(state.copyWith(loading: true, failure: null));

        /// получаем комнату в которой находится это сообщение
        final r = _matrixClient.client.getRoomById(state.roomId);
        if (r != null) {
          /// получаем сообщение, которое необходимо отправить
          final ev = await r.getEventById(state.eventId);
          if (ev != null) {
            /// готовим вложения к отправке
            List<XFile> atts = [];
            for (int i = 0; i < state.dependentsIds.length; i++) {
              final att = await r.getEventById(state.dependentsIds[i]);
              if (att?.hasAttachment == true) {
                if (att?.getAttachmentUrl() == null) {
                  throw Exception('Ссылка на файл не может быть null');
                } else {
                  /// качаем файл
                  final directory = await getTemporaryDirectory();
                  final file = await _restApi.downloadUri(
                    directory.path,
                    att!.getAttachmentUrl()!,
                    att.text,
                  );
                  atts.add(file);
                }
              }
            }
            String? fwId;
            Map<String, dynamic>? content;

            /// если основное сообщение файл
            if (ev.hasAttachment) {
              content = <String, dynamic>{
                'forwarded': true,
                'msgtype': MessageTypes.Text,
                'body': ev.text
              };
            }

            /// если основное сообщение текст
            else {
              content = ev.content
                ..addAll(<String, dynamic>{'forwarded': true});
            }
            fwId = await event.room.sendEvent(content);
            if (fwId == null) {
              emitter(state.copyWith(
                  loading: false,
                  failure: 'Ошибка отправки. Попробуйте снова'));
            } else {
              /// если основное сообщение файл
              if (ev.hasAttachment) {
                if(ev.getAttachmentUrl() == null){
                  throw Exception('Ссылка на файл не может быть null');

                }else {
                  /// качаем файл
                  final directory = await getTemporaryDirectory();
                  final file = await _restApi.downloadUri(
                    directory.path,
                    ev.getAttachmentUrl()!,
                    ev.text,
                  );
                  atts.add(file);
                }
              }

              /// вложения основного сообщения
              for (int i = 0; i < atts.length; i++) {
                /// отправка файла
                await event.room.sendFileEvent(
                  MatrixFile(
                    bytes: await atts[i].readAsBytes(),
                    name: atts[i].path.split('\\').last,
                  ),

                  /// говорим что файл является частью сообщения
                  extraContent: <String, dynamic>{"part_of_event": fwId},
                );
              }
              event.callback(true);
            }
          } else {
            throw 'Сообщения не существует';
          }
        } else {
          throw 'Чата не существует';
        }
        emitter(state.copyWith(loading: false));
      } catch (e) {
        emitter(state.copyWith(loading: false, failure: e.toString()));
      }
    } else {
      event.callback(false);
    }
  }

  Future<void> _update(_UpdateForwardMessageEvent event,
      Emitter<ForwardMessageState> emitter) async {
    /// фильтр-поиск получателей
    if (event.query.isEmpty) {
      emitter(state.copyWith(rooms: _matrixClient.rooms));
    } else {
      emitter(state.copyWith(
          rooms: _matrixClient.rooms
              .where((room) => room.getLocalizedDisplayname().contains(event.query))
              .toList()));
    }
  }

  Future<void> _init(_InitForwardMessageEvent event,
      Emitter<ForwardMessageState> emitter) async {
    /// заполняем стейт
    emitter(state.copyWith(
      roomId: event.roomId,
      eventId: event.eventId,
      dependentsIds: event.dependentsIds,
    ));
  }
}
