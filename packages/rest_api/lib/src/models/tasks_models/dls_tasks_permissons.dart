import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dls_tasks_permissons.freezed.dart';
part 'dls_tasks_permissons.g.dart';

@freezed
class DlsTasksPermissions with _$DlsTasksPermissions {
  DlsTasksPermissions._();

  factory DlsTasksPermissions({
    @JsonKey(name: 'is_edit_task') bool? isEditTask,
    @JsonKey(name: 'is_change_status') bool? isChangeStatus,
    @JsonKey(name: 'is_change_priority') bool? isChangePriority,
    @JsonKey(name: 'is_change_expired_at') bool? isChangeExpiredAt,
  }) = _DlsTasksPermissions;

  factory DlsTasksPermissions.fromJson(Map<String, dynamic> json) =>
      _$DlsTasksPermissionsFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DlsTasksPermissions.fromStringJson(String string) =>
      DlsTasksPermissions.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
