import 'dart:async';

import 'package:common/common.dart';
import 'package:dls_one/web/tasks/tasks.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'task_list_bloc.freezed.dart';

part 'task_list_event.dart';

part 'task_list_state.dart';

class TaskListBloc extends Bloc<TaskListEvent, TaskListState> {
  TaskListBloc(this.restApi) : super(const TaskListState.init()) {
    on<TaskListEvent>(
      (event, emit) => event.map<Future<void>>(
        init: (event) => _init(event, emit),
        refresh: (event) => _refresh(event, emit),
        getTasks: (event) => _getTasks(event, emit),
        getKanban: (event) => _getKanban(event, emit),
        addTask: (event) => _addTask(event, emit),
        deleteTask: (event) => _deleteTask(event, emit),
        hierchyChange: (event) => _hierchyChange(event, emit),
        updateTask: (event) => _updateTask(event, emit),
        updatePerformers: (event) => _updatePerformers(event, emit),
        filterTaskList: (event) => _filterTask(event, emit),
        filterTaskKanban: (event) => _filterTaskKanban(event, emit),
        searchTask: (event) => _searchTask(event, emit),
        searchTaskKanban: (event) => _searchTaskKanban(event, emit),
        resetFilters: (event) => _resetFilters(event, emit),
        resetFiltersKanban: (event) => _resetFiltersKanban(event, emit),
        updateTaskKanban: (event) => _updateTaskKanban(event, emit),
        delete: (event) => _delete(event, emit),
      ),
    );

    add(const TaskListEvent.init());
  }

  final DlsRestApi restApi;

  Future<void> _init(
    InitTaskListEvent event,
    Emitter<TaskListState> emit,
  ) async {
    emit(TaskListState.loading(model: state.model));
    add(const TaskListEvent.getTasks());
    _fetchKanban();
    final resultTags = await restApi.getTags();
    final resultMembers = await restApi.getRole(roleId: 1);
    emit(
      state.copyWith(
        model: state.model.copyWith(
          tags: resultTags.tags,
          performers: resultMembers.members,
          performersKanban: resultMembers.members,
        ),
      ),
    );
  }

  Future<void> _refresh(_Refresh event, Emitter<TaskListState> emit) async {
    add(const TaskListEvent.getTasks());
    _fetchKanban(false);
  }

  Future<void> _getTasks(_GetTasks event, Emitter<TaskListState> emit) async {
    const request = GetTaskRequest(
      // TODO use only needed params
      include: DlsTaskIncludeType.values,
    );
    List<DlsTasksExecutors> performers = <DlsTasksExecutors>[];
    final resultTasks = await restApi.getTasks(request);
    var tasks = resultTasks.tasks;
    var openTasks = state.model.openTasks;
    // TODO use RestAPI instead of recursion search
    if (state.model.hierarchyView == TasksListHierarchy.entireHierarchy) {
      openTasks = await compute((_) => tasks.getAllParentIds(), '');
    }
    if (state.model.hierarchyView != TasksListHierarchy.firstLevel) {
      tasks = await compute((_) => tasks.withOpenTasks(openTasks), '');
    }

    emit(
      TaskListState.preloadData(
        model: state.model.copyWith(
          data: resultTasks,
          tasks: tasks.toList(),
          listTask: resultTasks.tasks,
          openTasks: openTasks,
        ),
      ),
    );
  }

  void _fetchKanban([bool withLoading = true]) {
    // TODO use enum
    add(TaskListEvent.getKanban(2, withLoading: withLoading));
    add(TaskListEvent.getKanban(3, withLoading: withLoading));
    add(TaskListEvent.getKanban(4, withLoading: withLoading));
  }

