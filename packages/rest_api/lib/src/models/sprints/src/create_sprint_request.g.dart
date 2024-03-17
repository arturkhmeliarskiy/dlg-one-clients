// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_sprint_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateSprintRequest _$$_CreateSprintRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CreateSprintRequest(
      title: json['title'] as String,
      description: json['description'] as String?,
      startAt: DateTime.parse(json['start_at'] as String),
      expiredAt: json['expired_at'] == null
          ? null
          : DateTime.parse(json['expired_at'] as String),
      status: $enumDecode(_$SprintStatusEnumMap, json['status']),
      duration:
          $enumDecodeNullable(_$SprintDurationTypeEnumMap, json['duration']),
      tasks: (json['tasks'] as List<dynamic>?)?.map((e) => e as int).toList(),
      events: (json['events'] as List<dynamic>?)?.map((e) => e as int).toList(),
      performers: json['performers'] == null
          ? null
          : DlsMembers.fromJson(json['performers'] as Map<String, dynamic>),
      superTaskId: json['super_task_id'] as int?,
    );

Map<String, dynamic> _$$_CreateSprintRequestToJson(
    _$_CreateSprintRequest instance) {
  final val = <String, dynamic>{
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['start_at'] = instance.startAt.toIso8601String();
  writeNotNull('expired_at', instance.expiredAt?.toIso8601String());
  val['status'] = _$SprintStatusEnumMap[instance.status]!;
  writeNotNull('duration', _$SprintDurationTypeEnumMap[instance.duration]);
  writeNotNull('tasks', instance.tasks);
  writeNotNull('events', instance.events);
  writeNotNull('performers', instance.performers);
  writeNotNull('super_task_id', instance.superTaskId);
  return val;
}

const _$SprintStatusEnumMap = {
  SprintStatus.newSprint: 1,
  SprintStatus.inProgress: 2,
  SprintStatus.finished: 3,
};

const _$SprintDurationTypeEnumMap = {
  SprintDurationType.oneWeek: 1,
  SprintDurationType.twoWeeks: 2,
  SprintDurationType.fourWeeks: 3,
  SprintDurationType.custom: 4,
};
