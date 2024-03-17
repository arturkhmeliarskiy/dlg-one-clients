// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_tasks_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DlsTasksUser _$DlsTasksUserFromJson(Map<String, dynamic> json) {
  return _DlsTasksUser.fromJson(json);
}

/// @nodoc
mixin _$DlsTasksUser {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_surname')
  String? get nameSurname => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DlsTasksUserCopyWith<DlsTasksUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DlsTasksUserCopyWith<$Res> {
  factory $DlsTasksUserCopyWith(
          DlsTasksUser value, $Res Function(DlsTasksUser) then) =
      _$DlsTasksUserCopyWithImpl<$Res, DlsTasksUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'name_surname') String? nameSurname,
      @JsonKey(name: 'avatar') String? avatar});
}

/// @nodoc
class _$DlsTasksUserCopyWithImpl<$Res, $Val extends DlsTasksUser>
    implements $DlsTasksUserCopyWith<$Res> {
  _$DlsTasksUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nameSurname = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameSurname: freezed == nameSurname
          ? _value.nameSurname
          : nameSurname // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DlsTasksUserCopyWith<$Res>
    implements $DlsTasksUserCopyWith<$Res> {
  factory _$$_DlsTasksUserCopyWith(
          _$_DlsTasksUser value, $Res Function(_$_DlsTasksUser) then) =
      __$$_DlsTasksUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'name_surname') String? nameSurname,
      @JsonKey(name: 'avatar') String? avatar});
}

/// @nodoc
class __$$_DlsTasksUserCopyWithImpl<$Res>
    extends _$DlsTasksUserCopyWithImpl<$Res, _$_DlsTasksUser>
    implements _$$_DlsTasksUserCopyWith<$Res> {
  __$$_DlsTasksUserCopyWithImpl(
      _$_DlsTasksUser _value, $Res Function(_$_DlsTasksUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nameSurname = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$_DlsTasksUser(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameSurname: freezed == nameSurname
          ? _value.nameSurname
          : nameSurname // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DlsTasksUser extends _DlsTasksUser {
  _$_DlsTasksUser(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'name_surname') this.nameSurname,
      @JsonKey(name: 'avatar') this.avatar})
      : super._();

  factory _$_DlsTasksUser.fromJson(Map<String, dynamic> json) =>
      _$$_DlsTasksUserFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'name_surname')
  final String? nameSurname;
  @override
  @JsonKey(name: 'avatar')
  final String? avatar;

  @override
  String toString() {
    return 'DlsTasksUser(id: $id, name: $name, nameSurname: $nameSurname, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DlsTasksUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameSurname, nameSurname) ||
                other.nameSurname == nameSurname) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, nameSurname, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DlsTasksUserCopyWith<_$_DlsTasksUser> get copyWith =>
      __$$_DlsTasksUserCopyWithImpl<_$_DlsTasksUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DlsTasksUserToJson(
      this,
    );
  }
}

abstract class _DlsTasksUser extends DlsTasksUser {
  factory _DlsTasksUser(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'name_surname') final String? nameSurname,
      @JsonKey(name: 'avatar') final String? avatar}) = _$_DlsTasksUser;
  _DlsTasksUser._() : super._();

  factory _DlsTasksUser.fromJson(Map<String, dynamic> json) =
      _$_DlsTasksUser.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'name_surname')
  String? get nameSurname;
  @override
  @JsonKey(name: 'avatar')
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$_DlsTasksUserCopyWith<_$_DlsTasksUser> get copyWith =>
      throw _privateConstructorUsedError;
}
