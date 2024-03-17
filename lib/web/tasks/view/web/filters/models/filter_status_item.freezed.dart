// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_status_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StatusItem {
  String get title => throw _privateConstructorUsedError;
  Widget? get icon => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError;
  TaskStatusType? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatusItemCopyWith<StatusItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusItemCopyWith<$Res> {
  factory $StatusItemCopyWith(
          StatusItem value, $Res Function(StatusItem) then) =
      _$StatusItemCopyWithImpl<$Res, StatusItem>;
  @useResult
  $Res call({String title, Widget? icon, Color? color, TaskStatusType? status});
}

/// @nodoc
class _$StatusItemCopyWithImpl<$Res, $Val extends StatusItem>
    implements $StatusItemCopyWith<$Res> {
  _$StatusItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = freezed,
    Object? color = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatusType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatusItemCopyWith<$Res>
    implements $StatusItemCopyWith<$Res> {
  factory _$$_StatusItemCopyWith(
          _$_StatusItem value, $Res Function(_$_StatusItem) then) =
      __$$_StatusItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, Widget? icon, Color? color, TaskStatusType? status});
}

/// @nodoc
class __$$_StatusItemCopyWithImpl<$Res>
    extends _$StatusItemCopyWithImpl<$Res, _$_StatusItem>
    implements _$$_StatusItemCopyWith<$Res> {
  __$$_StatusItemCopyWithImpl(
      _$_StatusItem _value, $Res Function(_$_StatusItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = freezed,
    Object? color = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_StatusItem(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatusType?,
    ));
  }
}

/// @nodoc

class _$_StatusItem extends _StatusItem {
  _$_StatusItem({required this.title, this.icon, this.color, this.status})
      : super._();

  @override
  final String title;
  @override
  final Widget? icon;
  @override
  final Color? color;
  @override
  final TaskStatusType? status;

  @override
  String toString() {
    return 'StatusItem(title: $title, icon: $icon, color: $color, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusItem &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, icon, color, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusItemCopyWith<_$_StatusItem> get copyWith =>
      __$$_StatusItemCopyWithImpl<_$_StatusItem>(this, _$identity);
}

abstract class _StatusItem extends StatusItem {
  factory _StatusItem(
      {required final String title,
      final Widget? icon,
      final Color? color,
      final TaskStatusType? status}) = _$_StatusItem;
  _StatusItem._() : super._();

  @override
  String get title;
  @override
  Widget? get icon;
  @override
  Color? get color;
  @override
  TaskStatusType? get status;
  @override
  @JsonKey(ignore: true)
  _$$_StatusItemCopyWith<_$_StatusItem> get copyWith =>
      throw _privateConstructorUsedError;
}
