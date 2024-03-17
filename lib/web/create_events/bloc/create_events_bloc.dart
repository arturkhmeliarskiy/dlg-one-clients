import 'dart:async';
import 'dart:typed_data';

import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_events/create_events.dart';
import 'package:dls_one/web/create_events/model/src/event_repeat_model.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'create_events_bloc.freezed.dart';

part 'create_events_event.dart';

part 'create_events_state.dart';

// TODO make refactor of Logic and remove unnecessary Events
// TODO add [BaseBlocMixin]
class CreateEventsBloc extends Bloc<CreateEventsEvent, CreateEventsState> {
  CreateEventsBloc(this._restApi, this._filePickerService)
      : super(const _CreateEventsState()) {
    on<CreateEventsEvent>(
      (event, emit) => event.map<Future<void>>(
        init: (event) => _init(event, emit),
        fetchEvent: (event) => _fetchEvent(event, emit),
        updateModel: (event) => _updateModel(event, emit),
        setTitle: (event) => _setTitle(event, emit),
        setDescription: (event) => _setDescription(event, emit),
        setLocation: (event) => _setLocation(event, emit),
        setTask: (event) => _setTask(event, emit),
        setMembers: (event) => _setMembers(event, emit),
        setOnline: (event) => _setOnline(event, emit),
        setNotifyBefore: (event) => _setNotifyBefore(event, emit),
        setMemberInvite: (event) => _setMemberInvite(event, emit),
        setScheduleViewType: (event) => _setScheduleViewType(event, emit),
        setAllDay: (event) => _setAllDay(event, emit),
        setDate: (event) => _setDate(event, emit),
        setStart: (event) => _setStart(event, emit),
        setEnd: (event) => _setEnd(event, emit),
        setRepeat: (event) => _setRepeat(event, emit),
        addFile: (event) => _addFile(event, emit),
        deleteFile: (event) => _deleteFile(event, emit),
        save: (event) => _save(event, emit),
        delete: (event) => _delete(event, emit),
        updateEvent: (event) => _updateEvent(event, emit),
      ),
    );
  }

  final DlsRestApi _restApi;
  final FilePickerService _filePickerService;

  Future<void> _init(_InitEvent event, Emitter<CreateEventsState> emit) async {
    final currentEvent = event.currentEvent;
    if (currentEvent != null) {
      add(CreateEventsEvent.fetchEvent(currentEvent: currentEvent));
      return;
    }
    final title = event.title;
    if (title != null) {
      emit(CreateEventsState(model: state.model.copyWith(name: title)));
    }
    // TODO add error handler
    final now = DateTime.now();
    final day = event.day ?? now;
    final roundedDate = now.subtract(Duration(minutes: now.minute % 15));
    final start = event.startAt ?? roundedDate.timeOfDay();
    var end =
        event.endAt ?? roundedDate.add(const Duration(hours: 1)).timeOfDay();
    if (start.toDateTime().compareTo(end.toDateTime()) > -1) {
      end = const TimeOfDay(hour: 0, minute: 0);
    }
    emit(
      CreateEventsState(
        model: state.model.copyWith(
          date: day.byDay(),
          start: start,
          end: end,
          task: event.parentTask,
          sprint: event.parentSprint,
        ),
      ),
    );

    final currentUser = event.currentUser;

    emit(
      CreateEventsState(
        model: state.model.copyWith(
          organizer: currentUser,
          currentUser: currentUser,
        ),
      ),
    );
  }

  Future<void> _fetchEvent(
    _FetchEvent event,
    Emitter<CreateEventsState> emit,
  ) async {
    final taskEvent = event.currentEvent ?? state.model.event;
    if (taskEvent == null) {
      return;
    }
    try {
      emit(state.toLoading());
      final response = await _restApi.taskEventsApi.getEventById(taskEvent.id);
      final event = response.toEventModel();
      emit(CreateEventsState(model: event));
    } catch (e) {
      emit(state.toError(e.toString()));
      rethrow;
    }
  }

