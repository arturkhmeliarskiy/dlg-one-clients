// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DLSContact _$$_DLSContactFromJson(Map<String, dynamic> json) =>
    _$_DLSContact(
      userId: json['user_id'] as int,
      cType: $enumDecodeNullable(_$ContactTypeEnumMap, json['type'],
          unknownValue: ContactType.unknown),
      contact: json['contact'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      id: json['id'] as int?,
      verifiedAt: json['verified_at'] as String?,
      validateText: json['validate_text'] as String?,
    );

Map<String, dynamic> _$$_DLSContactToJson(_$_DLSContact instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'type': _$ContactTypeEnumMap[instance.cType],
      'contact': instance.contact,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'id': instance.id,
      'verified_at': instance.verifiedAt,
      'validate_text': instance.validateText,
    };

const _$ContactTypeEnumMap = {
  ContactType.unknown: 'unknown',
  ContactType.email: '1',
  ContactType.phone: '2',
};
