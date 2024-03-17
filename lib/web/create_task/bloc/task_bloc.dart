import 'dart:typed_data';

import 'package:dls_one/common/gen/localization/l10n.dart';
import 'package:dls_one/core/services/file_picker_service.dart';
import 'package:dls_one/web/create_task/create_task.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'task_bloc.freezed.dart';

part 'task_event.dart';

part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc(this._restApi) : super(const TaskState()) {
    on<TaskEvent>(
      (event, emit) => event.map<Future<void>>(
        init: (event) => _init(event, emit),
        updateModel: (event) => _updateModel(event, emit),
        addFile: (event) => _addFile(event, emit),
        addRecord: (event) => _addRecord(event, emit),
        addTag: (event) => _addTag(event, emit),
        saveTask: (event) => _saveTask(event, emit),
        updateTask: (event) => _updateTask(event, emit),
        deleteTask: (event) => _deleteTask(event, emit),
        deleteFile: (event) => _deleteFile(event, emit),
        updateRecord: (event) => _updateRecord(event, emit),
        deleteRecord: (event) => _deleteRecord(event, emit),
      ),
    );
  }

  final DlsRestApi _restApi;

  Future<void> _updateModel(
    _UpdateModel event,
    Emitter<TaskState> emit,
  ) async {
    emit(TaskState(model: event.model));
  }

  Future<void> _init(
    _Init event,
    Emitter<TaskState> emit,
  ) async {
    final task = event.task;
    if (task != null) {
      try {
        emit(TaskState.loading(model: state.model));
        final currentTask = await _restApi.getTask(task.id);
        emit(
          TaskState(
            model: currentTask.toStateModel().copyWith(
                  currentUser: event.currentUser,
                ),
          ),
        );
      } catch (e) {
        emit(state.toError(e.toString()));
      }
      return;
    }
    emit(
      TaskState(
        model: SaveTaskModel(
          title: event.title ?? '',
          startAt: DateTime.now(),
          parentTask: event.parentTask,
          currentUser: event.currentUser,
          author: event.currentUser,
          listFile: [],
          checkList: [],
          tags: [],
          performers: [],
          responsible: [],
          observers: [],
          status: event.status ?? TaskStatusType.inTheQueue,
        ),
      ),
    );
  }

  Future<void> _addFile(
    _AddFile event,
    Emitter<TaskState> emit,
  ) async {
    late DlsFileData result;
    var fileName = event.name;
    var bytes = event.file;
    if (fileName == null || bytes == null) {
      final filePicker = await FilePickerService().selectFile(
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
      final files = [...state.model.listFile, result];
      emit(TaskState(model: state.model.copyWith(listFile: files)));
    } catch (e) {
      // TODO add error handler
      var message = e.toString();
      if (e is ApiError) {
        message = e.message;
      }
      emit(state.toError(message));
      rethrow;
    } finally {
      add(
        TaskEvent.updateTask(
          DlsTask(filesIds: state.model.toRequest().filesIds),
        ),
      );
    }
  }

  Future<void> _deleteFile(
    _DeleteFile event,
    Emitter<TaskState> emit,
  ) async {
    emit(
      state.copyWith(
        model: state.model.copyWith(
          listFile: List.from(state.model.listFile)..removeAt(event.index),
        ),
      ),
    );
    add(
      TaskEvent.updateTask(
        DlsTask(filesIds: state.model.toRequest().filesIds),
      ),
    );
  }

  Future<void> _addRecord(_AddRecord event, Emitter<TaskState> emit) async {
    // TODO config creating without Task
    final task = state.model.currentTask;
    if (event.title.isEmpty) {
      return;
    }
    if (task == null) {
      emit(
        state.copyWith(
          model: state.model.copyWith(
            unsavedCheckList: state.model.unsavedCheckList.toList()
              ..add(DlsTasksChecklist(name: event.title)),
          ),
        ),
      );
      return;
    }
    try {
      final checklist = await _restApi.taskCheckListApi.create(
        TasksChecklistCreateRequest(
          taskId: task.id,
          name: event.title,
          isChecked: event.checked ?? false,
        ),
      );
      final list = state.model.checkList.toList()..add(checklist);
      emit(
        TaskState.updateSuccess(
          model: state.model.copyWith(
            checkList: list,
            currentTask: state.model.currentTask?.copyWith(checklist: list),
          ),
        ),
      );
    } catch (e) {
      emit(state.toError(e.toString()));
      rethrow;
    }
  }

  Future<void> _deleteRecord(
    _DeleteRecord event,
    Emitter<TaskState> emit,
  ) async {
    final task = state.model.currentTask;
    if (task == null) {
      emit(
        state.copyWith(
          model: state.model.copyWith(
            unsavedCheckList: state.model.unsavedCheckList.toList()
              ..removeAt(event.index),
          ),
        ),
      );
      return;
    }
    try {
      // TODO fix after API configurations
      final checkList = state.model.checkList.toList();
      final item = checkList[event.index];
      final itemId = item.id;
      if (itemId == null) {
        return;
      }
      await _restApi.taskCheckListApi.delete(itemId);
      checkList.removeAt(event.index);
      emit(
        TaskState.updateSuccess(
          model: state.model.copyWith(
            checkList: checkList,
            currentTask:
                state.model.currentTask?.copyWith(checklist: checkList),
          ),
        ),
      );
    } catch (e) {
      emit(state.toError(e.toString()));
      rethrow;
    }
  }

  Future<void> _updateRecord(
    _UpdateRecord event,
    Emitter<TaskState> emit,
  ) async {
    final currentTask = state.model.currentTask;
    if (currentTask == null) {
      final list = state.model.unsavedCheckList.toList();
      var item = list[event.index];
      item = item.copyWith(
        name: event.name ?? item.name,
        isChecked: event.isActive,
      );
      list[event.index] = item;
      emit(
        state.copyWith(model: state.model.copyWith(unsavedCheckList: list)),
      );
      return;
    }
    try {
      // TODO fix after API configurations
      final checkList = state.model.checkList.toList();
      final item = checkList[event.index];
      final itemId = item.id;
      if (itemId == null) {
        return;
      }
      final result = await _restApi.taskCheckListApi.update(
        // TODO refactor nullability after API configs
        itemId,
        TasksChecklistCreateRequest(
          taskId: item.taskId ?? currentTask.id,
          name: event.name ?? item.name,
          isChecked: event.isActive,
        ),
      );
      checkList[event.index] = result;
      emit(
        TaskState.updateSuccess(
          model: state.model.copyWith(
            checkList: checkList,
            currentTask:
                state.model.currentTask?.copyWith(checklist: checkList),
          ),
        ),
      );
    } catch (e) {
      emit(state.toError(e.toString()));
      rethrow;
    }
  }

  Future<void> _addTag(_AddTag event, Emitter<TaskState> emit) async {
    try {
      final request = CreateTagRequest(title: event.title);
      final result = await _restApi.tasksTagsApi.createTag(request);
      emit(
        TaskState(
          model: state.model.copyWith(
            tags: state.model.tags.toList()..add(result),
          ),
        ),
      );
    } catch (e) {
      emit(TaskState.error(e.toString(), model: state.model));
      rethrow;
    } finally {
      add(TaskEvent.updateTask(DlsTask(tags: state.model.toRequest().tags)));
    }
  }

  Future<void> _saveTask(_SaveTask event, Emitter<TaskState> emit) async {
    if (state.model.title.isEmpty) {
      return;
    }
    if (state.model.parentTask == null && state.model.currentTask == null) {
      emit(state.toError(S.current.pickParentTask));
      return;
    }
    try {
      if (event.withLoading) {
        emit(TaskState.loading(model: state.model));
      }
      final request = state.model.toRequest();
      late DlsTasks result;
      final task = state.model.currentTask;
      if (task != null) {
        add(TaskEvent.updateTask(request));
        return;
      }
      result = await _restApi.createTask(request);
      emit(
        TaskState.success(
          model: state.model.copyWith(
            currentTask: result,
          ),
        ),
      );
      final checkLists = state.model.unsavedCheckList;
      if (checkLists.isEmpty) {
        return;
      }
      for (final item in checkLists) {
        add(TaskEvent.addRecord(item.name, checked: item.isChecked));
      }
      emit(
        state.copyWith(model: state.model.copyWith(unsavedCheckList: [])),
      );
    } catch (e) {
      var message = e.toString();
      // TODO make something like this global, to get user-friendly message
      if (e is ApiError) {
        final data = e.data;
        message = e.message;
        if (data is Map) {
          message = data['title']?.toString() ?? e.message;
        }
      }
      emit(TaskState.error(message, model: state.model));
      rethrow;
    }
  }

  Future<void> _updateTask(_UpdateTask event, Emitter<TaskState> emit) async {
    try {
      final task = state.model.currentTask;
      if (task == null) {
        return;
      }
      final result = await _restApi.updateTask(
        value: event.request,
        id: task.id,
      );
      emit(
        TaskState.updateSuccess(
          model: state.model.copyWith(currentTask: result),
        ),
      );
    } catch (e) {
      emit(state.toError(e.toString()));
      rethrow;
    }
  }

  Future<void> _deleteTask(_DeleteTask event, Emitter<TaskState> emit) async {
    final task = state.model.currentTask;
    if (task == null) {
      return;
    }
    try {
      emit(state.toLoading());
      await _restApi.deleteTask(id: task.id);
      emit(TaskState.deleteSuccess(model: state.model));
    } catch (e) {
      emit(state.toError(e.toString()));
      rethrow;
    }
  }
}

class CheckData {
  CheckData({
    this.id,
    this.title = '',
    this.isActive = false,
  });

  final int? id;
  final String title;
  final bool isActive;
}
