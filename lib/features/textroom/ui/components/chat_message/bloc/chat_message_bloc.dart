// ignore_for_file: use_build_context_synchronously
import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:collection/collection.dart';
import 'package:common/common.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/di/app_di.dart';
import 'package:dls_one/const/mime_type.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matrix/matrix.dart';
import 'package:open_filex/open_filex.dart';
import 'package:rest_api/rest_api.dart';

part 'chat_message_bloc.freezed.dart';
part 'chat_message_event.dart';
part 'chat_message_state.dart';

class ChatMessageBloc extends Bloc<ChatMessageEvent, ChatMessageState>
    with NotificationsMixin {
  /// Constructor
  ChatMessageBloc(
    DlsChatMessage event, {
    required UsersBloc users,
    required FileManager networkFileCache,
  })  : _logger = AppDI.findRepository<DlsLogger>(),
        _users = users,
        _networkFileCache = networkFileCache,
        super(
          ChatMessageState.data(
            event: event,
            user: users.state.store[event.senderId],
          ),
        ) {
    on<ChatMessageEvent>(
      (event, emitter) => event.map<Future<void>>(
        read: (event) => _read(event, emitter),
        openFile: (event) => _openFile(event, emitter),
        deleteFile: (event) => _deleteFile(event, emitter),
      ),
      transformer: sequential(),
    );
    add(const ChatMessageEvent.read());
  }

  final DlsLogger _logger;
  final UsersBloc _users;
  final FileManager _networkFileCache;

  /// пользовательские события

  Future<void> _openFile(
    _OpenFileReadEvMtxEvent event,
    Emitter<ChatMessageState> emitter,
  ) async {
    try {
      final attachEvent = state.event.safeCast<DlsChatMessageAttachment>();
      if (attachEvent != null) {
        if (DlsPlatform.dlsPlatform == DlsPlatformType.web) {
          await event.context.read<FileManager>().saveFileSpecifically(
                attachEvent.fileName,
                attachEvent.url,
                mimeType: MimeType.fromString(attachEvent.mimeType),
              );
        } else {
          /// только при наличии фс можем что-то делать
          final result = await OpenFilex.open(
            _networkFileCache.getFilePath(attachEvent.fileName),
            type: (state.event as DlsChatMessageAttachment).mimeType,
          );
          if (result.type == ResultType.noAppToOpen) {
            throw Exception(result.message);
          }
          if (result.type == ResultType.error) {
            // TODO(alexsh): add mapping to localize in UI
            throw Exception('Ошибка: ${result.message}');
          }
        }
      }
    } on TimeoutException catch (e) {
      _logger.errorPrinter(e);
      emitter(
        ChatMessageState.failure(
          event: state.event,
          user: state.user,
          // TODO(alexsh): add mapping to localize in UI
          message: 'Время ожидания ответа сервера истекло',
        ),
      );
    } catch (e, stack) {
      _logger.errorPrinter(e, stack);
      emitter(
        ChatMessageState.failure(
          event: state.event,
          user: state.user,
          // TODO(alexsh): add mapping to localize in UI
          message: 'Ошибка: $e',
        ),
      );
    }
  }

  Future<void> _deleteFile(
    _DeleteFileEvMtxEvent event,
    Emitter<ChatMessageState> emitter,
  ) async {
    try {
      if (state.event is DlsChatMessageAttachment) {
        final attachment = state.event as DlsChatMessageAttachment;
        await _networkFileCache.deleteFile(attachment.fileName);
        if (attachment.type == DlsChatMessageType.file) {
          emitter(
            ChatMessageState.data(
              event: state.event,
              user: state.user,
              transaction: AuthenticationIdentifierTypes.thirdParty,
            ),
          );
          // TODO(alexsh): bad code should be refactored
          showDLSSnackBar(event.context, 'Файл удален с устройства');
        }
        if (attachment.type == DlsChatMessageType.audio) {
          emitter(
            ChatMessageState.data(
              event: state.event,
              user: state.user,
              transaction: AuthenticationIdentifierTypes.thirdParty,
            ),
          );
          // TODO(alexsh): bad code should be refactored
          showDLSSnackBar(event.context, 'Файл удален с устройства');
        }
      }
    } on TimeoutException catch (e) {
      _logger.errorPrinter(e);
      emitter(
        ChatMessageState.failure(
          event: state.event,
          user: state.user,
          message: 'Время ожидания ответа сервера истекло',
        ),
      );
    } catch (e, stack) {
      _logger.errorPrinter(e, stack);
      emitter(
        ChatMessageState.failure(
          event: state.event,
          user: state.user,
          // TODO(alexsh): add mapping to localize in UI
          message: 'Ошибка: $e',
        ),
      );
    }
  }

  /// системные события

  Future<void> _read(
    _ReadEvMtxEvent event,
    Emitter<ChatMessageState> emitter,
  ) async {
    try {
      if (state.user == null) {
        final user = await _users.getUser(state.event.senderId);
        emitter(
          ChatMessageState.data(
            event: state.event,
            user: user,
          ),
        );
      }

      final attachEvent = state.event.safeCast<DlsChatMessageAttachment>();

      if (attachEvent != null) {
        emitter(
          ChatMessageState.data(
            event: state.event,
            user: state.user,
          ),
        );
      }
    } on TimeoutException catch (e) {
      _logger.errorPrinter(e);
      emitter(
        ChatMessageState.failure(
          event: state.event,
          user: state.user,
          // TODO(alexsh): add mapping to localize in UI
          message: 'Время ожидания ответа сервера истекло',
        ),
      );
    } catch (e, stack) {
      _logger.errorPrinter(e, stack);
      emitter(
        ChatMessageState.failure(
          event: state.event,
          user: state.user,
          // TODO(alexsh): add mapping to localize in UI
          message: 'Ошибка: $e',
        ),
      );
    }
  }
}
