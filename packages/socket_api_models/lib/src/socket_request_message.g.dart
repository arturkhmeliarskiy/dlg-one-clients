// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_request_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CallSocketRequestMessage _$$_CallSocketRequestMessageFromJson(
        Map<String, dynamic> json) =>
    _$_CallSocketRequestMessage(
      CallAction.fromJson(json['callAction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CallSocketRequestMessageToJson(
        _$_CallSocketRequestMessage instance) =>
    <String, dynamic>{
      'callAction': instance.callAction,
    };
