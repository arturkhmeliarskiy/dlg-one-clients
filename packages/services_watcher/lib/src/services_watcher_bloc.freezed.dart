// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'services_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServicesWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isSocketAlive, bool? isMatrixAlive,
            bool? isRestAlive, bool? isSipAlive, bool? isNetworkAlive)
        update,
    required TResult Function(bool isAlive) socket,
    required TResult Function(bool isAlive) matrix,
    required TResult Function(bool isAlive) rest,
    required TResult Function(bool isAlive) sip,
    required TResult Function(bool isAlive) network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isSocketAlive, bool? isMatrixAlive,
            bool? isRestAlive, bool? isSipAlive, bool? isNetworkAlive)?
        update,
    TResult? Function(bool isAlive)? socket,
    TResult? Function(bool isAlive)? matrix,
    TResult? Function(bool isAlive)? rest,
    TResult? Function(bool isAlive)? sip,
    TResult? Function(bool isAlive)? network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isSocketAlive, bool? isMatrixAlive,
            bool? isRestAlive, bool? isSipAlive, bool? isNetworkAlive)?
        update,
    TResult Function(bool isAlive)? socket,
    TResult Function(bool isAlive)? matrix,
    TResult Function(bool isAlive)? rest,
    TResult Function(bool isAlive)? sip,
    TResult Function(bool isAlive)? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_Socket value) socket,
    required TResult Function(_Matrix value) matrix,
    required TResult Function(_Rest value) rest,
    required TResult Function(_Sip value) sip,
    required TResult Function(_Network value) network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_Socket value)? socket,
    TResult? Function(_Matrix value)? matrix,
    TResult? Function(_Rest value)? rest,
    TResult? Function(_Sip value)? sip,
    TResult? Function(_Network value)? network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_Socket value)? socket,
    TResult Function(_Matrix value)? matrix,
    TResult Function(_Rest value)? rest,
    TResult Function(_Sip value)? sip,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesWatcherEventCopyWith<$Res> {
  factory $ServicesWatcherEventCopyWith(ServicesWatcherEvent value,
          $Res Function(ServicesWatcherEvent) then) =
      _$ServicesWatcherEventCopyWithImpl<$Res, ServicesWatcherEvent>;
}

