// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_res_status_data_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DLSRestStatusDataError _$$_DLSRestStatusDataErrorFromJson(
        Map<String, dynamic> json) =>
    _$_DLSRestStatusDataError(
      emails:
          (json['email'] as List<dynamic>?)?.map((e) => e as String).toList(),
      numbers:
          (json['number'] as List<dynamic>?)?.map((e) => e as String).toList(),
      passwordOld: (json['password_old'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_DLSRestStatusDataErrorToJson(
        _$_DLSRestStatusDataError instance) =>
    <String, dynamic>{
      'email': instance.emails,
      'number': instance.numbers,
      'password_old': instance.passwordOld,
    };
