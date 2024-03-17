// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replies_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateRepliesEvent _$$_CreateRepliesEventFromJson(
        Map<String, dynamic> json) =>
    _$_CreateRepliesEvent(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_CreateRepliesEventToJson(
        _$_CreateRepliesEvent instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_ReadRepliesEvent _$$_ReadRepliesEventFromJson(Map<String, dynamic> json) =>
    _$_ReadRepliesEvent(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ReadRepliesEventToJson(_$_ReadRepliesEvent instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_UpdateRepliesEvent _$$_UpdateRepliesEventFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateRepliesEvent(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_UpdateRepliesEventToJson(
        _$_UpdateRepliesEvent instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_DeleteRepliesEvent _$$_DeleteRepliesEventFromJson(
        Map<String, dynamic> json) =>
    _$_DeleteRepliesEvent(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DeleteRepliesEventToJson(
        _$_DeleteRepliesEvent instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_InitialRepliesState _$$_InitialRepliesStateFromJson(
        Map<String, dynamic> json) =>
    _$_InitialRepliesState(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_InitialRepliesStateToJson(
        _$_InitialRepliesState instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_LoadingRepliesState _$$_LoadingRepliesStateFromJson(
        Map<String, dynamic> json) =>
    _$_LoadingRepliesState(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_LoadingRepliesStateToJson(
        _$_LoadingRepliesState instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_LoadedRepliesState _$$_LoadedRepliesStateFromJson(
        Map<String, dynamic> json) =>
    _$_LoadedRepliesState(
      events: (json['events'] as List<dynamic>)
          .map((e) => MatrixEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_LoadedRepliesStateToJson(
        _$_LoadedRepliesState instance) =>
    <String, dynamic>{
      'events': instance.events,
      'runtimeType': instance.$type,
    };

_$_FailureRepliesState _$$_FailureRepliesStateFromJson(
        Map<String, dynamic> json) =>
    _$_FailureRepliesState(
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_FailureRepliesStateToJson(
        _$_FailureRepliesState instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