/// @nodoc
class _$ServicesWatcherEventCopyWithImpl<$Res,
        $Val extends ServicesWatcherEvent>
    implements $ServicesWatcherEventCopyWith<$Res> {
  _$ServicesWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UpdateCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool? isSocketAlive,
      bool? isMatrixAlive,
      bool? isRestAlive,
      bool? isSipAlive,
      bool? isNetworkAlive});
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res>
    extends _$ServicesWatcherEventCopyWithImpl<$Res, _$_Update>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSocketAlive = freezed,
    Object? isMatrixAlive = freezed,
    Object? isRestAlive = freezed,
    Object? isSipAlive = freezed,
    Object? isNetworkAlive = freezed,
  }) {
    return _then(_$_Update(
      isSocketAlive: freezed == isSocketAlive
          ? _value.isSocketAlive
          : isSocketAlive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMatrixAlive: freezed == isMatrixAlive
          ? _value.isMatrixAlive
          : isMatrixAlive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRestAlive: freezed == isRestAlive
          ? _value.isRestAlive
          : isRestAlive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSipAlive: freezed == isSipAlive
          ? _value.isSipAlive
          : isSipAlive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isNetworkAlive: freezed == isNetworkAlive
          ? _value.isNetworkAlive
          : isNetworkAlive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update(
      {this.isSocketAlive,
      this.isMatrixAlive,
      this.isRestAlive,
      this.isSipAlive,
      this.isNetworkAlive});

  @override
  final bool? isSocketAlive;
  @override
  final bool? isMatrixAlive;
  @override
  final bool? isRestAlive;
  @override
  final bool? isSipAlive;
  @override
  final bool? isNetworkAlive;

  @override
  String toString() {
    return 'ServicesWatcherEvent.update(isSocketAlive: $isSocketAlive, isMatrixAlive: $isMatrixAlive, isRestAlive: $isRestAlive, isSipAlive: $isSipAlive, isNetworkAlive: $isNetworkAlive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Update &&
            (identical(other.isSocketAlive, isSocketAlive) ||
                other.isSocketAlive == isSocketAlive) &&
            (identical(other.isMatrixAlive, isMatrixAlive) ||
                other.isMatrixAlive == isMatrixAlive) &&
            (identical(other.isRestAlive, isRestAlive) ||
                other.isRestAlive == isRestAlive) &&
            (identical(other.isSipAlive, isSipAlive) ||
                other.isSipAlive == isSipAlive) &&
            (identical(other.isNetworkAlive, isNetworkAlive) ||
                other.isNetworkAlive == isNetworkAlive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSocketAlive, isMatrixAlive,
      isRestAlive, isSipAlive, isNetworkAlive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      __$$_UpdateCopyWithImpl<_$_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isSocketAlive, bool? isMatrixAlive,
            bool? isRestAlive, bool? isSipAlive, bool? isNetworkAlive)
        update,
    required TResult Function(bool isAlive) socket,
    required TResult Function(bool isAlive) matrix,
    required TResult Function(bool isAlive) rest,
    required TResult Function(bool isAlive) sip,
    required TResult Function(bool isAlive) network,
  }) {
    return update(
        isSocketAlive, isMatrixAlive, isRestAlive, isSipAlive, isNetworkAlive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isSocketAlive, bool? isMatrixAlive,
            bool? isRestAlive, bool? isSipAlive, bool? isNetworkAlive)?
        update,
    TResult? Function(bool isAlive)? socket,
    TResult? Function(bool isAlive)? matrix,
    TResult? Function(bool isAlive)? rest,
    TResult? Function(bool isAlive)? sip,
    TResult? Function(bool isAlive)? network,
  }) {
    return update?.call(
        isSocketAlive, isMatrixAlive, isRestAlive, isSipAlive, isNetworkAlive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isSocketAlive, bool? isMatrixAlive,
            bool? isRestAlive, bool? isSipAlive, bool? isNetworkAlive)?
        update,
    TResult Function(bool isAlive)? socket,
    TResult Function(bool isAlive)? matrix,
    TResult Function(bool isAlive)? rest,
    TResult Function(bool isAlive)? sip,
    TResult Function(bool isAlive)? network,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(isSocketAlive, isMatrixAlive, isRestAlive, isSipAlive,
          isNetworkAlive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_Socket value) socket,
    required TResult Function(_Matrix value) matrix,
    required TResult Function(_Rest value) rest,
    required TResult Function(_Sip value) sip,
    required TResult Function(_Network value) network,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_Socket value)? socket,
    TResult? Function(_Matrix value)? matrix,
    TResult? Function(_Rest value)? rest,
    TResult? Function(_Sip value)? sip,
    TResult? Function(_Network value)? network,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_Socket value)? socket,
    TResult Function(_Matrix value)? matrix,
    TResult Function(_Rest value)? rest,
    TResult Function(_Sip value)? sip,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements ServicesWatcherEvent {
  const factory _Update(
      {final bool? isSocketAlive,
      final bool? isMatrixAlive,
      final bool? isRestAlive,
      final bool? isSipAlive,
      final bool? isNetworkAlive}) = _$_Update;

  bool? get isSocketAlive;
  bool? get isMatrixAlive;
  bool? get isRestAlive;
  bool? get isSipAlive;
  bool? get isNetworkAlive;
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SocketCopyWith<$Res> {
  factory _$$_SocketCopyWith(_$_Socket value, $Res Function(_$_Socket) then) =
      __$$_SocketCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAlive});
}

