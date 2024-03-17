// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_rest_status_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DLSRestStatusData _$$_DLSRestStatusDataFromJson(Map<String, dynamic> json) =>
    _$_DLSRestStatusData(
      errors: json['errors'] == null
          ? null
          : DLSRestStatusDataError.fromJson(
              json['errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DLSRestStatusDataToJson(
        _$_DLSRestStatusData instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };
