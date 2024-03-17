// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_tag_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateTagRequest _$$_CreateTagRequestFromJson(Map<String, dynamic> json) =>
    _$_CreateTagRequest(
      title: json['title'] as String,
      description: json['description'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$$_CreateTagRequestToJson(_$_CreateTagRequest instance) {
  final val = <String, dynamic>{
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('status', instance.status);
  return val;
}
