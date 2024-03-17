import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'save_task_model.freezed.dart';

@freezed
class SaveTaskModel with _$SaveTaskModel {
  const factory SaveTaskModel({
    @Default('') String title,
    @Default('') String description,
    DlsTasks? currentTask,
    DlsTasks? parentTask,
    @Default([]) List<DlsFileData> listFile,
    @Default([]) List<TaskEventModel> events,
    @Default([]) List<DlsSprintModel> sprints,
    @Default([]) List<DlsTasksChecklist> unsavedCheckList,
    @Default([]) List<DlsTasksChecklist> checkList,
    // TODO set information with tree Request
    @Default([]) List<DlsTasks> subtasks,
    @Default([]) List<TaskTagModel> tags,
    DLSUser? currentUser,
    DLSUser? author,
    @Default([]) List<DLSUser> performers,
    @Default([]) List<DLSUser> responsible,
    @Default([]) List<DLSUser> observers,
    DateTime? startAt,
    DateTime? expiredAt,
    @Default(TaskStatusType.inTheQueue) TaskStatusType status,
    // TODO refactor to ENUM
    @Default(TaskPriorityType.high) TaskPriorityType priority,
    int? daysCount,
    int? storyPoints,
    @Default([]) List<DlsTasks> blockingTasks,
    @Default([]) List<DlsTasks> dependingTasks,
    String? matrixRoom,
  }) = _SaveTaskModel;
}

extension SaveTaskModelExt on SaveTaskModel {
  DlsTask toRequest() {
    return DlsTask(
      title: title,
      description: description.isEmpty ? null : description,
      // TODO config type
      // type:
      startAt: startAt,
      expiredAt: expiredAt,
      status: status,
      priority: priority,
      // TODO config chatComment
      // chatCommentId:
      // TODO config template
      // templateId:
      // TODO config sprint
      // sprintId:
      parentId: parentTask?.id,
      // isAttachSprint:
      storyPoints: storyPoints,
      duration: daysCount,
      tags: tags.map((e) => e.id).toList(),
      subTasks: subtasks.map((e) => e.id).toList(),
      blocks: blockingTasks.map((e) => e.id).toList(),
      depends: dependingTasks.map((e) => e.id).toList(),
      filesIds: listFile.map((e) => e.id!).toList(),
      members: DlsMembers(
        executors: performers.map((e) => e.dlsId!).toList(),
        responsible: responsible.map((e) => e.dlsId!).toList(),
        observers: observers.map((e) => e.dlsId!).toList(),
      ),
      events: events.map((e) => e.id).toList(),
      sprints: sprints.map((e) => e.id).toList(),
    );
  }
}

extension TaskBlocDlsTaskExt on DlsTasks {
  SaveTaskModel toStateModel() {
    return SaveTaskModel(
      title: title,
      description: description ?? '',
      currentTask: this,
      parentTask: parentTask,
      listFile: files?.map((e) => e.toFileData()).toList() ?? [],
      events: events ?? [],
      sprints: sprints ?? [],
      checkList: checklist ?? [],
      subtasks: subTasks ?? [],
      tags: tags ?? [],
      author: user?.toUser(),
      performers: members?.executors?.map((e) => e.toUser()).toList() ?? [],
      responsible: members?.responsible?.map((e) => e.toUser()).toList() ?? [],
      observers: members?.observers?.map((e) => e.toUser()).toList() ?? [],
      startAt: startAt,
      expiredAt: expiredAt,
      status: status ?? TaskStatusType.inTheQueue,
      priority: priority ?? TaskPriorityType.high,
      daysCount: duration ?? 1,
      storyPoints: storyPoints ?? 0,
      dependingTasks: depends ?? [],
      blockingTasks: blocks ?? [],
      matrixRoom: matrixRoom,
    );
  }
}
