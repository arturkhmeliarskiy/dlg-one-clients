// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_user_short.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DlsUserShort _$$_DlsUserShortFromJson(Map<String, dynamic> json) =>
    _$_DlsUserShort(
      id: json['id'] as int,
      name: json['name'] as String,
      nameSurname: json['name_surname'] as String,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$_DlsUserShortToJson(_$_DlsUserShort instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_surname': instance.nameSurname,
      'avatar': instance.avatar,
    };
