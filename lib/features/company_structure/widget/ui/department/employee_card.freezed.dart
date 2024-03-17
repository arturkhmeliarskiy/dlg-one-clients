// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employee_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmployeeCardMode {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function(bool isSelected) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? read,
    TResult? Function(bool isSelected)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function(bool isSelected)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadEmployeeCardMode value) read,
    required TResult Function(SelectEmployeeCardMode value) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadEmployeeCardMode value)? read,
    TResult? Function(SelectEmployeeCardMode value)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadEmployeeCardMode value)? read,
    TResult Function(SelectEmployeeCardMode value)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeCardModeCopyWith<$Res> {
  factory $EmployeeCardModeCopyWith(
          EmployeeCardMode value, $Res Function(EmployeeCardMode) then) =
      _$EmployeeCardModeCopyWithImpl<$Res, EmployeeCardMode>;
}

/// @nodoc
class _$EmployeeCardModeCopyWithImpl<$Res, $Val extends EmployeeCardMode>
    implements $EmployeeCardModeCopyWith<$Res> {
  _$EmployeeCardModeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ReadEmployeeCardModeCopyWith<$Res> {
  factory _$$ReadEmployeeCardModeCopyWith(_$ReadEmployeeCardMode value,
          $Res Function(_$ReadEmployeeCardMode) then) =
      __$$ReadEmployeeCardModeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReadEmployeeCardModeCopyWithImpl<$Res>
    extends _$EmployeeCardModeCopyWithImpl<$Res, _$ReadEmployeeCardMode>
    implements _$$ReadEmployeeCardModeCopyWith<$Res> {
  __$$ReadEmployeeCardModeCopyWithImpl(_$ReadEmployeeCardMode _value,
      $Res Function(_$ReadEmployeeCardMode) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReadEmployeeCardMode extends ReadEmployeeCardMode {
  const _$ReadEmployeeCardMode() : super._();

  @override
  String toString() {
    return 'EmployeeCardMode.read()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReadEmployeeCardMode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function(bool isSelected) select,
  }) {
    return read();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? read,
    TResult? Function(bool isSelected)? select,
  }) {
    return read?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function(bool isSelected)? select,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadEmployeeCardMode value) read,
    required TResult Function(SelectEmployeeCardMode value) select,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadEmployeeCardMode value)? read,
    TResult? Function(SelectEmployeeCardMode value)? select,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadEmployeeCardMode value)? read,
    TResult Function(SelectEmployeeCardMode value)? select,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class ReadEmployeeCardMode extends EmployeeCardMode {
  const factory ReadEmployeeCardMode() = _$ReadEmployeeCardMode;
  const ReadEmployeeCardMode._() : super._();
}

/// @nodoc
abstract class _$$SelectEmployeeCardModeCopyWith<$Res> {
  factory _$$SelectEmployeeCardModeCopyWith(_$SelectEmployeeCardMode value,
          $Res Function(_$SelectEmployeeCardMode) then) =
      __$$SelectEmployeeCardModeCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isSelected});
}

/// @nodoc
class __$$SelectEmployeeCardModeCopyWithImpl<$Res>
    extends _$EmployeeCardModeCopyWithImpl<$Res, _$SelectEmployeeCardMode>
    implements _$$SelectEmployeeCardModeCopyWith<$Res> {
  __$$SelectEmployeeCardModeCopyWithImpl(_$SelectEmployeeCardMode _value,
      $Res Function(_$SelectEmployeeCardMode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
  }) {
    return _then(_$SelectEmployeeCardMode(
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SelectEmployeeCardMode extends SelectEmployeeCardMode {
  const _$SelectEmployeeCardMode({required this.isSelected}) : super._();

  @override
  final bool isSelected;

  @override
  String toString() {
    return 'EmployeeCardMode.select(isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectEmployeeCardMode &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectEmployeeCardModeCopyWith<_$SelectEmployeeCardMode> get copyWith =>
      __$$SelectEmployeeCardModeCopyWithImpl<_$SelectEmployeeCardMode>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function(bool isSelected) select,
  }) {
    return select(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? read,
    TResult? Function(bool isSelected)? select,
  }) {
    return select?.call(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function(bool isSelected)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(isSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadEmployeeCardMode value) read,
    required TResult Function(SelectEmployeeCardMode value) select,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadEmployeeCardMode value)? read,
    TResult? Function(SelectEmployeeCardMode value)? select,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadEmployeeCardMode value)? read,
    TResult Function(SelectEmployeeCardMode value)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class SelectEmployeeCardMode extends EmployeeCardMode {
  const factory SelectEmployeeCardMode({required final bool isSelected}) =
      _$SelectEmployeeCardMode;
  const SelectEmployeeCardMode._() : super._();

  bool get isSelected;
  @JsonKey(ignore: true)
  _$$SelectEmployeeCardModeCopyWith<_$SelectEmployeeCardMode> get copyWith =>
      throw _privateConstructorUsedError;
}