  Future<void> _addFile(
    _AddFileEvent event,
    Emitter<CreateEventsState> emit,
  ) async {
    // TODO add errorHandler
    late DlsFileData result;
    var fileName = event.name;
    var bytes = event.file;
    if (fileName == null || bytes == null) {
      final filePicker = await _filePickerService.selectFile(
        isDoc: event.isDoc,
        fileType: FileType.any,
      );
      if (filePicker == null) {
        return;
      }
      fileName = filePicker.files.single.name;
      bytes = filePicker.files.first.bytes;
    }
    if (bytes == null || fileName.isEmpty) {
      return;
    }
    try {
      // TODO config progress of sending File
      result = await _restApi.postFile(bytes, fileName);

      final files = [...state.model.files, result];
      emit(CreateEventsState(model: state.model.copyWith(files: files)));
      if (state.model.event == null) {
        return;
      }
      final fileIds = files.map((e) => e.id ?? 0).toList();
      final request = state.model.request?.copyWith(fileIds: fileIds) ??
          CreateTaskEventRequest(fileIds: fileIds);
      emit(CreateEventsState(model: state.model.copyWith(request: request)));
    } catch (e) {
      // TODO add error handler
      emit(CreateEventsState.error(e.toString(), model: state.model));
    }
  }

  Future<void> _deleteFile(
    _DeleteFile event,
    Emitter<CreateEventsState> emit,
  ) async {
    final fileList = state.model.files.toList()..removeAt(event.index);
    emit(CreateEventsState(model: state.model.copyWith(files: fileList)));
    if (state.model.event == null) {
      return;
    }
    final fileIds = fileList.map((e) => e.id ?? 0).toList();
    final request = state.model.request?.copyWith(fileIds: fileIds) ??
        CreateTaskEventRequest(fileIds: fileIds);
    emit(CreateEventsState(model: state.model.copyWith(request: request)));
  }

  Future<void> _updateModel(
    _UpdateModelEvent event,
    Emitter<CreateEventsState> emit,
  ) async {
    emit(CreateEventsState(model: event.model));
  }

  Future<void> _setTitle(
    _SetTitle event,
    Emitter<CreateEventsState> emit,
  ) async {
    emit(CreateEventsState(model: state.model.copyWith(name: event.title)));
    if (state.model.event == null) {
      return;
    }
    final request = state.model.request?.copyWith(title: event.title) ??
        CreateTaskEventRequest(title: event.title);
    emit(CreateEventsState(model: state.model.copyWith(request: request)));
  }

  Future<void> _setDescription(
    _SetDescription event,
    Emitter<CreateEventsState> emit,
  ) async {
    emit(
      CreateEventsState(
        model: state.model.copyWith(description: event.description),
      ),
    );
    if (state.model.event == null) {
      return;
    }
    final request =
        state.model.request?.copyWith(description: event.description) ??
            CreateTaskEventRequest(description: event.description);
    emit(CreateEventsState(model: state.model.copyWith(request: request)));
  }

  Future<void> _setLocation(
    _SetLocation event,
    Emitter<CreateEventsState> emit,
  ) async {
    emit(CreateEventsState(model: state.model.copyWith(place: event.location)));
    if (state.model.event == null) {
      return;
    }
    final request = state.model.request?.copyWith(location: event.location) ??
        CreateTaskEventRequest(location: event.location);
    emit(CreateEventsState(model: state.model.copyWith(request: request)));
  }

  Future<void> _setTask(
    _SetTask event,
    Emitter<CreateEventsState> emit,
  ) async {
    emit(CreateEventsState(model: state.model.copyWith(task: event.task)));
    if (state.model.event == null) {
      return;
    }
    final request = state.model.request?.copyWith(taskId: event.task.id) ??
        CreateTaskEventRequest(taskId: event.task.id);
    emit(CreateEventsState(model: state.model.copyWith(request: request)));
  }

