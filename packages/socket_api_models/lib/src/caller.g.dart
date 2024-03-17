// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'caller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Caller _$$_CallerFromJson(Map<String, dynamic> json) => _$_Caller(
      num: json['num'] as String,
      dlsId: json['user_id'] as int,
      userFriendlyName: json['userFriendlyName'] as String?,
      label: json['label'] as String,
      speak: json['speak'] as bool?,
    );

Map<String, dynamic> _$$_CallerToJson(_$_Caller instance) => <String, dynamic>{
      'num': instance.num,
      'user_id': instance.dlsId,
      'userFriendlyName': instance.userFriendlyName,
      'label': instance.label,
      'speak': instance.speak,
    };