  Future<void> _getKanban(
    _GetKanban event,
    Emitter<TaskListState> emit,
  ) async {
    final status = event.status;
    var model = state.model;
    if (event.withLoading) {
      // TODO use enum
      if (status == 2) {
        model = model.copyWith(inTheQueueLoading: true);
      }
      if (status == 3) {
        model = model.copyWith(atWorkLoading: true);
      }
      if (status == 4) {
        model = model.copyWith(completedLoading: true);
      }
    }
    emit(state.copyWith(model: model));
    final listTask = await restApi.getTasksKanban(
      GetTaskRequest(
        status: [event.status],
        include: DlsTaskIncludeType.values,
      ),
    );
    model = state.model;
    // TODO use enum
    if (status == 2) {
      model = model.copyWith(
        inTheQueueLoading: false,
        listTaskInTheQueue: listTask.tasks,
        listTaskInTheQueueKanban: listTask.tasks,
      );
    }
    if (status == 3) {
      model = model.copyWith(
        atWorkLoading: false,
        listTaskAtWork: listTask.tasks,
        listTaskAtWorkKanban: listTask.tasks,
      );
    }
    if (status == 4) {
      model = model.copyWith(
        completedLoading: false,
        listTaskCompleted: listTask.tasks,
        listTaskCompletedKanban: listTask.tasks,
      );
    }
    emit(state.copyWith(model: model));
  }

  Future<void> _addTask(
    AddTaskListEvent event,
    Emitter<TaskListState> emit,
  ) async {
    final model = state.model;
    final openTasks = model.openTasks.toList()..add(event.task.id);
    var tasks = model.data?.tasks ?? [];
    tasks = await compute((_) => tasks.withOpenTasks(openTasks), '');

    emit(
      TaskListState.preloadData(
        model: state.model.copyWith(openTasks: openTasks, tasks: tasks),
      ),
    );
  }

  Future<void> _deleteTask(
    DeleteTaskListEvent event,
    Emitter<TaskListState> emit,
  ) async {
    final model = state.model;
    final openTasks = model.openTasks.toList()..remove(event.task.id);
    var tasks = model.data?.tasks ?? [];
    tasks = await compute((_) => tasks.withOpenTasks(openTasks), '');
    emit(
      TaskListState.preloadData(
        model: state.model.copyWith(openTasks: openTasks, tasks: tasks),
      ),
    );
  }

  Future<void> _delete(
    DeleteTaskEvent event,
    Emitter<TaskListState> emit,
  ) async {
    emit(TaskListState.loading(model: state.model));
    final model = state.model;
    final openTasks = model.openTasks.toList()..remove(event.id);
    await restApi.deleteTask(id: event.id);
    final taskList = model.tasks.toList()..removeAt(event.index);
    emit(
      TaskListState.preloadData(
        model: state.model.copyWith(openTasks: openTasks, tasks: taskList),
      ),
    );
  }

  Future<void> _hierchyChange(
    HierchyChangeTaskListEvent event,
    Emitter<TaskListState> emit,
  ) async {
    final model = state.model;
    final openTasks = <int>[];
    var tasks = model.data?.tasks ?? [];

    // TODO use RestAPI instead of recursion search
    if (event.value == TasksListHierarchy.entireHierarchy) {
      emit(TaskListState.loading(model: state.model));
      final ids = await compute((_) {
        return tasks.getAllParentIds();
      }, '');
      openTasks.addAll(ids);
      tasks = await compute((_) {
        return tasks.withOpenTasks(openTasks);
      }, '');
    }

    emit(
      TaskListState.preloadData(
        model: state.model.copyWith(
          openTasks: openTasks,
          hierarchyView: event.value,
          tasks: tasks,
        ),
      ),
    );
  }

