// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_sprints_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetSprintsRequest _$$_GetSprintsRequestFromJson(Map<String, dynamic> json) =>
    _$_GetSprintsRequest(
      page: json['page'] as int?,
      view: $enumDecodeNullable(_$GetSprintsViewTypeEnumMap, json['view']),
      filterArchive: json['filter[archive]'] as int?,
    );

Map<String, dynamic> _$$_GetSprintsRequestToJson(
    _$_GetSprintsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('page', instance.page);
  writeNotNull('view', _$GetSprintsViewTypeEnumMap[instance.view]);
  writeNotNull('filter[archive]', instance.filterArchive);
  return val;
}

const _$GetSprintsViewTypeEnumMap = {
  GetSprintsViewType.withTasks: 'with-tasks',
};
