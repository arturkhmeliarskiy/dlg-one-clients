// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_priority_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PriorityItem {
  String get title => throw _privateConstructorUsedError;
  Widget? get icon => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError;
  TaskPriorityType? get priority => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PriorityItemCopyWith<PriorityItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriorityItemCopyWith<$Res> {
  factory $PriorityItemCopyWith(
          PriorityItem value, $Res Function(PriorityItem) then) =
      _$PriorityItemCopyWithImpl<$Res, PriorityItem>;
  @useResult
  $Res call(
      {String title, Widget? icon, Color? color, TaskPriorityType? priority});
}

/// @nodoc
class _$PriorityItemCopyWithImpl<$Res, $Val extends PriorityItem>
    implements $PriorityItemCopyWith<$Res> {
  _$PriorityItemCopyWithImpl(this._value, this._then);

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
    Object? priority = freezed,
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
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TaskPriorityType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriorityItemCopyWith<$Res>
    implements $PriorityItemCopyWith<$Res> {
  factory _$$_PriorityItemCopyWith(
          _$_PriorityItem value, $Res Function(_$_PriorityItem) then) =
      __$$_PriorityItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, Widget? icon, Color? color, TaskPriorityType? priority});
}

/// @nodoc
class __$$_PriorityItemCopyWithImpl<$Res>
    extends _$PriorityItemCopyWithImpl<$Res, _$_PriorityItem>
    implements _$$_PriorityItemCopyWith<$Res> {
  __$$_PriorityItemCopyWithImpl(
      _$_PriorityItem _value, $Res Function(_$_PriorityItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = freezed,
    Object? color = freezed,
    Object? priority = freezed,
  }) {
    return _then(_$_PriorityItem(
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
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TaskPriorityType?,
    ));
  }
}

/// @nodoc

class _$_PriorityItem extends _PriorityItem {
  _$_PriorityItem({required this.title, this.icon, this.color, this.priority})
      : super._();

  @override
  final String title;
  @override
  final Widget? icon;
  @override
  final Color? color;
  @override
  final TaskPriorityType? priority;

  @override
  String toString() {
    return 'PriorityItem(title: $title, icon: $icon, color: $color, priority: $priority)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriorityItem &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.priority, priority) ||
                other.priority == priority));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, icon, color, priority);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriorityItemCopyWith<_$_PriorityItem> get copyWith =>
      __$$_PriorityItemCopyWithImpl<_$_PriorityItem>(this, _$identity);
}

abstract class _PriorityItem extends PriorityItem {
  factory _PriorityItem(
      {required final String title,
      final Widget? icon,
      final Color? color,
      final TaskPriorityType? priority}) = _$_PriorityItem;
  _PriorityItem._() : super._();

  @override
  String get title;
  @override
  Widget? get icon;
  @override
  Color? get color;
  @override
  TaskPriorityType? get priority;
  @override
  @JsonKey(ignore: true)
  _$$_PriorityItemCopyWith<_$_PriorityItem> get copyWith =>
      throw _privateConstructorUsedError;
}
