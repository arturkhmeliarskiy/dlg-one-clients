import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'sprint_author_model.freezed.dart';

@freezed
class SprintAuthorModel with _$SprintAuthorModel {
  const factory SprintAuthorModel({
    @Default('') String parentTitle,
    @Default('') String title,
    @Default('') String description,
    @Default(SprintStatus.newSprint) SprintStatus status,
    @Default([]) List<TaskEventModel> events,
    @Default({}) Map<TaskStatusType, List<DlsTasks>> backlogSubtasks,
    @Default({}) Map<TaskStatusType, List<DlsTasks>> sprintSubtasks,
    DateTime? date,
    @Default(SprintDurationType.oneWeek) SprintDurationType duration,
    DateTime? endDate,
    DLSUser? author,
    @Default([]) List<DLSUser> executors,
    @Default([]) List<DLSUser> responsible,
    @Default([]) List<DLSUser> observers,
    DlsSprintModel? sprint,
    DlsTasks? superTask,
    String? matrixRoom,
  }) = _SprintAuthorModel;
}

extension SprintAuthorModelExt on SprintAuthorModel {
  CreateSprintRequest? toRequest() {
    final date = this.date;
    if (title.isEmpty || date == null) {
      return null;
    }
    return CreateSprintRequest(
      title: title,
      description: description.isEmpty ? null : description,
      startAt: date,
      expiredAt: endDate,
      duration: duration,
      status: status,
      tasks: sprintSubtasks.values
          .expand((element) => element.map((e) => e.id))
          .toList(),
      events: events.map((e) => e.id).toList(),
      performers: DlsMembers(
        executors: executors
            .where((e) => e.dlsId != null)
            .map((e) => e.dlsId!)
            .toList(),
        responsible: responsible
            .where((e) => e.dlsId != null)
            .map((e) => e.dlsId!)
            .toList(),
        observers: observers
            .where((e) => e.dlsId != null)
            .map((e) => e.dlsId!)
            .toList(),
      ),
      superTaskId: superTask?.id,
    );
  }
}

extension DlsSprintModelSprintAuthorExt on DlsSprintModel {
  SprintAuthorModel toSprintAuthorModel([DlsTasks? superTask]) {
    final subtasks = <TaskStatusType, List<DlsTasks>>{
      TaskStatusType.atWork: [],
      TaskStatusType.inTheQueue: [],
    };
    final backlogSubtasks = <TaskStatusType, List<DlsTasks>>{
      TaskStatusType.atWork: [],
      TaskStatusType.inTheQueue: [],
    };
    for (final i in tasks) {
      final status = i.status ?? TaskStatusType.unknown;
      final list = (subtasks[status] ?? [])..add(i);
      subtasks[status] = list;
      if (!backlogSubtasks.containsKey(status)) {
        backlogSubtasks[status] = [];
      }
    }
    final taskIds = tasks.map((e) => e.id);
    for (final i in superTask?.subTasks ?? <DlsTasks>[]) {
      final status = i.status ?? TaskStatusType.unknown;
      if (taskIds.contains(i.id)) {
        continue;
      }
      final list = (backlogSubtasks[status] ?? [])..add(i);
      backlogSubtasks[status] = list;
    }
    return SprintAuthorModel(
      parentTitle: superTask?.title ?? '',
      title: title,
      description: description ?? '',
      status: status,
      events: events,
      backlogSubtasks: backlogSubtasks,
      sprintSubtasks: subtasks,
      date: startAt,
      duration: duration,
      endDate: expiredAt,
      author: user?.makeUser(),
      executors: performers?.executors?.map((e) => e.toUser()).toList() ?? [],
      responsible:
          performers?.responsible?.map((e) => e.toUser()).toList() ?? [],
      observers: performers?.observers?.map((e) => e.toUser()).toList() ?? [],
      sprint: this,
      superTask: superTask,
      matrixRoom: matrixRoom,
    );
  }
}
