// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_type_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TypeItem {
  String get title => throw _privateConstructorUsedError;
  Widget? get icon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TypeItemCopyWith<TypeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeItemCopyWith<$Res> {
  factory $TypeItemCopyWith(TypeItem value, $Res Function(TypeItem) then) =
      _$TypeItemCopyWithImpl<$Res, TypeItem>;
  @useResult
  $Res call({String title, Widget? icon});
}

/// @nodoc
class _$TypeItemCopyWithImpl<$Res, $Val extends TypeItem>
    implements $TypeItemCopyWith<$Res> {
  _$TypeItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TypeItemCopyWith<$Res> implements $TypeItemCopyWith<$Res> {
  factory _$$_TypeItemCopyWith(
          _$_TypeItem value, $Res Function(_$_TypeItem) then) =
      __$$_TypeItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, Widget? icon});
}

/// @nodoc
class __$$_TypeItemCopyWithImpl<$Res>
    extends _$TypeItemCopyWithImpl<$Res, _$_TypeItem>
    implements _$$_TypeItemCopyWith<$Res> {
  __$$_TypeItemCopyWithImpl(
      _$_TypeItem _value, $Res Function(_$_TypeItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = freezed,
  }) {
    return _then(_$_TypeItem(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$_TypeItem extends _TypeItem {
  _$_TypeItem({required this.title, this.icon}) : super._();

  @override
  final String title;
  @override
  final Widget? icon;

  @override
  String toString() {
    return 'TypeItem(title: $title, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TypeItem &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypeItemCopyWith<_$_TypeItem> get copyWith =>
      __$$_TypeItemCopyWithImpl<_$_TypeItem>(this, _$identity);
}

abstract class _TypeItem extends TypeItem {
  factory _TypeItem({required final String title, final Widget? icon}) =
      _$_TypeItem;
  _TypeItem._() : super._();

  @override
  String get title;
  @override
  Widget? get icon;
  @override
  @JsonKey(ignore: true)
  _$$_TypeItemCopyWith<_$_TypeItem> get copyWith =>
      throw _privateConstructorUsedError;
}
