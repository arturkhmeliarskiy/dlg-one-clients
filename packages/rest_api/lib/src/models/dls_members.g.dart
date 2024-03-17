// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_members.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DlsMembers _$$_DlsMembersFromJson(Map<String, dynamic> json) =>
    _$_DlsMembers(
      executors:
          (json['executors'] as List<dynamic>?)?.map((e) => e as int).toList(),
      responsible: (json['responsible'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      observers:
          (json['observers'] as List<dynamic>?)?.map((e) => e as int).toList(),
      authors:
          (json['authors'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_DlsMembersToJson(_$_DlsMembers instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('executors', instance.executors);
  writeNotNull('responsible', instance.responsible);
  writeNotNull('observers', instance.observers);
  writeNotNull('authors', instance.authors);
  return val;
}
