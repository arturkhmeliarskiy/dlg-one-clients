// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomListPayload _$$_RoomListPayloadFromJson(Map<String, dynamic> json) =>
    _$_RoomListPayload(
      callsMeta: (json['rooms'] as List<dynamic>?)
          ?.map((e) => CallMeta.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$_RoomListPayloadToJson(_$_RoomListPayload instance) =>
    <String, dynamic>{
      'rooms': instance.callsMeta,
      'action': instance.$type,
    };

_$_HangUpPayload _$$_HangUpPayloadFromJson(Map<String, dynamic> json) =>
    _$_HangUpPayload(
      number: json['room'] as String,
      dlsId: json['user_id'] as int,
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$_HangUpPayloadToJson(_$_HangUpPayload instance) =>
    <String, dynamic>{
      'room': instance.number,
      'user_id': instance.dlsId,
      'action': instance.$type,
    };

_$_RejectPayload _$$_RejectPayloadFromJson(Map<String, dynamic> json) =>
    _$_RejectPayload(
      number: json['room'] as String,
      dlsId: json['user_id'] as int,
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$_RejectPayloadToJson(_$_RejectPayload instance) =>
    <String, dynamic>{
      'room': instance.number,
      'user_id': instance.dlsId,
      'action': instance.$type,
    };

_$_BusyPayload _$$_BusyPayloadFromJson(Map<String, dynamic> json) =>
    _$_BusyPayload(
      number: json['room'] as String,
      dlsId: json['user_id'] as int,
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$_BusyPayloadToJson(_$_BusyPayload instance) =>
    <String, dynamic>{
      'room': instance.number,
      'user_id': instance.dlsId,
      'action': instance.$type,
    };

_$_SpeakPayload _$$_SpeakPayloadFromJson(Map<String, dynamic> json) =>
    _$_SpeakPayload(
      callMeta: CallMeta.fromJson(json['room'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$_SpeakPayloadToJson(_$_SpeakPayload instance) =>
    <String, dynamic>{
      'room': instance.callMeta,
      'action': instance.$type,
    };