  Future<void> _setMembers(
    _SetMembers event,
    Emitter<CreateEventsState> emit,
  ) async {
    emit(CreateEventsState(model: state.model.copyWith(members: event.users)));
    if (state.model.event == null) {
      return;
    }
    final userIds = event.users.map((e) => e.dlsId ?? 0).toList();
    final request = state.model.request?.copyWith(memberIds: userIds) ??
        CreateTaskEventRequest(memberIds: userIds);
    emit(CreateEventsState(model: state.model.copyWith(request: request)));
  }

  Future<void> _setOnline(
    _SetOnline event,
    Emitter<CreateEventsState> emit,
  ) async {
    emit(CreateEventsState(model: state.model.copyWith(online: event.online)));
    if (state.model.event == null) {
      return;
    }
    final type = event.online ? TaskEventType.online : TaskEventType.offline;
    final request = state.model.request?.copyWith(type: type) ??
        CreateTaskEventRequest(type: type);
    emit(CreateEventsState(model: state.model.copyWith(request: request)));
  }

  Future<void> _setMemberInvite(
    _SetMemberInvite event,
    Emitter<CreateEventsState> emit,
  ) async {
    final memberInvite = event.memberInvite;
    emit(CreateEventsState(
        model: state.model.copyWith(memberInvite: memberInvite)));
    if (state.model.event == null) {
      return;
    }
    final request =
        state.model.request?.copyWith(isInviteOthers: memberInvite) ??
            CreateTaskEventRequest(isInviteOthers: memberInvite);
    emit(CreateEventsState(model: state.model.copyWith(request: request)));
  }

  Future<void> _setScheduleViewType(
    _SetScheduleViewType event,
    Emitter<CreateEventsState> emit,
  ) async {
    emit(
      CreateEventsState(
        model: state.model.copyWith(scheduleViewType: event.type),
      ),
    );
  }

  Future<void> _setNotifyBefore(
    _SetNotifyBefore event,
    Emitter<CreateEventsState> emit,
  ) async {
    final notifyBefore = event.notifyBefore;
    emit(
      CreateEventsState(
        model: state.model.copyWith(notifyBefore: notifyBefore),
      ),
    );
    if (state.model.event == null) {
      return;
    }
    final request =
        state.model.request?.copyWith(notificationType: notifyBefore) ??
            CreateTaskEventRequest(notificationType: notifyBefore);
    emit(CreateEventsState(model: state.model.copyWith(request: request)));
  }

  Future<void> _setAllDay(
    _SetAllDay event,
    Emitter<CreateEventsState> emit,
  ) async {
    emit(CreateEventsState(model: state.model.copyWith(allDay: event.allDay)));
    if (state.model.event == null) {
      return;
    }
    final request = state.model.request?.copyWith(isAllDay: event.allDay) ??
        CreateTaskEventRequest(isAllDay: event.allDay);
    emit(CreateEventsState(model: state.model.copyWith(request: request)));
  }

  Future<void> _setDate(
    _SetDate event,
    Emitter<CreateEventsState> emit,
  ) async {
    emit(CreateEventsState(model: state.model.copyWith(date: event.date)));
    if (state.model.event == null) {
      return;
    }
    final startAt = state.model.startAt;
    final request = state.model.request?.copyWith(startAt: startAt) ??
        CreateTaskEventRequest(startAt: startAt);
    emit(CreateEventsState(model: state.model.copyWith(request: request)));
  }

  Future<void> _setStart(
    _SetStart event,
    Emitter<CreateEventsState> emit,
  ) async {
    emit(CreateEventsState(model: state.model.copyWith(start: event.start)));
    if (state.model.event == null) {
      return;
    }
    final startAt = state.model.startAt;
    final request = state.model.request?.copyWith(startAt: startAt) ??
        CreateTaskEventRequest(startAt: startAt);
    emit(CreateEventsState(model: state.model.copyWith(request: request)));
  }

  Future<void> _setEnd(_SetEnd event, Emitter<CreateEventsState> emit) async {
    emit(CreateEventsState(model: state.model.copyWith(end: event.end)));
    if (state.model.event == null) {
      return;
    }
    final endAt = state.model.endAt;
    final request = state.model.request?.copyWith(endAt: endAt) ??
        CreateTaskEventRequest(endAt: endAt);
    emit(CreateEventsState(model: state.model.copyWith(request: request)));
  }