/// @nodoc
class __$$_SocketCopyWithImpl<$Res>
    extends _$ServicesWatcherEventCopyWithImpl<$Res, _$_Socket>
    implements _$$_SocketCopyWith<$Res> {
  __$$_SocketCopyWithImpl(_$_Socket _value, $Res Function(_$_Socket) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAlive = null,
  }) {
    return _then(_$_Socket(
      null == isAlive
          ? _value.isAlive
          : isAlive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Socket implements _Socket {
  const _$_Socket(this.isAlive);

  @override
  final bool isAlive;

  @override
  String toString() {
    return 'ServicesWatcherEvent.socket(isAlive: $isAlive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Socket &&
            (identical(other.isAlive, isAlive) || other.isAlive == isAlive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAlive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SocketCopyWith<_$_Socket> get copyWith =>
      __$$_SocketCopyWithImpl<_$_Socket>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isSocketAlive, bool? isMatrixAlive,
            bool? isRestAlive, bool? isSipAlive, bool? isNetworkAlive)
        update,
    required TResult Function(bool isAlive) socket,
    required TResult Function(bool isAlive) matrix,
    required TResult Function(bool isAlive) rest,
    required TResult Function(bool isAlive) sip,
    required TResult Function(bool isAlive) network,
  }) {
    return socket(isAlive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isSocketAlive, bool? isMatrixAlive,
            bool? isRestAlive, bool? isSipAlive, bool? isNetworkAlive)?
        update,
    TResult? Function(bool isAlive)? socket,
    TResult? Function(bool isAlive)? matrix,
    TResult? Function(bool isAlive)? rest,
    TResult? Function(bool isAlive)? sip,
    TResult? Function(bool isAlive)? network,
  }) {
    return socket?.call(isAlive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isSocketAlive, bool? isMatrixAlive,
            bool? isRestAlive, bool? isSipAlive, bool? isNetworkAlive)?
        update,
    TResult Function(bool isAlive)? socket,
    TResult Function(bool isAlive)? matrix,
    TResult Function(bool isAlive)? rest,
    TResult Function(bool isAlive)? sip,
    TResult Function(bool isAlive)? network,
    required TResult orElse(),
  }) {
    if (socket != null) {
      return socket(isAlive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_Socket value) socket,
    required TResult Function(_Matrix value) matrix,
    required TResult Function(_Rest value) rest,
    required TResult Function(_Sip value) sip,
    required TResult Function(_Network value) network,
  }) {
    return socket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_Socket value)? socket,
    TResult? Function(_Matrix value)? matrix,
    TResult? Function(_Rest value)? rest,
    TResult? Function(_Sip value)? sip,
    TResult? Function(_Network value)? network,
  }) {
    return socket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_Socket value)? socket,
    TResult Function(_Matrix value)? matrix,
    TResult Function(_Rest value)? rest,
    TResult Function(_Sip value)? sip,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) {
    if (socket != null) {
      return socket(this);
    }
    return orElse();
  }
}

abstract class _Socket implements ServicesWatcherEvent {
  const factory _Socket(final bool isAlive) = _$_Socket;

  bool get isAlive;
  @JsonKey(ignore: true)
  _$$_SocketCopyWith<_$_Socket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MatrixCopyWith<$Res> {
  factory _$$_MatrixCopyWith(_$_Matrix value, $Res Function(_$_Matrix) then) =
      __$$_MatrixCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAlive});
}

/// @nodoc
class __$$_MatrixCopyWithImpl<$Res>
    extends _$ServicesWatcherEventCopyWithImpl<$Res, _$_Matrix>
    implements _$$_MatrixCopyWith<$Res> {
  __$$_MatrixCopyWithImpl(_$_Matrix _value, $Res Function(_$_Matrix) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAlive = null,
  }) {
    return _then(_$_Matrix(
      null == isAlive
          ? _value.isAlive
          : isAlive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Matrix implements _Matrix {
  const _$_Matrix(this.isAlive);

  @override
  final bool isAlive;

  @override
  String toString() {
    return 'ServicesWatcherEvent.matrix(isAlive: $isAlive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Matrix &&
            (identical(other.isAlive, isAlive) || other.isAlive == isAlive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAlive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatrixCopyWith<_$_Matrix> get copyWith =>
      __$$_MatrixCopyWithImpl<_$_Matrix>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isSocketAlive, bool? isMatrixAlive,
            bool? isRestAlive, bool? isSipAlive, bool? isNetworkAlive)
        update,
    required TResult Function(bool isAlive) socket,
    required TResult Function(bool isAlive) matrix,
    required TResult Function(bool isAlive) rest,
    required TResult Function(bool isAlive) sip,
    required TResult Function(bool isAlive) network,
  }) {
    return matrix(isAlive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isSocketAlive, bool? isMatrixAlive,
            bool? isRestAlive, bool? isSipAlive, bool? isNetworkAlive)?
        update,
    TResult? Function(bool isAlive)? socket,
    TResult? Function(bool isAlive)? matrix,
    TResult? Function(bool isAlive)? rest,
    TResult? Function(bool isAlive)? sip,
    TResult? Function(bool isAlive)? network,
  }) {
    return matrix?.call(isAlive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isSocketAlive, bool? isMatrixAlive,
            bool? isRestAlive, bool? isSipAlive, bool? isNetworkAlive)?
        update,
    TResult Function(bool isAlive)? socket,
    TResult Function(bool isAlive)? matrix,
    TResult Function(bool isAlive)? rest,
    TResult Function(bool isAlive)? sip,
    TResult Function(bool isAlive)? network,
    required TResult orElse(),
  }) {
    if (matrix != null) {
      return matrix(isAlive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_Socket value) socket,
    required TResult Function(_Matrix value) matrix,
    required TResult Function(_Rest value) rest,
    required TResult Function(_Sip value) sip,
    required TResult Function(_Network value) network,
  }) {
    return matrix(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_Socket value)? socket,
    TResult? Function(_Matrix value)? matrix,
    TResult? Function(_Rest value)? rest,
    TResult? Function(_Sip value)? sip,
    TResult? Function(_Network value)? network,
  }) {
    return matrix?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_Socket value)? socket,
    TResult Function(_Matrix value)? matrix,
    TResult Function(_Rest value)? rest,
    TResult Function(_Sip value)? sip,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) {
    if (matrix != null) {
      return matrix(this);
    }
    return orElse();
  }
}

