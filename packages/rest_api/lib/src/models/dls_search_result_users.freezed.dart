// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_search_result_users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DLSSearchResultUsers {
  List<DLSUser> get data => throw _privateConstructorUsedError;
  int? get nextPage => throw _privateConstructorUsedError;
  int? get prevPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DLSSearchResultUsersCopyWith<DLSSearchResultUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DLSSearchResultUsersCopyWith<$Res> {
  factory $DLSSearchResultUsersCopyWith(DLSSearchResultUsers value,
          $Res Function(DLSSearchResultUsers) then) =
      _$DLSSearchResultUsersCopyWithImpl<$Res, DLSSearchResultUsers>;
  @useResult
  $Res call({List<DLSUser> data, int? nextPage, int? prevPage});
}

/// @nodoc
class _$DLSSearchResultUsersCopyWithImpl<$Res,
        $Val extends DLSSearchResultUsers>
    implements $DLSSearchResultUsersCopyWith<$Res> {
  _$DLSSearchResultUsersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? nextPage = freezed,
    Object? prevPage = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPage: freezed == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DLSSearchResultUsersCopyWith<$Res>
    implements $DLSSearchResultUsersCopyWith<$Res> {
  factory _$$_DLSSearchResultUsersCopyWith(_$_DLSSearchResultUsers value,
          $Res Function(_$_DLSSearchResultUsers) then) =
      __$$_DLSSearchResultUsersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DLSUser> data, int? nextPage, int? prevPage});
}

/// @nodoc
class __$$_DLSSearchResultUsersCopyWithImpl<$Res>
    extends _$DLSSearchResultUsersCopyWithImpl<$Res, _$_DLSSearchResultUsers>
    implements _$$_DLSSearchResultUsersCopyWith<$Res> {
  __$$_DLSSearchResultUsersCopyWithImpl(_$_DLSSearchResultUsers _value,
      $Res Function(_$_DLSSearchResultUsers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? nextPage = freezed,
    Object? prevPage = freezed,
  }) {
    return _then(_$_DLSSearchResultUsers(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPage: freezed == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_DLSSearchResultUsers implements _DLSSearchResultUsers {
  _$_DLSSearchResultUsers(
      {required final List<DLSUser> data, this.nextPage, this.prevPage})
      : _data = data;

  final List<DLSUser> _data;
  @override
  List<DLSUser> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int? nextPage;
  @override
  final int? prevPage;

  @override
  String toString() {
    return 'DLSSearchResultUsers(data: $data, nextPage: $nextPage, prevPage: $prevPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DLSSearchResultUsers &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.prevPage, prevPage) ||
                other.prevPage == prevPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), nextPage, prevPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DLSSearchResultUsersCopyWith<_$_DLSSearchResultUsers> get copyWith =>
      __$$_DLSSearchResultUsersCopyWithImpl<_$_DLSSearchResultUsers>(
          this, _$identity);
}

abstract class _DLSSearchResultUsers implements DLSSearchResultUsers {
  factory _DLSSearchResultUsers(
      {required final List<DLSUser> data,
      final int? nextPage,
      final int? prevPage}) = _$_DLSSearchResultUsers;

  @override
  List<DLSUser> get data;
  @override
  int? get nextPage;
  @override
  int? get prevPage;
  @override
  @JsonKey(ignore: true)
  _$$_DLSSearchResultUsersCopyWith<_$_DLSSearchResultUsers> get copyWith =>
      throw _privateConstructorUsedError;
}
