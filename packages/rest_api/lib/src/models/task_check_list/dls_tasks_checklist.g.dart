// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_tasks_checklist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DlsTasksChecklist _$$_DlsTasksChecklistFromJson(Map<String, dynamic> json) =>
    _$_DlsTasksChecklist(
      id: json['id'] as int?,
      taskId: json['task_id'] as int?,
      isChecked: json['is_checked'] as bool? ?? false,
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$_DlsTasksChecklistToJson(
    _$_DlsTasksChecklist instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('task_id', instance.taskId);
  val['is_checked'] = instance.isChecked;
  val['name'] = instance.name;
  return val;
}