  Future<void> _updateTask(
    UpdateTaskListEvent event,
    Emitter<TaskListState> emit,
  ) async {
    final model = state.model;
    // TODO config Tasks updating
    final task = model.tasks[event.index];
    var listTaskAtWork = <DlsTasks>[];
    var listTaskCompleted = <DlsTasks>[];
    var listTaskInTheQueue = <DlsTasks>[];

    unawaited(
      restApi.updateTask(
        id: event.task.id,
        value: DlsTask(
          title: event.task.title != task.title ? event.task.title : task.title,
          description: event.task.description != task.description
              ? event.task.description
              : task.description,
          status: event.task.status != task.status ? event.task.status : null,
          priority:
              event.task.priority != task.priority ? event.task.priority : null,
          expiredAt: event.task.expiredAt != task.expiredAt
              ? event.task.expiredAt
              : null,
        ),
      ),
    );

    final listTask = [...model.tasks];

    listTask[event.index] = task.copyWith(
      title: event.task.title != task.title ? event.task.title : task.title,
      description: event.task.description != task.description
          ? event.task.description
          : task.description,
      status:
          event.task.status != task.status ? event.task.status : task.status,
      priority: event.task.priority != task.priority
          ? event.task.priority
          : task.priority,
      expiredAt: event.task.expiredAt != task.expiredAt
          ? event.task.expiredAt
          : task.expiredAt,
    );

    listTaskAtWork = listTask
        .where((element) => element.status == TaskStatusType.atWork)
        .toList();

    listTaskCompleted = listTask
        .where((element) => element.status == TaskStatusType.completed)
        .toList();

    listTaskInTheQueue = listTask
        .where((element) => element.status == TaskStatusType.inTheQueue)
        .toList();

    emit(
      TaskListState.preloadData(
        model: model.copyWith(
          tasks: listTask,
          listTaskAtWork: listTaskAtWork,
          listTaskCompleted: listTaskCompleted,
          listTaskInTheQueue: listTaskInTheQueue,
        ),
      ),
    );
  }

  Future<void> _updateTaskKanban(
    UpdateTaskKanbanListEvent event,
    Emitter<TaskListState> emit,
  ) async {
    final model = state.model;
    final listTaskAtWork = model.listTaskAtWork.toList();
    final listTaskCompleted = model.listTaskCompleted.toList();
    final listTaskInTheQueue = model.listTaskInTheQueue.toList();

    // TODO request not handling error
    unawaited(
      restApi.updateTaskKanban(
        id: event.task.id,
        statusId: event.addToStatus.index,
        positionNumber: event.addToTaskIndex,
      ),
    );

    final listTask = [...model.tasks];

    if (event.removeFromStatus == TaskStatusType.atWork) {
      listTaskAtWork.removeAt(event.removeTaskIndex);
    }
    if (event.removeFromStatus == TaskStatusType.inTheQueue) {
      listTaskInTheQueue.removeAt(event.removeTaskIndex);
    }
    if (event.removeFromStatus == TaskStatusType.completed) {
      listTaskCompleted.removeAt(event.removeTaskIndex);
    }

    if (event.addToStatus == TaskStatusType.atWork) {
      listTaskAtWork.insert(
        event.addToTaskIndex,
        event.task.copyWith(
          kanbanOrderBy: event.addToTaskIndex,
        ),
      );
    }

    if (event.addToStatus == TaskStatusType.inTheQueue) {
      listTaskInTheQueue.insert(
        event.addToTaskIndex,
        event.task.copyWith(
          kanbanOrderBy: event.addToTaskIndex,
        ),
      );
    }

    if (event.addToStatus == TaskStatusType.completed) {
      listTaskCompleted.insert(
        event.addToTaskIndex,
        event.task.copyWith(
          kanbanOrderBy: event.addToTaskIndex,
        ),
      );
    }

    emit(
      TaskListState.preloadData(
        model: model.copyWith(
          tasks: listTask,
          listTaskAtWork: listTaskAtWork,
          listTaskCompleted: listTaskCompleted,
          listTaskInTheQueue: listTaskInTheQueue,
        ),
      ),
    );
  }

