// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DLSNotificationTaskAnyString _$$_DLSNotificationTaskAnyStringFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationTaskAnyString(
      nObject:
          DLSNotificationTask.fromJson(json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      text1: json['text1'] as String,
      text2: json['text2'] as String,
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationTaskAnyStringToJson(
        _$_DLSNotificationTaskAnyString instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'text1': instance.text1,
      'text2': instance.text2,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

const _$DlsPlatformNotificationTypeEnumMap = {
  DlsPlatformNotificationType.web: 'web',
  DlsPlatformNotificationType.macOS: 'macOS',
  DlsPlatformNotificationType.android: 'android',
  DlsPlatformNotificationType.ios: 'ios',
  DlsPlatformNotificationType.socket: 'socket',
};

_$_DLSNotificationTaskAddYouAssigner
    _$$_DLSNotificationTaskAddYouAssignerFromJson(Map<String, dynamic> json) =>
        _$_DLSNotificationTaskAddYouAssigner(
          nObject: DLSNotificationTask.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationTaskAddYouAssignerToJson(
        _$_DLSNotificationTaskAddYouAssigner instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskAddYouWatcher
    _$$_DLSNotificationTaskAddYouWatcherFromJson(Map<String, dynamic> json) =>
        _$_DLSNotificationTaskAddYouWatcher(
          nObject: DLSNotificationTask.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationTaskAddYouWatcherToJson(
        _$_DLSNotificationTaskAddYouWatcher instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskAddYouResponsible
    _$$_DLSNotificationTaskAddYouResponsibleFromJson(
            Map<String, dynamic> json) =>
        _$_DLSNotificationTaskAddYouResponsible(
          nObject: DLSNotificationTask.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationTaskAddYouResponsibleToJson(
        _$_DLSNotificationTaskAddYouResponsible instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskAddAssigners _$$_DLSNotificationTaskAddAssignersFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationTaskAddAssigners(
      nObject:
          DLSNotificationTask.fromJson(json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      users: (json['users'] as List<dynamic>)
          .map((e) => DLSNotificationUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationTaskAddAssignersToJson(
        _$_DLSNotificationTaskAddAssigners instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'users': instance.users,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskAddResponsible
    _$$_DLSNotificationTaskAddResponsibleFromJson(Map<String, dynamic> json) =>
        _$_DLSNotificationTaskAddResponsible(
          nObject: DLSNotificationTask.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          users: (json['users'] as List<dynamic>)
              .map((e) =>
                  DLSNotificationUser.fromJson(e as Map<String, dynamic>))
              .toList(),
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationTaskAddResponsibleToJson(
        _$_DLSNotificationTaskAddResponsible instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'users': instance.users,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskChangeStatus _$$_DLSNotificationTaskChangeStatusFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationTaskChangeStatus(
      nObject:
          DLSNotificationTask.fromJson(json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      statusPrev:
          $enumDecode(_$DLSNotificationObjectStatusEnumMap, json['statusPrev']),
      statusCur:
          $enumDecode(_$DLSNotificationObjectStatusEnumMap, json['statusCur']),
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationTaskChangeStatusToJson(
        _$_DLSNotificationTaskChangeStatus instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'statusPrev': _$DLSNotificationObjectStatusEnumMap[instance.statusPrev]!,
      'statusCur': _$DLSNotificationObjectStatusEnumMap[instance.statusCur]!,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

const _$DLSNotificationObjectStatusEnumMap = {
  DLSNotificationObjectStatus.unknown: 'unknown',
  DLSNotificationObjectStatus.pending: 'pending',
  DLSNotificationObjectStatus.progress: 'progress',
  DLSNotificationObjectStatus.done: 'done',
};

_$_DLSNotificationTaskChangeDeadline
    _$$_DLSNotificationTaskChangeDeadlineFromJson(Map<String, dynamic> json) =>
        _$_DLSNotificationTaskChangeDeadline(
          nObject: DLSNotificationTask.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          deadlinePrev: DateTime.parse(json['deadlinePrev'] as String),
          deadlineCur: DateTime.parse(json['deadlineCur'] as String),
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationTaskChangeDeadlineToJson(
        _$_DLSNotificationTaskChangeDeadline instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'deadlinePrev': instance.deadlinePrev.toIso8601String(),
      'deadlineCur': instance.deadlineCur.toIso8601String(),
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskChangePriority
    _$$_DLSNotificationTaskChangePriorityFromJson(Map<String, dynamic> json) =>
        _$_DLSNotificationTaskChangePriority(
          nObject: DLSNotificationTask.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          priorityPrev: $enumDecode(
              _$DLSNotificationObjectPriorityEnumMap, json['priorityPrev']),
          priorityCur: $enumDecode(
              _$DLSNotificationObjectPriorityEnumMap, json['priorityCur']),
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationTaskChangePriorityToJson(
        _$_DLSNotificationTaskChangePriority instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'priorityPrev':
          _$DLSNotificationObjectPriorityEnumMap[instance.priorityPrev]!,
      'priorityCur':
          _$DLSNotificationObjectPriorityEnumMap[instance.priorityCur]!,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

const _$DLSNotificationObjectPriorityEnumMap = {
  DLSNotificationObjectPriority.unknown: 'unknown',
  DLSNotificationObjectPriority.critical: 'critical',
  DLSNotificationObjectPriority.high: 'high',
  DLSNotificationObjectPriority.middle: 'middle',
  DLSNotificationObjectPriority.low: 'low',
  DLSNotificationObjectPriority.veryLow: 'veryLow',
};

_$_DLSNotificationTaskAddFiles _$$_DLSNotificationTaskAddFilesFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationTaskAddFiles(
      nObject:
          DLSNotificationTask.fromJson(json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      files: json['files'] as List<dynamic>,
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationTaskAddFilesToJson(
        _$_DLSNotificationTaskAddFiles instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'files': instance.files,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskRemoveFiles _$$_DLSNotificationTaskRemoveFilesFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationTaskRemoveFiles(
      nObject:
          DLSNotificationTask.fromJson(json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      files: json['files'] as List<dynamic>,
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationTaskRemoveFilesToJson(
        _$_DLSNotificationTaskRemoveFiles instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'files': instance.files,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskAddWatchers _$$_DLSNotificationTaskAddWatchersFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationTaskAddWatchers(
      nObject:
          DLSNotificationTask.fromJson(json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      users: (json['users'] as List<dynamic>)
          .map((e) => DLSNotificationUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationTaskAddWatchersToJson(
        _$_DLSNotificationTaskAddWatchers instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'users': instance.users,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskRemoveWatchers
    _$$_DLSNotificationTaskRemoveWatchersFromJson(Map<String, dynamic> json) =>
        _$_DLSNotificationTaskRemoveWatchers(
          nObject: DLSNotificationTask.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          users: (json['users'] as List<dynamic>)
              .map((e) =>
                  DLSNotificationUser.fromJson(e as Map<String, dynamic>))
              .toList(),
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationTaskRemoveWatchersToJson(
        _$_DLSNotificationTaskRemoveWatchers instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'users': instance.users,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskAddDependencies
    _$$_DLSNotificationTaskAddDependenciesFromJson(Map<String, dynamic> json) =>
        _$_DLSNotificationTaskAddDependencies(
          nObject: DLSNotificationTask.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationTaskAddDependenciesToJson(
        _$_DLSNotificationTaskAddDependencies instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskRemoveDependencies
    _$$_DLSNotificationTaskRemoveDependenciesFromJson(
            Map<String, dynamic> json) =>
        _$_DLSNotificationTaskRemoveDependencies(
          nObject: DLSNotificationTask.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationTaskRemoveDependenciesToJson(
        _$_DLSNotificationTaskRemoveDependencies instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskAddSprints _$$_DLSNotificationTaskAddSprintsFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationTaskAddSprints(
      nObject:
          DLSNotificationTask.fromJson(json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      sprints: (json['sprints'] as List<dynamic>)
          .map((e) => DLSNotificationSprint.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationTaskAddSprintsToJson(
        _$_DLSNotificationTaskAddSprints instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'sprints': instance.sprints,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskRemoveSprints
    _$$_DLSNotificationTaskRemoveSprintsFromJson(Map<String, dynamic> json) =>
        _$_DLSNotificationTaskRemoveSprints(
          nObject: DLSNotificationTask.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          sprints: (json['sprints'] as List<dynamic>)
              .map((e) =>
                  DLSNotificationSprint.fromJson(e as Map<String, dynamic>))
              .toList(),
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationTaskRemoveSprintsToJson(
        _$_DLSNotificationTaskRemoveSprints instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'sprints': instance.sprints,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskAddEvents _$$_DLSNotificationTaskAddEventsFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationTaskAddEvents(
      nObject:
          DLSNotificationTask.fromJson(json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      events: (json['events'] as List<dynamic>)
          .map((e) => DLSNotificationEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationTaskAddEventsToJson(
        _$_DLSNotificationTaskAddEvents instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'events': instance.events,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskRemoveEvents _$$_DLSNotificationTaskRemoveEventsFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationTaskRemoveEvents(
      nObject:
          DLSNotificationTask.fromJson(json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      events: (json['events'] as List<dynamic>)
          .map((e) => DLSNotificationEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationTaskRemoveEventsToJson(
        _$_DLSNotificationTaskRemoveEvents instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'events': instance.events,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskAddTodos _$$_DLSNotificationTaskAddTodosFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationTaskAddTodos(
      nObject:
          DLSNotificationTask.fromJson(json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      todos: (json['todos'] as List<dynamic>)
          .map((e) => DLSNotificationTodo.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationTaskAddTodosToJson(
        _$_DLSNotificationTaskAddTodos instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'todos': instance.todos,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskRemoveTodos _$$_DLSNotificationTaskRemoveTodosFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationTaskRemoveTodos(
      nObject:
          DLSNotificationTask.fromJson(json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      todos: (json['todos'] as List<dynamic>)
          .map((e) => DLSNotificationTodo.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationTaskRemoveTodosToJson(
        _$_DLSNotificationTaskRemoveTodos instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'todos': instance.todos,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskChildTasks _$$_DLSNotificationTaskChildTasksFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationTaskChildTasks(
      nObject:
          DLSNotificationTask.fromJson(json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => DLSNotificationTask.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationTaskChildTasksToJson(
        _$_DLSNotificationTaskChildTasks instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'tasks': instance.tasks,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskRemoveTasks _$$_DLSNotificationTaskRemoveTasksFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationTaskRemoveTasks(
      nObject:
          DLSNotificationTask.fromJson(json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => DLSNotificationTask.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationTaskRemoveTasksToJson(
        _$_DLSNotificationTaskRemoveTasks instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'tasks': instance.tasks,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskRestrictAccess
    _$$_DLSNotificationTaskRestrictAccessFromJson(Map<String, dynamic> json) =>
        _$_DLSNotificationTaskRestrictAccess(
          nObject: DLSNotificationTask.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationTaskRestrictAccessToJson(
        _$_DLSNotificationTaskRestrictAccess instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskExpandAccess _$$_DLSNotificationTaskExpandAccessFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationTaskExpandAccess(
      nObject:
          DLSNotificationTask.fromJson(json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationTaskExpandAccessToJson(
        _$_DLSNotificationTaskExpandAccess instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskLock _$$_DLSNotificationTaskLockFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationTaskLock(
      nObject:
          DLSNotificationTask.fromJson(json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationTaskLockToJson(
        _$_DLSNotificationTaskLock instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskUnlock _$$_DLSNotificationTaskUnlockFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationTaskUnlock(
      nObject:
          DLSNotificationTask.fromJson(json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationTaskUnlockToJson(
        _$_DLSNotificationTaskUnlock instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskCallStart _$$_DLSNotificationTaskCallStartFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationTaskCallStart(
      nObject:
          DLSNotificationTask.fromJson(json['nObject'] as Map<String, dynamic>),
      startAt: DateTime.parse(json['startAt'] as String),
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationTaskCallStartToJson(
        _$_DLSNotificationTaskCallStart instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'startAt': instance.startAt.toIso8601String(),
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskCallEnd _$$_DLSNotificationTaskCallEndFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationTaskCallEnd(
      nObject:
          DLSNotificationTask.fromJson(json['nObject'] as Map<String, dynamic>),
      duration: json['duration'] as int,
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationTaskCallEndToJson(
        _$_DLSNotificationTaskCallEnd instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'duration': instance.duration,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskReminder _$$_DLSNotificationTaskReminderFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationTaskReminder(
      nObject:
          DLSNotificationTask.fromJson(json['nObject'] as Map<String, dynamic>),
      reminderText: json['reminderText'] as String,
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationTaskReminderToJson(
        _$_DLSNotificationTaskReminder instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'reminderText': instance.reminderText,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskOverdue _$$_DLSNotificationTaskOverdueFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationTaskOverdue(
      nObject:
          DLSNotificationTask.fromJson(json['nObject'] as Map<String, dynamic>),
      overdueText: json['overdueText'] as String,
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationTaskOverdueToJson(
        _$_DLSNotificationTaskOverdue instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'overdueText': instance.overdueText,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationTaskInformation _$$_DLSNotificationTaskInformationFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationTaskInformation(
      nObject:
          DLSNotificationTask.fromJson(json['nObject'] as Map<String, dynamic>),
      information: json['information'] as String,
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationTaskInformationToJson(
        _$_DLSNotificationTaskInformation instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'information': instance.information,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationEventAnyString _$$_DLSNotificationEventAnyStringFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationEventAnyString(
      nObject: DLSNotificationEvent.fromJson(
          json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      text1: json['text1'] as String,
      text2: json['text2'] as String,
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationEventAnyStringToJson(
        _$_DLSNotificationEventAnyString instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'text1': instance.text1,
      'text2': instance.text2,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationEventInvite _$$_DLSNotificationEventInviteFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationEventInvite(
      nObject: DLSNotificationEvent.fromJson(
          json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationEventInviteToJson(
        _$_DLSNotificationEventInvite instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationEventRemove _$$_DLSNotificationEventRemoveFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationEventRemove(
      nObject: DLSNotificationEvent.fromJson(
          json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationEventRemoveToJson(
        _$_DLSNotificationEventRemove instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationEventChangeDate _$$_DLSNotificationEventChangeDateFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationEventChangeDate(
      nObject: DLSNotificationEvent.fromJson(
          json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      datetimePrev: DateTime.parse(json['datetimePrev'] as String),
      datetimeCur: DateTime.parse(json['datetimeCur'] as String),
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationEventChangeDateToJson(
        _$_DLSNotificationEventChangeDate instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'datetimePrev': instance.datetimePrev.toIso8601String(),
      'datetimeCur': instance.datetimeCur.toIso8601String(),
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationEventChangeTime _$$_DLSNotificationEventChangeTimeFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationEventChangeTime(
      nObject: DLSNotificationEvent.fromJson(
          json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      timePrev: (json['timePrev'] as List<dynamic>)
          .map((e) => DateTime.parse(e as String))
          .toList(),
      timeCur: (json['timeCur'] as List<dynamic>)
          .map((e) => DateTime.parse(e as String))
          .toList(),
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationEventChangeTimeToJson(
        _$_DLSNotificationEventChangeTime instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'timePrev': instance.timePrev.map((e) => e.toIso8601String()).toList(),
      'timeCur': instance.timeCur.map((e) => e.toIso8601String()).toList(),
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationEventChangeFormat
    _$$_DLSNotificationEventChangeFormatFromJson(Map<String, dynamic> json) =>
        _$_DLSNotificationEventChangeFormat(
          nObject: DLSNotificationEvent.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          formatPrev: $enumDecode(
              _$DLSNotificationEventFormatEnumMap, json['formatPrev']),
          formatCur: $enumDecode(
              _$DLSNotificationEventFormatEnumMap, json['formatCur']),
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationEventChangeFormatToJson(
        _$_DLSNotificationEventChangeFormat instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'formatPrev': _$DLSNotificationEventFormatEnumMap[instance.formatPrev]!,
      'formatCur': _$DLSNotificationEventFormatEnumMap[instance.formatCur]!,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

const _$DLSNotificationEventFormatEnumMap = {
  DLSNotificationEventFormat.unknown: 'unknown',
  DLSNotificationEventFormat.online: 'online',
  DLSNotificationEventFormat.offline: 'offline',
};

_$_DLSNotificationEventChangePlace _$$_DLSNotificationEventChangePlaceFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationEventChangePlace(
      nObject: DLSNotificationEvent.fromJson(
          json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      placePrev: json['placePrev'] as String,
      placeCur: json['placeCur'] as String,
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationEventChangePlaceToJson(
        _$_DLSNotificationEventChangePlace instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'placePrev': instance.placePrev,
      'placeCur': instance.placeCur,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationEventAddFiles _$$_DLSNotificationEventAddFilesFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationEventAddFiles(
      nObject: DLSNotificationEvent.fromJson(
          json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      files: json['files'] as List<dynamic>,
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationEventAddFilesToJson(
        _$_DLSNotificationEventAddFiles instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'files': instance.files,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationEventRemoveFiles _$$_DLSNotificationEventRemoveFilesFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationEventRemoveFiles(
      nObject: DLSNotificationEvent.fromJson(
          json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      files: json['files'] as List<dynamic>,
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationEventRemoveFilesToJson(
        _$_DLSNotificationEventRemoveFiles instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'files': instance.files,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationEventRestrictAccess
    _$$_DLSNotificationEventRestrictAccessFromJson(Map<String, dynamic> json) =>
        _$_DLSNotificationEventRestrictAccess(
          nObject: DLSNotificationEvent.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationEventRestrictAccessToJson(
        _$_DLSNotificationEventRestrictAccess instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationEventExpandAccess
    _$$_DLSNotificationEventExpandAccessFromJson(Map<String, dynamic> json) =>
        _$_DLSNotificationEventExpandAccess(
          nObject: DLSNotificationEvent.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationEventExpandAccessToJson(
        _$_DLSNotificationEventExpandAccess instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationEventStart _$$_DLSNotificationEventStartFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationEventStart(
      nObject: DLSNotificationEvent.fromJson(
          json['nObject'] as Map<String, dynamic>),
      users: (json['users'] as List<dynamic>)
          .map((e) => DLSNotificationUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationEventStartToJson(
        _$_DLSNotificationEventStart instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'users': instance.users,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationEventEnd _$$_DLSNotificationEventEndFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationEventEnd(
      nObject: DLSNotificationEvent.fromJson(
          json['nObject'] as Map<String, dynamic>),
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationEventEndToJson(
        _$_DLSNotificationEventEnd instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationEventCallStart _$$_DLSNotificationEventCallStartFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationEventCallStart(
      nObject: DLSNotificationEvent.fromJson(
          json['nObject'] as Map<String, dynamic>),
      users: (json['users'] as List<dynamic>)
          .map((e) => DLSNotificationUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      startAt: DateTime.parse(json['startAt'] as String),
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationEventCallStartToJson(
        _$_DLSNotificationEventCallStart instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'users': instance.users,
      'startAt': instance.startAt.toIso8601String(),
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationEventCallEnd _$$_DLSNotificationEventCallEndFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationEventCallEnd(
      nObject: DLSNotificationEvent.fromJson(
          json['nObject'] as Map<String, dynamic>),
      users: (json['users'] as List<dynamic>)
          .map((e) => DLSNotificationUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      duration: json['duration'] as int,
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationEventCallEndToJson(
        _$_DLSNotificationEventCallEnd instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'users': instance.users,
      'duration': instance.duration,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationEventInformation _$$_DLSNotificationEventInformationFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationEventInformation(
      nObject: DLSNotificationEvent.fromJson(
          json['nObject'] as Map<String, dynamic>),
      information: json['information'] as String,
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationEventInformationToJson(
        _$_DLSNotificationEventInformation instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'information': instance.information,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationChatPrivateMessage
    _$$_DLSNotificationChatPrivateMessageFromJson(Map<String, dynamic> json) =>
        _$_DLSNotificationChatPrivateMessage(
          nObject: DLSNotificationChat.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          message: json['message'] as String,
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationChatPrivateMessageToJson(
        _$_DLSNotificationChatPrivateMessage instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'message': instance.message,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationChatGroupMessage _$$_DLSNotificationChatGroupMessageFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationChatGroupMessage(
      nObject:
          DLSNotificationChat.fromJson(json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      message: json['message'] as String,
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationChatGroupMessageToJson(
        _$_DLSNotificationChatGroupMessage instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'message': instance.message,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationChatCallStart _$$_DLSNotificationChatCallStartFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationChatCallStart(
      nObject:
          DLSNotificationChat.fromJson(json['nObject'] as Map<String, dynamic>),
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationChatCallStartToJson(
        _$_DLSNotificationChatCallStart instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationChatCallEnd _$$_DLSNotificationChatCallEndFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationChatCallEnd(
      nObject:
          DLSNotificationChat.fromJson(json['nObject'] as Map<String, dynamic>),
      duration: json['duration'] as int,
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationChatCallEndToJson(
        _$_DLSNotificationChatCallEnd instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'duration': instance.duration,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationChatReplyMessage _$$_DLSNotificationChatReplyMessageFromJson(
        Map<String, dynamic> json) =>
    _$_DLSNotificationChatReplyMessage(
      nObject:
          DLSNotificationChat.fromJson(json['nObject'] as Map<String, dynamic>),
      user: DLSNotificationUser.fromJson(json['user'] as Map<String, dynamic>),
      message: json['message'] as String,
      replyMessage: json['replyMessage'] as String,
      platform: $enumDecodeNullable(
          _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DLSNotificationChatReplyMessageToJson(
        _$_DLSNotificationChatReplyMessage instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'message': instance.message,
      'replyMessage': instance.replyMessage,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationChatAddYouToGroup
    _$$_DLSNotificationChatAddYouToGroupFromJson(Map<String, dynamic> json) =>
        _$_DLSNotificationChatAddYouToGroup(
          nObject: DLSNotificationChat.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          groupName: json['groupName'] as String,
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationChatAddYouToGroupToJson(
        _$_DLSNotificationChatAddYouToGroup instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'groupName': instance.groupName,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationChatAddGroupUsers
    _$$_DLSNotificationChatAddGroupUsersFromJson(Map<String, dynamic> json) =>
        _$_DLSNotificationChatAddGroupUsers(
          nObject: DLSNotificationChat.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          users: (json['users'] as List<dynamic>)
              .map((e) =>
                  DLSNotificationUser.fromJson(e as Map<String, dynamic>))
              .toList(),
          groupName: json['groupName'] as String,
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationChatAddGroupUsersToJson(
        _$_DLSNotificationChatAddGroupUsers instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'users': instance.users,
      'groupName': instance.groupName,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationChatRemoveGroupUsers
    _$$_DLSNotificationChatRemoveGroupUsersFromJson(
            Map<String, dynamic> json) =>
        _$_DLSNotificationChatRemoveGroupUsers(
          nObject: DLSNotificationChat.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          users: (json['users'] as List<dynamic>)
              .map((e) =>
                  DLSNotificationUser.fromJson(e as Map<String, dynamic>))
              .toList(),
          groupName: json['groupName'] as String,
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationChatRemoveGroupUsersToJson(
        _$_DLSNotificationChatRemoveGroupUsers instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'users': instance.users,
      'groupName': instance.groupName,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationChatAddEventComment
    _$$_DLSNotificationChatAddEventCommentFromJson(Map<String, dynamic> json) =>
        _$_DLSNotificationChatAddEventComment(
          nObject: DLSNotificationChat.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          event: DLSNotificationEvent.fromJson(
              json['event'] as Map<String, dynamic>),
          comment: json['comment'] as String,
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationChatAddEventCommentToJson(
        _$_DLSNotificationChatAddEventComment instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'event': instance.event,
      'comment': instance.comment,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationChatRemoveEventComment
    _$$_DLSNotificationChatRemoveEventCommentFromJson(
            Map<String, dynamic> json) =>
        _$_DLSNotificationChatRemoveEventComment(
          nObject: DLSNotificationChat.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          event: DLSNotificationEvent.fromJson(
              json['event'] as Map<String, dynamic>),
          comment: json['comment'] as String,
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationChatRemoveEventCommentToJson(
        _$_DLSNotificationChatRemoveEventComment instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'event': instance.event,
      'comment': instance.comment,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationChatAddTaskComments
    _$$_DLSNotificationChatAddTaskCommentsFromJson(Map<String, dynamic> json) =>
        _$_DLSNotificationChatAddTaskComments(
          nObject: DLSNotificationChat.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          task: DLSNotificationTask.fromJson(
              json['task'] as Map<String, dynamic>),
          comment: json['comment'] as String,
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationChatAddTaskCommentsToJson(
        _$_DLSNotificationChatAddTaskComments instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'task': instance.task,
      'comment': instance.comment,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationChatRemoveTaskComments
    _$$_DLSNotificationChatRemoveTaskCommentsFromJson(
            Map<String, dynamic> json) =>
        _$_DLSNotificationChatRemoveTaskComments(
          nObject: DLSNotificationChat.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          task: DLSNotificationTask.fromJson(
              json['task'] as Map<String, dynamic>),
          comment: json['comment'] as String,
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationChatRemoveTaskCommentsToJson(
        _$_DLSNotificationChatRemoveTaskComments instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'task': instance.task,
      'comment': instance.comment,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationChatChangeGroupName
    _$$_DLSNotificationChatChangeGroupNameFromJson(Map<String, dynamic> json) =>
        _$_DLSNotificationChatChangeGroupName(
          nObject: DLSNotificationChat.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          namePrev: json['namePrev'] as String,
          nameCur: json['nameCur'] as String,
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationChatChangeGroupNameToJson(
        _$_DLSNotificationChatChangeGroupName instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'namePrev': instance.namePrev,
      'nameCur': instance.nameCur,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };

_$_DLSNotificationChatChangeGroupAvatar
    _$$_DLSNotificationChatChangeGroupAvatarFromJson(
            Map<String, dynamic> json) =>
        _$_DLSNotificationChatChangeGroupAvatar(
          nObject: DLSNotificationChat.fromJson(
              json['nObject'] as Map<String, dynamic>),
          user: DLSNotificationUser.fromJson(
              json['user'] as Map<String, dynamic>),
          avatarPrev: json['avatarPrev'] as String,
          avatarCur: json['avatarCur'] as String,
          platform: $enumDecodeNullable(
              _$DlsPlatformNotificationTypeEnumMap, json['platform_type']),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$_DLSNotificationChatChangeGroupAvatarToJson(
        _$_DLSNotificationChatChangeGroupAvatar instance) =>
    <String, dynamic>{
      'nObject': instance.nObject,
      'user': instance.user,
      'avatarPrev': instance.avatarPrev,
      'avatarCur': instance.avatarCur,
      'platform_type': _$DlsPlatformNotificationTypeEnumMap[instance.platform],
      'runtimeType': instance.$type,
    };
