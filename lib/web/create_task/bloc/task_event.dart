part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const TaskEvent._();

  const factory TaskEvent.init({
    DlsTasks? task,
    String? title,
    DlsTasks? parentTask,
    TaskStatusType? status,
    DLSUser? currentUser,
  }) = _Init;

  const factory TaskEvent.updateModel(SaveTaskModel model) = _UpdateModel;

  const factory TaskEvent.addFile({
    @Default(false) bool isDoc,
    String? name,
    Uint8List? file,
  }) = _AddFile;

  const factory TaskEvent.deleteFile(int index) = _DeleteFile;

  const factory TaskEvent.addRecord(String title, {bool? checked}) = _AddRecord;

  const factory TaskEvent.deleteRecord(int index) = _DeleteRecord;

  const factory TaskEvent.updateRecord(
    int index, {
    String? name,
    @Default(true) bool isActive,
  }) = _UpdateRecord;

  // TODO config Tags fetching
  const factory TaskEvent.addTag(String title) = _AddTag;

  const factory TaskEvent.saveTask({@Default(true) bool withLoading}) =
      _SaveTask;

  const factory TaskEvent.updateTask(DlsTask request) = _UpdateTask;

  const factory TaskEvent.deleteTask() = _DeleteTask;
}