abstract class _Matrix implements ServicesWatcherEvent {
  const factory _Matrix(final bool isAlive) = _$_Matrix;

  bool get isAlive;
  @JsonKey(ignore: true)
  _$$_MatrixCopyWith<_$_Matrix> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RestCopyWith<$Res> {
  factory _$$_RestCopyWith(_$_Rest value, $Res Function(_$_Rest) then) =
      __$$_RestCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAlive});
}

/// @nodoc
class __$$_RestCopyWithImpl<$Res>
    extends _$ServicesWatcherEventCopyWithImpl<$Res, _$_Rest>
    implements _$$_RestCopyWith<$Res> {
  __$$_RestCopyWithImpl(_$_Rest _value, $Res Function(_$_Rest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAlive = null,
  }) {
    return _then(_$_Rest(
      null == isAlive
          ? _value.isAlive
          : isAlive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Rest implements _Rest {
  const _$_Rest(this.isAlive);

  @override
  final bool isAlive;

  @override
  String toString() {
    return 'ServicesWatcherEvent.rest(isAlive: $isAlive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Rest &&
            (identical(other.isAlive, isAlive) || other.isAlive == isAlive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAlive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestCopyWith<_$_Rest> get copyWith =>
      __$$_RestCopyWithImpl<_$_Rest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isSocketAlive, bool? isMatrixAlive,
            bool? isRestAlive, bool? isSipAlive, bool? isNetworkAlive)
        update,
    required TResult Function(bool isAlive) socket,
    required TResult Function(bool isAlive) matrix,
    required TResult Function(bool isAlive) rest,
    required TResult Function(bool isAlive) sip,
    required TResult Function(bool isAlive) network,
  }) {
    return rest(isAlive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isSocketAlive, bool? isMatrixAlive,
            bool? isRestAlive, bool? isSipAlive, bool? isNetworkAlive)?
        update,
    TResult? Function(bool isAlive)? socket,
    TResult? Function(bool isAlive)? matrix,
    TResult? Function(bool isAlive)? rest,
    TResult? Function(bool isAlive)? sip,
    TResult? Function(bool isAlive)? network,
  }) {
    return rest?.call(isAlive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isSocketAlive, bool? isMatrixAlive,
            bool? isRestAlive, bool? isSipAlive, bool? isNetworkAlive)?
        update,
    TResult Function(bool isAlive)? socket,
    TResult Function(bool isAlive)? matrix,
    TResult Function(bool isAlive)? rest,
    TResult Function(bool isAlive)? sip,
    TResult Function(bool isAlive)? network,
    required TResult orElse(),
  }) {
    if (rest != null) {
      return rest(isAlive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_Socket value) socket,
    required TResult Function(_Matrix value) matrix,
    required TResult Function(_Rest value) rest,
    required TResult Function(_Sip value) sip,
    required TResult Function(_Network value) network,
  }) {
    return rest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_Socket value)? socket,
    TResult? Function(_Matrix value)? matrix,
    TResult? Function(_Rest value)? rest,
    TResult? Function(_Sip value)? sip,
    TResult? Function(_Network value)? network,
  }) {
    return rest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_Socket value)? socket,
    TResult Function(_Matrix value)? matrix,
    TResult Function(_Rest value)? rest,
    TResult Function(_Sip value)? sip,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) {
    if (rest != null) {
      return rest(this);
    }
    return orElse();
  }
}

