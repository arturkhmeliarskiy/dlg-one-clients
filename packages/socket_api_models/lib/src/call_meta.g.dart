// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CallMeta _$$_CallMetaFromJson(Map<String, dynamic> json) => _$_CallMeta(
      number: json['room'] as String,
      chatId: json['chat_id'] as String,
      uniqueId: json['uniqueid'] as String?,
      startAt: json['start_at'] == null
          ? null
          : DateTime.parse(json['start_at'] as String),
      callers: (json['callers'] as List<dynamic>)
          .map((e) => Caller.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CallMetaToJson(_$_CallMeta instance) =>
    <String, dynamic>{
      'room': instance.number,
      'chat_id': instance.chatId,
      'uniqueid': instance.uniqueId,
      'start_at': instance.startAt?.toIso8601String(),
      'callers': instance.callers,
    };