  Future<void> _updatePerformers(
    UpdatePerformersTaskListEvent event,
    Emitter<TaskListState> emit,
  ) async {
    final model = state.model;
    final executors = List<DlsTasksExecutors>.from(
      event.users.map(
        (item) => DlsTasksExecutors(
          id: item.dlsId,
          name: item.name,
        ),
      ),
    );

    // TODO name it userIds
    final listUsers = event.users
        .map(
          (item) => item.dlsId ?? 0,
        )
        .toList();

    final listTask = <DlsTasks>[...model.tasks];

    listTask[event.index] = model.tasks[event.index]
        .copyWith(members: DlsTasksMembers(executors: executors));

    unawaited(
      restApi.updateTask(
        id: model.tasks[event.index].id,
        value: DlsTask(
          members: DlsMembers(executors: listUsers),
        ),
      ),
    );

    final listTaskAtWork = listTask
        .where((element) => element.status == TaskStatusType.atWork)
        .toList();

    final listTaskCompleted = listTask
        .where((element) => element.status == TaskStatusType.completed)
        .toList();

    final listTaskInTheQueue = listTask
        .where((element) => element.status == TaskStatusType.inTheQueue)
        .toList();

    emit(
      TaskListState.preloadData(
        model: model.copyWith(
          data: model.data,
          tasks: listTask,
          hierarchyView: model.hierarchyView,
          listTaskAtWork: listTaskAtWork,
          listTaskCompleted: listTaskCompleted,
          listTaskInTheQueue: listTaskInTheQueue,
        ),
      ),
    );
  }

  List<int>? roleFilter(Map<FilterTypes, Object> listFilter) {
    List<int>? result;
    if (listFilter.containsKey(FilterTypes.myRole)) {
      final roleFilter = listFilter[FilterTypes.myRole] as List<TaskRolesType>;

      if (roleFilter.isNotEmpty &&
          !roleFilter.contains(TaskRolesType.unknown)) {
        result = roleFilter.map((item) => item.index - 1).toList();
      }
    }

    return result;
  }

  List<int>? statusFilter(Map<FilterTypes, Object> listFilter) {
    List<int>? result;
    if (listFilter.containsKey(FilterTypes.status)) {
      final statusFilter =
          listFilter[FilterTypes.status] as List<TaskStatusType>;

      if (statusFilter.isNotEmpty &&
          !statusFilter.contains(TaskStatusType.unknown)) {
        result = statusFilter.map((item) => item.index).toList();
      }
    }

    return result;
  }

  List<int>? priorityFilter(Map<FilterTypes, Object> listFilter) {
    List<int>? result;
    if (listFilter.keys.contains(FilterTypes.priority)) {
      final priorityFilter =
          listFilter[FilterTypes.priority] as List<TaskPriorityType>;

      if (priorityFilter.isNotEmpty &&
          !priorityFilter.contains(TaskPriorityType.unknown)) {
        result = priorityFilter.map((item) => item.index - 1).toList();
      }
    }

    return result;
  }

  int? typeFilter(Map<FilterTypes, Object> listFilter) {
    int? type;
    if (listFilter.containsKey(FilterTypes.type)) {
      final currentFilter = listFilter[FilterTypes.type] as int;
      if (currentFilter != 0) {
        type = currentFilter;
      } else {
        type = null;
      }
    }
    return type;
  }

  int? filesFilter(Map<FilterTypes, Object> listFilter) {
    int? files;
    if (listFilter.containsKey(FilterTypes.files)) {
      final filesFilter = listFilter[FilterTypes.files] as int;
      if (filesFilter != 0) {
        files = filesFilter;
      } else {
        files = 0;
      }
    }
    return files;
  }

  Map<String, dynamic>? tegsFilter(Map<FilterTypes, Object> listFilter) {
    Map<String, dynamic>? result;
    if (listFilter.keys.contains(FilterTypes.tags)) {
      final tagsFilter = listFilter[FilterTypes.tags] as List<int>;
      if (!tagsFilter.contains(0)) {
        return result = {'filter[tags][]': tagsFilter};
      } else {
        return null;
      }
    }
    return result;
  }

  List<int>? performersFilter(Map<FilterTypes, Object> listFilter) {
    List<int>? result;
    if (listFilter.keys.contains(FilterTypes.performers)) {
      final tagsFilter = listFilter[FilterTypes.performers] as List<int>;
      if (!tagsFilter.contains(0)) {
        return result = tagsFilter;
      } else {
        return null;
      }
    }
    return result;
  }

