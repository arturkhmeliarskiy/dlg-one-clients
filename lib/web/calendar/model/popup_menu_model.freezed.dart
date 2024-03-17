// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'popup_menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PopupMenuModel {
  DateTime get startDateTime => throw _privateConstructorUsedError;
  DateTime get endDateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PopupMenuModelCopyWith<PopupMenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopupMenuModelCopyWith<$Res> {
  factory $PopupMenuModelCopyWith(
          PopupMenuModel value, $Res Function(PopupMenuModel) then) =
      _$PopupMenuModelCopyWithImpl<$Res, PopupMenuModel>;
  @useResult
  $Res call({DateTime startDateTime, DateTime endDateTime});
}

/// @nodoc
class _$PopupMenuModelCopyWithImpl<$Res, $Val extends PopupMenuModel>
    implements $PopupMenuModelCopyWith<$Res> {
  _$PopupMenuModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDateTime = null,
    Object? endDateTime = null,
  }) {
    return _then(_value.copyWith(
      startDateTime: null == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateTime: null == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PopupMenuModelCopyWith<$Res>
    implements $PopupMenuModelCopyWith<$Res> {
  factory _$$_PopupMenuModelCopyWith(
          _$_PopupMenuModel value, $Res Function(_$_PopupMenuModel) then) =
      __$$_PopupMenuModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime startDateTime, DateTime endDateTime});
}

/// @nodoc
class __$$_PopupMenuModelCopyWithImpl<$Res>
    extends _$PopupMenuModelCopyWithImpl<$Res, _$_PopupMenuModel>
    implements _$$_PopupMenuModelCopyWith<$Res> {
  __$$_PopupMenuModelCopyWithImpl(
      _$_PopupMenuModel _value, $Res Function(_$_PopupMenuModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDateTime = null,
    Object? endDateTime = null,
  }) {
    return _then(_$_PopupMenuModel(
      startDateTime: null == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateTime: null == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_PopupMenuModel implements _PopupMenuModel {
  const _$_PopupMenuModel(
      {required this.startDateTime, required this.endDateTime});

  @override
  final DateTime startDateTime;
  @override
  final DateTime endDateTime;

  @override
  String toString() {
    return 'PopupMenuModel(startDateTime: $startDateTime, endDateTime: $endDateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PopupMenuModel &&
            (identical(other.startDateTime, startDateTime) ||
                other.startDateTime == startDateTime) &&
            (identical(other.endDateTime, endDateTime) ||
                other.endDateTime == endDateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDateTime, endDateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PopupMenuModelCopyWith<_$_PopupMenuModel> get copyWith =>
      __$$_PopupMenuModelCopyWithImpl<_$_PopupMenuModel>(this, _$identity);
}

abstract class _PopupMenuModel implements PopupMenuModel {
  const factory _PopupMenuModel(
      {required final DateTime startDateTime,
      required final DateTime endDateTime}) = _$_PopupMenuModel;

  @override
  DateTime get startDateTime;
  @override
  DateTime get endDateTime;
  @override
  @JsonKey(ignore: true)
  _$$_PopupMenuModelCopyWith<_$_PopupMenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}
