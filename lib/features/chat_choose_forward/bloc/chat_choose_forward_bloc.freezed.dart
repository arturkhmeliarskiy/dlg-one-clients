// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_choose_forward_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatChooseForwardEvent {
  String get filter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String filter) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String filter)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String filter)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatChooseForwardEventSearch value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatChooseForwardEventSearch value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatChooseForwardEventSearch value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatChooseForwardEventCopyWith<ChatChooseForwardEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatChooseForwardEventCopyWith<$Res> {
  factory $ChatChooseForwardEventCopyWith(ChatChooseForwardEvent value,
          $Res Function(ChatChooseForwardEvent) then) =
      _$ChatChooseForwardEventCopyWithImpl<$Res, ChatChooseForwardEvent>;
  @useResult
  $Res call({String filter});
}

/// @nodoc
class _$ChatChooseForwardEventCopyWithImpl<$Res,
        $Val extends ChatChooseForwardEvent>
    implements $ChatChooseForwardEventCopyWith<$Res> {
  _$ChatChooseForwardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_value.copyWith(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatChooseForwardEventSearchCopyWith<$Res>
    implements $ChatChooseForwardEventCopyWith<$Res> {
  factory _$$_ChatChooseForwardEventSearchCopyWith(
          _$_ChatChooseForwardEventSearch value,
          $Res Function(_$_ChatChooseForwardEventSearch) then) =
      __$$_ChatChooseForwardEventSearchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filter});
}

/// @nodoc
class __$$_ChatChooseForwardEventSearchCopyWithImpl<$Res>
    extends _$ChatChooseForwardEventCopyWithImpl<$Res,
        _$_ChatChooseForwardEventSearch>
    implements _$$_ChatChooseForwardEventSearchCopyWith<$Res> {
  __$$_ChatChooseForwardEventSearchCopyWithImpl(
      _$_ChatChooseForwardEventSearch _value,
      $Res Function(_$_ChatChooseForwardEventSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$_ChatChooseForwardEventSearch(
      null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChatChooseForwardEventSearch implements _ChatChooseForwardEventSearch {
  const _$_ChatChooseForwardEventSearch(this.filter);

  @override
  final String filter;

  @override
  String toString() {
    return 'ChatChooseForwardEvent.search(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatChooseForwardEventSearch &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatChooseForwardEventSearchCopyWith<_$_ChatChooseForwardEventSearch>
      get copyWith => __$$_ChatChooseForwardEventSearchCopyWithImpl<
          _$_ChatChooseForwardEventSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String filter) search,
  }) {
    return search(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String filter)? search,
  }) {
    return search?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String filter)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatChooseForwardEventSearch value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatChooseForwardEventSearch value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatChooseForwardEventSearch value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _ChatChooseForwardEventSearch implements ChatChooseForwardEvent {
  const factory _ChatChooseForwardEventSearch(final String filter) =
      _$_ChatChooseForwardEventSearch;

  @override
  String get filter;
  @override
  @JsonKey(ignore: true)
  _$$_ChatChooseForwardEventSearchCopyWith<_$_ChatChooseForwardEventSearch>
      get copyWith => throw _privateConstructorUsedError;
}