  String? deadlineFilter(Map<FilterTypes, Object> listFilter) {
    String? deadline;
    if (listFilter.containsKey(FilterTypes.deadline)) {
      if (DlsPlatform.dlsPlatform == DlsPlatformType.mobile) {
        final deadlineFilter =
            listFilter[FilterTypes.deadline] as List<DateTime>;
        if (deadlineFilter.length > 1) {
          deadline =
              '${deadlineFilter.first},${deadlineFilter.last.add(const Duration(days: 1))}';
        } else {
          deadline =
              '${DateTime(1970)},${deadlineFilter.first.add(const Duration(days: 1))}';
        }
      } else {
        final deadlineFilter = listFilter[FilterTypes.deadline] as DateTime;
        if (deadlineFilter != DateTime(0)) {
          deadline =
              '${DateTime(1970)},${deadlineFilter.add(const Duration(days: 1))}';
        }
      }
    }
    return deadline;
  }

  DlsStorypointsEnum? storypointsFilter(Map<FilterTypes, Object> listFilter) {
    DlsStorypointsEnum? storypoints;
    if (listFilter.containsKey(FilterTypes.storypoints)) {
      final storypointsFilter =
          listFilter[FilterTypes.storypoints] as DlsStorypointsEnum;
      storypoints = storypointsFilter;
    }
    return storypoints;
  }

  Future<void> _filterTask(
    FilterTaskListEvent event,
    Emitter<TaskListState> emit,
  ) async {
    final model = state.model;
    var listFilter = Map<FilterTypes, Object>.from(model.filters);
    var isResetEverything = false;
    if (event.listFilter != null) {
      listFilter = event.listFilter ?? {};
    } else {
      listFilter[event.type ?? FilterTypes.type] = event.value ?? {};
    }

    var resultTasks = model.listTask.toList();

    final roles = roleFilter(listFilter);
    if (listFilter.containsKey(FilterTypes.myRole)) {
      isResetEverything = roles?.isNotEmpty ?? false;
    }

    final type = typeFilter(listFilter);
    if (listFilter.containsKey(FilterTypes.type)) {
      isResetEverything = type != 0;
    }

    final files = filesFilter(listFilter);
    if (listFilter.containsKey(FilterTypes.files)) {
      isResetEverything = files != 0;
    }

    final status = statusFilter(listFilter);
    if (listFilter.containsKey(FilterTypes.status) &&
        (status?.isNotEmpty ?? false)) {
      isResetEverything = status?.isNotEmpty ?? false;
    }

    final priority = priorityFilter(listFilter);
    if (listFilter.containsKey(FilterTypes.priority) &&
        (priority?.isNotEmpty ?? false)) {
      isResetEverything = priority?.isNotEmpty ?? false;
    }

    final performers = performersFilter(listFilter);
    if (listFilter.containsKey(FilterTypes.performers) &&
        (performers?.isNotEmpty ?? false)) {
      isResetEverything = performers?.isNotEmpty ?? false;
    }

    final tags = tegsFilter(listFilter);
    if (listFilter.containsKey(FilterTypes.tags)) {
      isResetEverything = tags?.values.single != null &&
          (tags?.values.single as List).isNotEmpty;
    }

    final deadline = deadlineFilter(listFilter);
    if (listFilter.containsKey(FilterTypes.deadline)) {
      isResetEverything = deadline != null && deadline.isNotEmpty;
    }

    final storypoints = storypointsFilter(listFilter);
    if (listFilter.containsKey(FilterTypes.storypoints)) {
      isResetEverything = storypoints != null;
    }

    emit(
      TaskListState.preloadData(
        model: state.model.copyWith(
          filters: listFilter,
        ),
      ),
    );

    final resultTags = await restApi.getTags();
    final resultMembers = await restApi.getRole(roleId: 1);

    emit(
      TaskListState.preloadData(
        model: state.model.copyWith(
          tasks: resultTasks,
          isResetEverything: isResetEverything,
          tags: resultTags.tags,
          performers: resultMembers.members,
        ),
      ),
    );

    emit(
      TaskListState.loading(
        model: state.model,
      ),
    );

    if (listFilter.isNotEmpty) {
      final result = await restApi.getTasks(
        GetTaskRequest(
          files: (files ?? 0) > 1 ? 0 : files,
          status: status,
          priority: priority,
          roles: roles,
          type: type,
          deadline: deadline,
          storypoints: storypoints,
          performers: performers,
          include: DlsTaskIncludeType.values,
        ),
        tags,
      );
      resultTasks = result.tasks;
    }

    emit(
      TaskListState.preloadData(
        model: state.model.copyWith(
          tasks: resultTasks,
          isResetEverything: isResetEverything,
          tags: resultTags.tags,
        ),
      ),
    );
  }

