// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_contact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DLSContact _$DLSContactFromJson(Map<String, dynamic> json) {
  return _DLSContact.fromJson(json);
}

/// @nodoc
mixin _$DLSContact {
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type', unknownEnumValue: ContactType.unknown)
  ContactType? get cType => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact')
  String? get contact => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified_at')
  String? get verifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'validate_text')
  String? get validateText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DLSContactCopyWith<DLSContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DLSContactCopyWith<$Res> {
  factory $DLSContactCopyWith(
          DLSContact value, $Res Function(DLSContact) then) =
      _$DLSContactCopyWithImpl<$Res, DLSContact>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id')
          int userId,
      @JsonKey(name: 'type', unknownEnumValue: ContactType.unknown)
          ContactType? cType,
      @JsonKey(name: 'contact')
          String? contact,
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt,
      @JsonKey(name: 'id')
          int? id,
      @JsonKey(name: 'verified_at')
          String? verifiedAt,
      @JsonKey(name: 'validate_text')
          String? validateText});
}

/// @nodoc
class _$DLSContactCopyWithImpl<$Res, $Val extends DLSContact>
    implements $DLSContactCopyWith<$Res> {
  _$DLSContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? cType = freezed,
    Object? contact = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? id = freezed,
    Object? verifiedAt = freezed,
    Object? validateText = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      cType: freezed == cType
          ? _value.cType
          : cType // ignore: cast_nullable_to_non_nullable
              as ContactType?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      validateText: freezed == validateText
          ? _value.validateText
          : validateText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DLSContactCopyWith<$Res>
    implements $DLSContactCopyWith<$Res> {
  factory _$$_DLSContactCopyWith(
          _$_DLSContact value, $Res Function(_$_DLSContact) then) =
      __$$_DLSContactCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id')
          int userId,
      @JsonKey(name: 'type', unknownEnumValue: ContactType.unknown)
          ContactType? cType,
      @JsonKey(name: 'contact')
          String? contact,
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt,
      @JsonKey(name: 'id')
          int? id,
      @JsonKey(name: 'verified_at')
          String? verifiedAt,
      @JsonKey(name: 'validate_text')
          String? validateText});
}

/// @nodoc
class __$$_DLSContactCopyWithImpl<$Res>
    extends _$DLSContactCopyWithImpl<$Res, _$_DLSContact>
    implements _$$_DLSContactCopyWith<$Res> {
  __$$_DLSContactCopyWithImpl(
      _$_DLSContact _value, $Res Function(_$_DLSContact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? cType = freezed,
    Object? contact = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? id = freezed,
    Object? verifiedAt = freezed,
    Object? validateText = freezed,
  }) {
    return _then(_$_DLSContact(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      cType: freezed == cType
          ? _value.cType
          : cType // ignore: cast_nullable_to_non_nullable
              as ContactType?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      validateText: freezed == validateText
          ? _value.validateText
          : validateText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DLSContact extends _DLSContact {
  _$_DLSContact(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'type', unknownEnumValue: ContactType.unknown) this.cType,
      @JsonKey(name: 'contact') this.contact,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'verified_at') this.verifiedAt,
      @JsonKey(name: 'validate_text') this.validateText})
      : super._();

  factory _$_DLSContact.fromJson(Map<String, dynamic> json) =>
      _$$_DLSContactFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'type', unknownEnumValue: ContactType.unknown)
  final ContactType? cType;
  @override
  @JsonKey(name: 'contact')
  final String? contact;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'verified_at')
  final String? verifiedAt;
  @override
  @JsonKey(name: 'validate_text')
  final String? validateText;

  @override
  String toString() {
    return 'DLSContact(userId: $userId, cType: $cType, contact: $contact, createdAt: $createdAt, updatedAt: $updatedAt, id: $id, verifiedAt: $verifiedAt, validateText: $validateText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DLSContact &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.cType, cType) || other.cType == cType) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt) &&
            (identical(other.validateText, validateText) ||
                other.validateText == validateText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, cType, contact,
      createdAt, updatedAt, id, verifiedAt, validateText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DLSContactCopyWith<_$_DLSContact> get copyWith =>
      __$$_DLSContactCopyWithImpl<_$_DLSContact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DLSContactToJson(
      this,
    );
  }
}

abstract class _DLSContact extends DLSContact {
  factory _DLSContact(
      {@JsonKey(name: 'user_id')
          required final int userId,
      @JsonKey(name: 'type', unknownEnumValue: ContactType.unknown)
          final ContactType? cType,
      @JsonKey(name: 'contact')
          final String? contact,
      @JsonKey(name: 'created_at')
          final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          final DateTime? updatedAt,
      @JsonKey(name: 'id')
          final int? id,
      @JsonKey(name: 'verified_at')
          final String? verifiedAt,
      @JsonKey(name: 'validate_text')
          final String? validateText}) = _$_DLSContact;
  _DLSContact._() : super._();

  factory _DLSContact.fromJson(Map<String, dynamic> json) =
      _$_DLSContact.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'type', unknownEnumValue: ContactType.unknown)
  ContactType? get cType;
  @override
  @JsonKey(name: 'contact')
  String? get contact;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'verified_at')
  String? get verifiedAt;
  @override
  @JsonKey(name: 'validate_text')
  String? get validateText;
  @override
  @JsonKey(ignore: true)
  _$$_DLSContactCopyWith<_$_DLSContact> get copyWith =>
      throw _privateConstructorUsedError;
}
