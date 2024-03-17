import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:common/common.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/di/app_di.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matrix/matrix.dart';
import 'package:rest_api/rest_api.dart';

///
/// Created by Nightwelf 15.08.2022 19:01
/// updated 17.10.2022 13:01
/// Telegram: @nightwelf
///
part 'user_information_bloc.freezed.dart';

@freezed
class UserInformationEvent with _$UserInformationEvent {
  const UserInformationEvent._();

  const factory UserInformationEvent.read(String id) =
      _ReadUserInformationEvent;
}

@freezed
class UserInformationState with _$UserInformationState {
  const UserInformationState._();

  const factory UserInformationState.initial() = _InitialUserInformationState;

  const factory UserInformationState.loading({required String message}) =
      _LoadingUserInformationState;

  const factory UserInformationState.loaded({
    required DLSUser user,
    Map<String, Event>? attachmentsImage,
    Map<String, Event>? attachmentsVideo,
    Map<String, Event>? attachmentsAudio,
    Map<String, Event>? attachmentsFile,
    Map<String, Event>? attachmentsLinks,
  }) = _LoadedUserInformationState;

  const factory UserInformationState.failure({required String message}) =
      _FailureUserInformationState;
}

class UserInformationBloc
    extends Bloc<UserInformationEvent, UserInformationState> {
  ///
  UserInformationBloc({
    required DlsMatrixClient matrixClient,
    required DlsRestApi restApi,
    this.roomId,
  })  : _matrixClient = matrixClient,
        _restApi = restApi,
        super(const _InitialUserInformationState()) {
    on<UserInformationEvent>(
      (event, emitter) => event.map<Future<void>>(
        read: (event) => _read(event, emitter),
      ),
      transformer: sequential(),
    );
  }

  final DlsMatrixClient _matrixClient;
  final DlsRestApi _restApi;
  final String? roomId;

  Future<void> _read(
    _ReadUserInformationEvent event,
    Emitter<UserInformationState> emitter,
  ) async {
    try {
      emitter(const UserInformationState.loading(message: 'Загрузка'));

      final user = await _restApi
          .fetchUser(event.id.replaceAll('@u', '').split(':').first);

      if (roomId != null) {
        final room = _matrixClient.client.getRoomById(roomId!);
        if (room != null) {
          /// сомнительное решение, тк запрашиваем ВСЮ ленту (ограничим 100000 сообщений)
          final timeline = await room.getTimeline();
          final attachmentsImage = <String, Event>{};
          final attachmentsVideo = <String, Event>{};
          final attachmentsAudio = <String, Event>{};
          final attachmentsFile = <String, Event>{};
          final attachmentsLinks = <String, Event>{};
          var count = timeline.events.length;
          var i = 0;
          do {
            for (var i = timeline.events.length - count;
                i < timeline.events.length;
                i++) {
              if (timeline.events[i].hasAttachment) {
                if (timeline.events[i].attachmentMimetype.contains('image/')) {
                  attachmentsImage[timeline.events[i].eventId] =
                      timeline.events[i];
                } else if (timeline.events[i].attachmentMimetype
                    .contains('audio/')) {
                  attachmentsAudio[timeline.events[i].eventId] =
                      timeline.events[i];
                } else if (timeline.events[i].attachmentMimetype
                    .contains('video/')) {
                  attachmentsVideo[timeline.events[i].eventId] =
                      timeline.events[i];
                } else {
                  attachmentsFile[timeline.events[i].eventId] =
                      timeline.events[i];
                }
              } else if (timeline.events[i].text.contains('https://') ||
                  timeline.events[i].text.contains('http://')) {
                attachmentsLinks[timeline.events[i].eventId] =
                    timeline.events[i];
              }
            }
            i++;
            if (timeline.canRequestHistory && timeline.events.length < 100000) {
              count = await timeline.getRoomEvents(historyCount: 10000);
            } else {
              break;
            }
          } while (i < 10);
          emitter(
            UserInformationState.loaded(
              user: user,
              attachmentsImage: attachmentsImage,
              attachmentsVideo: attachmentsVideo,
              attachmentsAudio: attachmentsAudio,
              attachmentsFile: attachmentsFile,
              attachmentsLinks: attachmentsLinks,
            ),
          );
          return;
        }
      }

      emitter(UserInformationState.loaded(user: user));
    } on TimeoutException catch (e) {
      AppDI.findRepository<DlsLogger>().errorPrinter(e);
      emitter(
        const UserInformationState.failure(
          message: 'Время ожидания ответа сервера истекло',
        ),
      );
    } on ApiError catch (e) {
      AppDI.findRepository<DlsLogger>().errorPrinter(e);
      emitter(
        UserInformationState.failure(
          message: 'Сетевая ошибка ${e.statusCode ?? ''}: ${e.message}',
        ),
      );
    } catch (e) {
      AppDI.findRepository<DlsLogger>().errorPrinter(e);
      emitter(
        UserInformationState.failure(message: 'Необработанная ошибка: $e'),
      );
    }
  }
}