abstract class _Rest implements ServicesWatcherEvent {
  const factory _Rest(final bool isAlive) = _$_Rest;

  bool get isAlive;
  @JsonKey(ignore: true)
  _$$_RestCopyWith<_$_Rest> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SipCopyWith<$Res> {
  factory _$$_SipCopyWith(_$_Sip value, $Res Function(_$_Sip) then) =
      __$$_SipCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAlive});
}

/// @nodoc
class __$$_SipCopyWithImpl<$Res>
    extends _$ServicesWatcherEventCopyWithImpl<$Res, _$_Sip>
    implements _$$_SipCopyWith<$Res> {
  __$$_SipCopyWithImpl(_$_Sip _value, $Res Function(_$_Sip) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAlive = null,
  }) {
    return _then(_$_Sip(
      null == isAlive
          ? _value.isAlive
          : isAlive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Sip implements _Sip {
  const _$_Sip(this.isAlive);

  @override
  final bool isAlive;

  @override
  String toString() {
    return 'ServicesWatcherEvent.sip(isAlive: $isAlive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sip &&
            (identical(other.isAlive, isAlive) || other.isAlive == isAlive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAlive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SipCopyWith<_$_Sip> get copyWith =>
      __$$_SipCopyWithImpl<_$_Sip>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isSocketAlive, bool? isMatrixAlive,
            bool? isRestAlive, bool? isSipAlive, bool? isNetworkAlive)
        update,
    required TResult Function(bool isAlive) socket,
    required TResult Function(bool isAlive) matrix,
    required TResult Function(bool isAlive) rest,
    required TResult Function(bool isAlive) sip,
    required TResult Function(bool isAlive) network,
  }) {
    return sip(isAlive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isSocketAlive, bool? isMatrixAlive,
            bool? isRestAlive, bool? isSipAlive, bool? isNetworkAlive)?
        update,
    TResult? Function(bool isAlive)? socket,
    TResult? Function(bool isAlive)? matrix,
    TResult? Function(bool isAlive)? rest,
    TResult? Function(bool isAlive)? sip,
    TResult? Function(bool isAlive)? network,
  }) {
    return sip?.call(isAlive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isSocketAlive, bool? isMatrixAlive,
            bool? isRestAlive, bool? isSipAlive, bool? isNetworkAlive)?
        update,
    TResult Function(bool isAlive)? socket,
    TResult Function(bool isAlive)? matrix,
    TResult Function(bool isAlive)? rest,
    TResult Function(bool isAlive)? sip,
    TResult Function(bool isAlive)? network,
    required TResult orElse(),
  }) {
    if (sip != null) {
      return sip(isAlive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_Socket value) socket,
    required TResult Function(_Matrix value) matrix,
    required TResult Function(_Rest value) rest,
    required TResult Function(_Sip value) sip,
    required TResult Function(_Network value) network,
  }) {
    return sip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_Socket value)? socket,
    TResult? Function(_Matrix value)? matrix,
    TResult? Function(_Rest value)? rest,
    TResult? Function(_Sip value)? sip,
    TResult? Function(_Network value)? network,
  }) {
    return sip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_Socket value)? socket,
    TResult Function(_Matrix value)? matrix,
    TResult Function(_Rest value)? rest,
    TResult Function(_Sip value)? sip,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) {
    if (sip != null) {
      return sip(this);
    }
    return orElse();
  }
}

abstract class _Sip implements ServicesWatcherEvent {
  const factory _Sip(final bool isAlive) = _$_Sip;

  bool get isAlive;
  @JsonKey(ignore: true)
  _$$_SipCopyWith<_$_Sip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NetworkCopyWith<$Res> {
  factory _$$_NetworkCopyWith(
          _$_Network value, $Res Function(_$_Network) then) =
      __$$_NetworkCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAlive});
}

