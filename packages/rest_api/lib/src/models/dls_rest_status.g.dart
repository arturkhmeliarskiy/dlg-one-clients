// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_rest_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DLSRestStatus _$$_DLSRestStatusFromJson(Map<String, dynamic> json) =>
    _$_DLSRestStatus(
      error: $enumDecodeNullable(_$DLSRestErrorMaybeEnumMap, json['error']),
      status: $enumDecodeNullable(_$DLSRestStatusMaybeEnumMap, json['status']),
      success: json['sucess'] as bool?,
      successText: json['sucess_text'] as String?,
      data: json['data'] == null
          ? null
          : DLSRestStatusData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DLSRestStatusToJson(_$_DLSRestStatus instance) =>
    <String, dynamic>{
      'error': _$DLSRestErrorMaybeEnumMap[instance.error],
      'status': _$DLSRestStatusMaybeEnumMap[instance.status],
      'sucess': instance.success,
      'sucess_text': instance.successText,
      'data': instance.data,
    };

const _$DLSRestErrorMaybeEnumMap = {
  DLSRestErrorMaybe.login_error: 'login_error',
};

const _$DLSRestStatusMaybeEnumMap = {
  DLSRestStatusMaybe.success: 'success',
};
