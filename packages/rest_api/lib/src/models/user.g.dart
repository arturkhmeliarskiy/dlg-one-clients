// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DLSUser _$$_DLSUserFromJson(Map<String, dynamic> json) => _$_DLSUser(
      dlsId: json['id'] as int?,
      name: json['name'] as String?,
      nameSurname: json['name_surname'] as String?,
      firstName: json['first_name'] as String?,
      secondName: json['second_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      number: json['number'] as String?,
      department: json['department'] as String?,
      position: json['position'] as String?,
      snils: json['snils'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      matrixDevice: json['matrix_device'] as String?,
      matrixToken: json['matrix_token'] as String?,
      matrixPassword: json['matrix_password'] as String?,
      avatar: json['file_full'] as String?,
      avatarPathOnly: json['file'] as String?,
      sip: json['sip'] == null
          ? null
          : SipUser.fromJson(json['sip'] as Map<String, dynamic>),
      id: json['matrix_user'] as String?,
      matrixName: json['matrix_name'] as String?,
      currentlyActive: json['currentlyActive'] as bool?,
      lastActiveAgo: json['lastActiveAgo'] as int?,
      presence: json['presence'] as String?,
      statusMsg: json['statusMsg'] as String?,
      emails: (json['emails'] as List<dynamic>?)
          ?.map((e) => DLSContact.fromJson(e as Map<String, dynamic>))
          .toList(),
      phones: (json['phones'] as List<dynamic>?)
          ?.map((e) => DLSContact.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DLSUserToJson(_$_DLSUser instance) =>
    <String, dynamic>{
      'id': instance.dlsId,
      'name': instance.name,
      'name_surname': instance.nameSurname,
      'first_name': instance.firstName,
      'second_name': instance.secondName,
      'last_name': instance.lastName,
      'email': instance.email,
      'number': instance.number,
      'department': instance.department,
      'position': instance.position,
      'snils': instance.snils,
      'created_at': instance.createdAt?.toIso8601String(),
      'matrix_device': instance.matrixDevice,
      'matrix_token': instance.matrixToken,
      'matrix_password': instance.matrixPassword,
      'file_full': instance.avatar,
      'file': instance.avatarPathOnly,
      'sip': instance.sip,
      'matrix_user': instance.id,
      'matrix_name': instance.matrixName,
      'currentlyActive': instance.currentlyActive,
      'lastActiveAgo': instance.lastActiveAgo,
      'presence': instance.presence,
      'statusMsg': instance.statusMsg,
      'emails': instance.emails,
      'phones': instance.phones,
    };