  Future<void> _setRepeat(
    _SetRepeat event,
    Emitter<CreateEventsState> emit,
  ) async {
    emit(CreateEventsState(model: state.model.copyWith(repeat: event.repeat)));
    if (state.model.event == null) {
      return;
    }
    final repeat = event.repeat?.toRestModel();
    final request = state.model.request?.copyWith(repeat: repeat) ??
        CreateTaskEventRequest(repeat: repeat);
    emit(CreateEventsState(model: state.model.copyWith(request: request)));
  }

  Future<void> _save(_SaveEvent event, Emitter<CreateEventsState> emit) async {
    if (state is _Loading) {
      return;
    }
    var event = state.model.event;
    if (event != null) {
      add(const CreateEventsEvent.updateEvent());
      return;
    }
    try {
      final model = state.model;
      var startAt = model.startAt;
      var endAt = model.endAt;
      if (startAt == null || endAt == null) {
        // TODO emit validation
        return;
      }
      if (model.allDay) {
        endAt = endAt.add(const Duration(days: 1));
      } else {
        startAt = startAt.applyTime(model.start);
        endAt = endAt.applyTime(model.end);
      }
      final description = model.description.trim();
      final request = CreateTaskEventRequest(
        title: model.name,
        description: description.isEmpty ? null : description,
        type: model.online ? TaskEventType.online : TaskEventType.offline,
        startAt: startAt,
        endAt: endAt,
        location: model.place,
        isAllDay: model.allDay,
        isInviteOthers: model.memberInvite,
        notificationType: model.notifyBefore,
        repeat: model.repeat?.toRestModel(),
        memberIds: model.members.map((e) => e.dlsId ?? 0).toList(),
        taskId: model.task?.id,
        sprintId: model.sprint?.id,
        fileIds: model.files.map((e) => e.id ?? 0).toList(),
      );
      emit(CreateEventsState.loading(model: state.model));
      event = await _restApi.taskEventsApi.createEvent(request);
      emit(
        CreateEventsState.saveSuccess(
          model: state.model.copyWith(event: event),
        ),
      );
    } catch (e) {
      // TODO add error handler
      emit(CreateEventsState.error(e.toString(), model: state.model));
      rethrow;
    }
  }

  Future<void> _delete(
    _DeleteEvent event,
    Emitter<CreateEventsState> emit,
  ) async {
    final event = state.model.event;
    if (event == null) {
      return;
    }
    try {
      emit(state.toLoading());
      await _restApi.taskEventsApi.deleteEvent(event.id);
      emit(state.toDeleteSuccess());
    } catch (e) {
      // TODO config error handling
      emit(state.toError(e.toString()));
    }
  }

  Future<void> _updateEvent(
    _UpdateEvent event,
    Emitter<CreateEventsState> emit,
  ) async {
    final currentEvent = state.model.event;
    final request = state.model.request;
    if (currentEvent == null || request == null) {
      return;
    }
    try {
      emit(CreateEventsState.loading(model: state.model));
      final response =
          await _restApi.taskEventsApi.updateEvent(currentEvent.id, request);
      final repeatRequest = request.repeat;
      if (repeatRequest != null) {
        if (currentEvent.repeat == null) {
          await _restApi.taskEventsApi.makeEventSeries(
            currentEvent.id,
            EventMakeSeriesRequest(repeat: repeatRequest),
          );
        } else {
          await _restApi.taskEventsApi
              .updateEventSeries(currentEvent.id, request);
        }
      }
      emit(
        CreateEventsState.saveSuccess(
          model: state.model.copyWith(
            event: response,
            request: null,
          ),
        ),
      );
      add(const CreateEventsEvent.fetchEvent());
    } catch (e) {
      // TODO add error handler
      emit(CreateEventsState.error(e.toString(), model: state.model));
      rethrow;
    }
  }
}
