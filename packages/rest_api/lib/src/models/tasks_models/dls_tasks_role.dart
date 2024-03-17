import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/src/models/enums/dls_task_roles_type.dart';

part 'dls_tasks_role.freezed.dart';
part 'dls_tasks_role.g.dart';

@freezed
class DlsTasksRole with _$DlsTasksRole {
  DlsTasksRole._();

  factory DlsTasksRole({
    @JsonKey(name: 'id', unknownEnumValue: TaskRolesType.unknown)
        TaskRolesType? role,
    @JsonKey(name: 'name') String? name,
  }) = _DlsTasksRole;

  factory DlsTasksRole.fromJson(Map<String, dynamic> json) =>
      _$DlsTasksRoleFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

  factory DlsTasksRole.fromStringJson(String string) =>
      DlsTasksRole.fromJson(jsonDecode(string) as Map<String, dynamic>);
}
