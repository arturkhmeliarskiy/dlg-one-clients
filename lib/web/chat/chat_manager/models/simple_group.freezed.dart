// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'simple_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SimpleGroup {
  String? get chatId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<DLSUser> get users => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimpleGroupCopyWith<SimpleGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleGroupCopyWith<$Res> {
  factory $SimpleGroupCopyWith(
          SimpleGroup value, $Res Function(SimpleGroup) then) =
      _$SimpleGroupCopyWithImpl<$Res, SimpleGroup>;
  @useResult
  $Res call({String? chatId, String name, List<DLSUser> users});
}

/// @nodoc
class _$SimpleGroupCopyWithImpl<$Res, $Val extends SimpleGroup>
    implements $SimpleGroupCopyWith<$Res> {
  _$SimpleGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = freezed,
    Object? name = null,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SimpleGroupCopyWith<$Res>
    implements $SimpleGroupCopyWith<$Res> {
  factory _$$_SimpleGroupCopyWith(
          _$_SimpleGroup value, $Res Function(_$_SimpleGroup) then) =
      __$$_SimpleGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? chatId, String name, List<DLSUser> users});
}

/// @nodoc
class __$$_SimpleGroupCopyWithImpl<$Res>
    extends _$SimpleGroupCopyWithImpl<$Res, _$_SimpleGroup>
    implements _$$_SimpleGroupCopyWith<$Res> {
  __$$_SimpleGroupCopyWithImpl(
      _$_SimpleGroup _value, $Res Function(_$_SimpleGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = freezed,
    Object? name = null,
    Object? users = null,
  }) {
    return _then(_$_SimpleGroup(
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
    ));
  }
}

/// @nodoc

class _$_SimpleGroup implements _SimpleGroup {
  _$_SimpleGroup(
      {this.chatId, required this.name, required final List<DLSUser> users})
      : _users = users;

  @override
  final String? chatId;
  @override
  final String name;
  final List<DLSUser> _users;
  @override
  List<DLSUser> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'SimpleGroup(chatId: $chatId, name: $name, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SimpleGroup &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, chatId, name, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SimpleGroupCopyWith<_$_SimpleGroup> get copyWith =>
      __$$_SimpleGroupCopyWithImpl<_$_SimpleGroup>(this, _$identity);
}

abstract class _SimpleGroup implements SimpleGroup {
  factory _SimpleGroup(
      {final String? chatId,
      required final String name,
      required final List<DLSUser> users}) = _$_SimpleGroup;

  @override
  String? get chatId;
  @override
  String get name;
  @override
  List<DLSUser> get users;
  @override
  @JsonKey(ignore: true)
  _$$_SimpleGroupCopyWith<_$_SimpleGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
