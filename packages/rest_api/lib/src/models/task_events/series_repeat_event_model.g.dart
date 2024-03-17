// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_repeat_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SeriesRepeatEventModel _$$_SeriesRepeatEventModelFromJson(
        Map<String, dynamic> json) =>
    _$_SeriesRepeatEventModel(
      id: json['id'] as int,
      data: RepeatEventModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SeriesRepeatEventModelToJson(
        _$_SeriesRepeatEventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
    };
