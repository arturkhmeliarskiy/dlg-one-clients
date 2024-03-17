// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_task_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetTaskRequest _$$_GetTaskRequestFromJson(Map<String, dynamic> json) =>
    _$_GetTaskRequest(
      title: json['filter[title]'] as String?,
      parentId: json['parent_id'] as int?,
      type: json['filter[type]'] as int?,
      files: json['filter[has_files]'] as int?,
      deadline: json['filter[expired_between]'] as String?,
      storypoints: $enumDecodeNullable(
          _$DlsStorypointsEnumEnumMap, json['filter[story_points_between]']),
      roles: (json['filter[role]'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      status: (json['filter[status_id]'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      priority: (json['filter[priority]'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      performers: (json['filter[members][executors]'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      include: (json['include'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$DlsTaskIncludeTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$_GetTaskRequestToJson(_$_GetTaskRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('filter[title]', instance.title);
  writeNotNull('parent_id', instance.parentId);
  writeNotNull('filter[type]', instance.type);
  writeNotNull('filter[has_files]', instance.files);
  writeNotNull('filter[expired_between]', instance.deadline);
  writeNotNull('filter[story_points_between]',
      _$DlsStorypointsEnumEnumMap[instance.storypoints]);
  writeNotNull('filter[role]', GetTaskRequest.filterToJson(instance.roles));
  writeNotNull(
      'filter[status_id]', GetTaskRequest.filterToJson(instance.status));
  writeNotNull(
      'filter[priority]', GetTaskRequest.filterToJson(instance.priority));
  writeNotNull('filter[members][executors]',
      GetTaskRequest.filterToJson(instance.performers));
  writeNotNull('include', GetTaskRequest.includeToJson(instance.include));
  return val;
}

const _$DlsStorypointsEnumEnumMap = {
  DlsStorypointsEnum.unknown: 'unknown',
  DlsStorypointsEnum.zeroToThree: '0,3',
  DlsStorypointsEnum.threeToEight: '3,8',
  DlsStorypointsEnum.eightToTwentyOne: '8,21',
  DlsStorypointsEnum.twentyOneToFiftyFive: '21,55',
  DlsStorypointsEnum.fiftyFiveToOneHundredFortyFour: '55,144',
  DlsStorypointsEnum.moreOneHundredFortyFour: '144,1000000',
};

const _$DlsTaskIncludeTypeEnumMap = {
  DlsTaskIncludeType.parent: 'parent',
  DlsTaskIncludeType.subTasks: 'subTasks',
  DlsTaskIncludeType.files: 'files',
  DlsTaskIncludeType.sprints: 'sprints',
  DlsTaskIncludeType.checklist: 'checklist',
  DlsTaskIncludeType.events: 'events',
  DlsTaskIncludeType.tags: 'tags',
  DlsTaskIncludeType.template: 'template',
  DlsTaskIncludeType.user: 'user',
};