  Future<void> _filterTaskKanban(
    FilterTaskKanbanEvent event,
    Emitter<TaskListState> emit,
  ) async {
    final model = state.model;
    final listFilterKanban = Map<FilterTypes, Object>.from(model.filtersKanban);
    var isResetEverything = false;
    listFilterKanban[event.type ?? FilterTypes.unknown] = event.value ?? {};
    List<DlsTasks>? listTaskInTheQueue;
    List<DlsTasks>? listTaskAtWork;
    List<DlsTasks>? listTaskCompleted;

    final roles = roleFilter(listFilterKanban);
    if (listFilterKanban.containsKey(FilterTypes.myRole)) {
      isResetEverything = roles?.isNotEmpty ?? false;
    }

    final type = typeFilter(listFilterKanban);
    if (listFilterKanban.containsKey(FilterTypes.type)) {
      isResetEverything = type != 0;
    }

    final files = filesFilter(listFilterKanban);
    if (listFilterKanban.containsKey(FilterTypes.files)) {
      isResetEverything = files != 0;
    }

    final priority = priorityFilter(listFilterKanban);
    if (listFilterKanban.containsKey(FilterTypes.priority)) {
      isResetEverything = priority?.isNotEmpty ?? false;
    }

    final tags = tegsFilter(listFilterKanban);
    if (listFilterKanban.containsKey(FilterTypes.tags)) {
      isResetEverything = tags?.values.single != null &&
          (tags?.values.single as List).isNotEmpty;
    }

    final performers = performersFilter(listFilterKanban);
    if (listFilterKanban.containsKey(FilterTypes.performers) &&
        (performers?.isNotEmpty ?? false)) {
      isResetEverything = priority?.isNotEmpty ?? false;
    }

    final deadline = deadlineFilter(listFilterKanban);
    if (listFilterKanban.containsKey(FilterTypes.deadline)) {
      isResetEverything = deadline != null && deadline.isNotEmpty;
    }

    emit(
      TaskListState.preloadData(
        model: state.model.copyWith(
          filtersKanban: listFilterKanban,
        ),
      ),
    );

    final resultTags = await restApi.getTags();
    final resultMembers = await restApi.getRole(roleId: 1);

    emit(
      TaskListState.loading(
        model: state.model,
      ),
    );

    if (listFilterKanban.isNotEmpty ||
        listFilterKanban.containsKey(FilterTypes.status)) {
      final taskInTheQueue = await restApi.getTasksKanban(
        GetTaskRequest(
          status: [2],
          priority: priority,
          roles: roles,
          type: type,
          files: files,
          deadline: deadline,
          performers: performers,
          include: DlsTaskIncludeType.values,
        ),
        tags,
      );
      listTaskInTheQueue = taskInTheQueue.tasks;

      final taskAtWork = await restApi.getTasksKanban(
        GetTaskRequest(
          status: [3],
          priority: priority,
          roles: roles,
          type: type,
          files: files,
          deadline: deadline,
          performers: performers,
          include: DlsTaskIncludeType.values,
        ),
        tags,
      );
      listTaskAtWork = taskAtWork.tasks;

      final taskCompleted = await restApi.getTasksKanban(
        GetTaskRequest(
          status: [4],
          priority: priority,
          roles: roles,
          type: type,
          files: files,
          deadline: deadline,
          performers: performers,
          include: DlsTaskIncludeType.values,
        ),
        tags,
      );
      listTaskCompleted = taskCompleted.tasks;

      if (listFilterKanban.containsKey(FilterTypes.status)) {
        final statusFilter =
            listFilterKanban[FilterTypes.status] as List<TaskStatusType>;
        if (!statusFilter.contains(TaskStatusType.unknown) &&
            statusFilter.isNotEmpty) {
          isResetEverything = listFilterKanban.containsKey(FilterTypes.status);
          if (!statusFilter.contains(TaskStatusType.inTheQueue)) {
            listTaskInTheQueue = [];
          }
          if (!statusFilter.contains(TaskStatusType.atWork)) {
            listTaskAtWork = [];
          }
          if (!statusFilter.contains(TaskStatusType.completed)) {
            listTaskCompleted = [];
          }
        }
      }
    }

    emit(
      TaskListState.preloadData(
        model: state.model.copyWith(
          listTaskInTheQueue: listTaskInTheQueue ?? [],
          listTaskAtWork: listTaskAtWork ?? [],
          listTaskCompleted: listTaskCompleted ?? [],
          isResetEverything: isResetEverything,
          tags: resultTags.tags,
          performers: resultMembers.members,
        ),
      ),
    );
  }

