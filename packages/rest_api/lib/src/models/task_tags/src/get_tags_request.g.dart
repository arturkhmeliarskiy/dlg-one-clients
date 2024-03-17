// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_tags_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetTagsRequest _$$_GetTagsRequestFromJson(Map<String, dynamic> json) =>
    _$_GetTagsRequest(
      title: json['filter[title]'] as String?,
      page: json['page'] as int?,
    );

Map<String, dynamic> _$$_GetTagsRequestToJson(_$_GetTagsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('filter[title]', instance.title);
  writeNotNull('page', instance.page);
  return val;
}