/// @nodoc
class __$$_NetworkCopyWithImpl<$Res>
    extends _$ServicesWatcherEventCopyWithImpl<$Res, _$_Network>
    implements _$$_NetworkCopyWith<$Res> {
  __$$_NetworkCopyWithImpl(_$_Network _value, $Res Function(_$_Network) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAlive = null,
  }) {
    return _then(_$_Network(
      null == isAlive
          ? _value.isAlive
          : isAlive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Network implements _Network {
  const _$_Network(this.isAlive);

  @override
  final bool isAlive;

  @override
  String toString() {
    return 'ServicesWatcherEvent.network(isAlive: $isAlive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Network &&
            (identical(other.isAlive, isAlive) || other.isAlive == isAlive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAlive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NetworkCopyWith<_$_Network> get copyWith =>
      __$$_NetworkCopyWithImpl<_$_Network>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isSocketAlive, bool? isMatrixAlive,
            bool? isRestAlive, bool? isSipAlive, bool? isNetworkAlive)
        update,
    required TResult Function(bool isAlive) socket,
    required TResult Function(bool isAlive) matrix,
    required TResult Function(bool isAlive) rest,
    required TResult Function(bool isAlive) sip,
    required TResult Function(bool isAlive) network,
  }) {
    return network(isAlive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isSocketAlive, bool? isMatrixAlive,
            bool? isRestAlive, bool? isSipAlive, bool? isNetworkAlive)?
        update,
    TResult? Function(bool isAlive)? socket,
    TResult? Function(bool isAlive)? matrix,
    TResult? Function(bool isAlive)? rest,
    TResult? Function(bool isAlive)? sip,
    TResult? Function(bool isAlive)? network,
  }) {
    return network?.call(isAlive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isSocketAlive, bool? isMatrixAlive,
            bool? isRestAlive, bool? isSipAlive, bool? isNetworkAlive)?
        update,
    TResult Function(bool isAlive)? socket,
    TResult Function(bool isAlive)? matrix,
    TResult Function(bool isAlive)? rest,
    TResult Function(bool isAlive)? sip,
    TResult Function(bool isAlive)? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(isAlive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_Socket value) socket,
    required TResult Function(_Matrix value) matrix,
    required TResult Function(_Rest value) rest,
    required TResult Function(_Sip value) sip,
    required TResult Function(_Network value) network,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_Socket value)? socket,
    TResult? Function(_Matrix value)? matrix,
    TResult? Function(_Rest value)? rest,
    TResult? Function(_Sip value)? sip,
    TResult? Function(_Network value)? network,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_Socket value)? socket,
    TResult Function(_Matrix value)? matrix,
    TResult Function(_Rest value)? rest,
    TResult Function(_Sip value)? sip,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class _Network implements ServicesWatcherEvent {
  const factory _Network(final bool isAlive) = _$_Network;

  bool get isAlive;
  @JsonKey(ignore: true)
  _$$_NetworkCopyWith<_$_Network> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ServicesWatcherState {
  bool get isSocketAlive => throw _privateConstructorUsedError;
  bool get isMatrixAlive => throw _privateConstructorUsedError;
  bool get isRestAlive => throw _privateConstructorUsedError;
  bool get isSipAlive => throw _privateConstructorUsedError;
  bool get isNetworkAlive => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServicesWatcherStateCopyWith<ServicesWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesWatcherStateCopyWith<$Res> {
  factory $ServicesWatcherStateCopyWith(ServicesWatcherState value,
          $Res Function(ServicesWatcherState) then) =
      _$ServicesWatcherStateCopyWithImpl<$Res, ServicesWatcherState>;
  @useResult
  $Res call(
      {bool isSocketAlive,
      bool isMatrixAlive,
      bool isRestAlive,
      bool isSipAlive,
      bool isNetworkAlive});
}

/// @nodoc
class _$ServicesWatcherStateCopyWithImpl<$Res,
        $Val extends ServicesWatcherState>
    implements $ServicesWatcherStateCopyWith<$Res> {
  _$ServicesWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSocketAlive = null,
    Object? isMatrixAlive = null,
    Object? isRestAlive = null,
    Object? isSipAlive = null,
    Object? isNetworkAlive = null,
  }) {
    return _then(_value.copyWith(
      isSocketAlive: null == isSocketAlive
          ? _value.isSocketAlive
          : isSocketAlive // ignore: cast_nullable_to_non_nullable
              as bool,
      isMatrixAlive: null == isMatrixAlive
          ? _value.isMatrixAlive
          : isMatrixAlive // ignore: cast_nullable_to_non_nullable
              as bool,
      isRestAlive: null == isRestAlive
          ? _value.isRestAlive
          : isRestAlive // ignore: cast_nullable_to_non_nullable
              as bool,
      isSipAlive: null == isSipAlive
          ? _value.isSipAlive
          : isSipAlive // ignore: cast_nullable_to_non_nullable
              as bool,
      isNetworkAlive: null == isNetworkAlive
          ? _value.isNetworkAlive
          : isNetworkAlive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServicesWatcherStateCopyWith<$Res>
    implements $ServicesWatcherStateCopyWith<$Res> {
  factory _$$_ServicesWatcherStateCopyWith(_$_ServicesWatcherState value,
          $Res Function(_$_ServicesWatcherState) then) =
      __$$_ServicesWatcherStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSocketAlive,
      bool isMatrixAlive,
      bool isRestAlive,
      bool isSipAlive,
      bool isNetworkAlive});
}

/// @nodoc
class __$$_ServicesWatcherStateCopyWithImpl<$Res>
    extends _$ServicesWatcherStateCopyWithImpl<$Res, _$_ServicesWatcherState>
    implements _$$_ServicesWatcherStateCopyWith<$Res> {
  __$$_ServicesWatcherStateCopyWithImpl(_$_ServicesWatcherState _value,
      $Res Function(_$_ServicesWatcherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSocketAlive = null,
    Object? isMatrixAlive = null,
    Object? isRestAlive = null,
    Object? isSipAlive = null,
    Object? isNetworkAlive = null,
  }) {
    return _then(_$_ServicesWatcherState(
      isSocketAlive: null == isSocketAlive
          ? _value.isSocketAlive
          : isSocketAlive // ignore: cast_nullable_to_non_nullable
              as bool,
      isMatrixAlive: null == isMatrixAlive
          ? _value.isMatrixAlive
          : isMatrixAlive // ignore: cast_nullable_to_non_nullable
              as bool,
      isRestAlive: null == isRestAlive
          ? _value.isRestAlive
          : isRestAlive // ignore: cast_nullable_to_non_nullable
              as bool,
      isSipAlive: null == isSipAlive
          ? _value.isSipAlive
          : isSipAlive // ignore: cast_nullable_to_non_nullable
              as bool,
      isNetworkAlive: null == isNetworkAlive
          ? _value.isNetworkAlive
          : isNetworkAlive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ServicesWatcherState extends _ServicesWatcherState {
  const _$_ServicesWatcherState(
      {required this.isSocketAlive,
      required this.isMatrixAlive,
      required this.isRestAlive,
      required this.isSipAlive,
      required this.isNetworkAlive})
      : super._();

  @override
  final bool isSocketAlive;
  @override
  final bool isMatrixAlive;
  @override
  final bool isRestAlive;
  @override
  final bool isSipAlive;
  @override
  final bool isNetworkAlive;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServicesWatcherState &&
            (identical(other.isSocketAlive, isSocketAlive) ||
                other.isSocketAlive == isSocketAlive) &&
            (identical(other.isMatrixAlive, isMatrixAlive) ||
                other.isMatrixAlive == isMatrixAlive) &&
            (identical(other.isRestAlive, isRestAlive) ||
                other.isRestAlive == isRestAlive) &&
            (identical(other.isSipAlive, isSipAlive) ||
                other.isSipAlive == isSipAlive) &&
            (identical(other.isNetworkAlive, isNetworkAlive) ||
                other.isNetworkAlive == isNetworkAlive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSocketAlive, isMatrixAlive,
      isRestAlive, isSipAlive, isNetworkAlive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServicesWatcherStateCopyWith<_$_ServicesWatcherState> get copyWith =>
      __$$_ServicesWatcherStateCopyWithImpl<_$_ServicesWatcherState>(
          this, _$identity);
}

abstract class _ServicesWatcherState extends ServicesWatcherState {
  const factory _ServicesWatcherState(
      {required final bool isSocketAlive,
      required final bool isMatrixAlive,
      required final bool isRestAlive,
      required final bool isSipAlive,
      required final bool isNetworkAlive}) = _$_ServicesWatcherState;
  const _ServicesWatcherState._() : super._();

  @override
  bool get isSocketAlive;
  @override
  bool get isMatrixAlive;
  @override
  bool get isRestAlive;
  @override
  bool get isSipAlive;
  @override
  bool get isNetworkAlive;
  @override
  @JsonKey(ignore: true)
  _$$_ServicesWatcherStateCopyWith<_$_ServicesWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