  Future<void> _searchTask(
    SearchTaskListEvent event,
    Emitter<TaskListState> emit,
  ) async {
    var listTasks = <DlsTasks>[];
    emit(
      TaskListState.loading(model: state.model),
    );
    // TODO зачем этот event можно же все сделать через event [getTasks]
    final result = await restApi.getTasks(
      GetTaskRequest(
        title: event.value,
        include: DlsTaskIncludeType.values,
      ),
    );
    final openTasks = <int>[];
    listTasks = result.tasks;
    if (state.model.hierarchyView == TasksListHierarchy.entireHierarchy) {
      emit(TaskListState.loading(model: state.model));
      final ids = await compute((_) {
        return listTasks.getAllParentIds();
      }, '');
      openTasks.addAll(ids);
      listTasks = await compute((_) {
        return listTasks.withOpenTasks(openTasks);
      }, '');
    }

    emit(
      TaskListState.preloadData(model: state.model.copyWith(tasks: listTasks)),
    );
  }

  Future<void> _searchTaskKanban(
    SearchTaskKanbanEvent event,
    Emitter<TaskListState> emit,
  ) async {
    emit(
      TaskListState.loading(model: state.model),
    );
    final listTaskInTheQueue = await restApi.getTasksKanban(
      GetTaskRequest(
        title: event.value,
        // TODO change to enum
        status: [2],
        include: DlsTaskIncludeType.values,
      ),
    );

    final listTaskAtWork = await restApi.getTasksKanban(
      GetTaskRequest(
        title: event.value,
        // TODO change to enum
        status: [3],
        include: DlsTaskIncludeType.values,
      ),
    );

    final listTaskCompleted = await restApi.getTasksKanban(
      GetTaskRequest(
        title: event.value,
        // TODO change to enum
        status: [4],
        include: DlsTaskIncludeType.values,
      ),
    );

    emit(
      TaskListState.preloadData(
        model: state.model.copyWith(
          listTaskInTheQueue: listTaskInTheQueue.tasks,
          listTaskAtWork: listTaskAtWork.tasks,
          listTaskCompleted: listTaskCompleted.tasks,
        ),
      ),
    );
  }

  Future<void> _resetFilters(
    ResetFiltersTaskListEvent event,
    Emitter<TaskListState> emit,
  ) async {
    emit(
      TaskListState.preloadData(
        model: state.model.copyWith(
          tasks: state.model.listTask,
          filters: {},
          isResetEverything: false,
        ),
      ),
    );
  }

  Future<void> _resetFiltersKanban(
    ResetFiltersTaskKanbanEvent event,
    Emitter<TaskListState> emit,
  ) async {
    final model = state.model;
    emit(
      TaskListState.preloadData(
        model: model.copyWith(
          tasks: model.listTask,
          filtersKanban: {},
          isResetEverything: false,
          listTaskAtWork: model.listTaskAtWorkKanban,
          listTaskInTheQueue: model.listTaskInTheQueueKanban,
          listTaskCompleted: model.listTaskCompletedKanban,
        ),
      ),
    );
  }
}
