// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomListCallAction _$$_RoomListCallActionFromJson(
        Map<String, dynamic> json) =>
    _$_RoomListCallAction(
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$_RoomListCallActionToJson(
        _$_RoomListCallAction instance) =>
    <String, dynamic>{
      'action': instance.$type,
    };

_$_HangupCallAction _$$_HangupCallActionFromJson(Map<String, dynamic> json) =>
    _$_HangupCallAction(
      number: json['room'] as String,
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$_HangupCallActionToJson(_$_HangupCallAction instance) =>
    <String, dynamic>{
      'room': instance.number,
      'action': instance.$type,
    };

_$_RejectCallAction _$$_RejectCallActionFromJson(Map<String, dynamic> json) =>
    _$_RejectCallAction(
      number: json['room'] as String,
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$_RejectCallActionToJson(_$_RejectCallAction instance) =>
    <String, dynamic>{
      'room': instance.number,
      'action': instance.$type,
    };

_$_BusyCallAction _$$_BusyCallActionFromJson(Map<String, dynamic> json) =>
    _$_BusyCallAction(
      number: json['room'] as String,
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$_BusyCallActionToJson(_$_BusyCallAction instance) =>
    <String, dynamic>{
      'room': instance.number,
      'action': instance.$type,
    };

_$_SpeakCallAction _$$_SpeakCallActionFromJson(Map<String, dynamic> json) =>
    _$_SpeakCallAction(
      speak: json['speak'] as bool,
      number: json['room'] as String,
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$_SpeakCallActionToJson(_$_SpeakCallAction instance) =>
    <String, dynamic>{
      'speak': instance.speak,
      'room': instance.number,
      'action': instance.$type,
    };
