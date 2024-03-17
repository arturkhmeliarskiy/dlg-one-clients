// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'incoming_call_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IncomingCallEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? dlsId) getCaller,
    required TResult Function() accept,
    required TResult Function() reject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? dlsId)? getCaller,
    TResult? Function()? accept,
    TResult? Function()? reject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? dlsId)? getCaller,
    TResult Function()? accept,
    TResult Function()? reject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCallerCallEvent value) getCaller,
    required TResult Function(_AcceptIncomingCallEvent value) accept,
    required TResult Function(_RejectIncomingCallEvent value) reject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCallerCallEvent value)? getCaller,
    TResult? Function(_AcceptIncomingCallEvent value)? accept,
    TResult? Function(_RejectIncomingCallEvent value)? reject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCallerCallEvent value)? getCaller,
    TResult Function(_AcceptIncomingCallEvent value)? accept,
    TResult Function(_RejectIncomingCallEvent value)? reject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomingCallEventCopyWith<$Res> {
  factory $IncomingCallEventCopyWith(
          IncomingCallEvent value, $Res Function(IncomingCallEvent) then) =
      _$IncomingCallEventCopyWithImpl<$Res, IncomingCallEvent>;
}

/// @nodoc
class _$IncomingCallEventCopyWithImpl<$Res, $Val extends IncomingCallEvent>
    implements $IncomingCallEventCopyWith<$Res> {
  _$IncomingCallEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetCallerCallEventCopyWith<$Res> {
  factory _$$_GetCallerCallEventCopyWith(_$_GetCallerCallEvent value,
          $Res Function(_$_GetCallerCallEvent) then) =
      __$$_GetCallerCallEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int? dlsId});
}

/// @nodoc
class __$$_GetCallerCallEventCopyWithImpl<$Res>
    extends _$IncomingCallEventCopyWithImpl<$Res, _$_GetCallerCallEvent>
    implements _$$_GetCallerCallEventCopyWith<$Res> {
  __$$_GetCallerCallEventCopyWithImpl(
      _$_GetCallerCallEvent _value, $Res Function(_$_GetCallerCallEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dlsId = freezed,
  }) {
    return _then(_$_GetCallerCallEvent(
      freezed == dlsId
          ? _value.dlsId
          : dlsId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_GetCallerCallEvent extends _GetCallerCallEvent {
  const _$_GetCallerCallEvent(this.dlsId) : super._();

  @override
  final int? dlsId;

  @override
  String toString() {
    return 'IncomingCallEvent.getCaller(dlsId: $dlsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCallerCallEvent &&
            (identical(other.dlsId, dlsId) || other.dlsId == dlsId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dlsId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCallerCallEventCopyWith<_$_GetCallerCallEvent> get copyWith =>
      __$$_GetCallerCallEventCopyWithImpl<_$_GetCallerCallEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? dlsId) getCaller,
    required TResult Function() accept,
    required TResult Function() reject,
  }) {
    return getCaller(dlsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? dlsId)? getCaller,
    TResult? Function()? accept,
    TResult? Function()? reject,
  }) {
    return getCaller?.call(dlsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? dlsId)? getCaller,
    TResult Function()? accept,
    TResult Function()? reject,
    required TResult orElse(),
  }) {
    if (getCaller != null) {
      return getCaller(dlsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCallerCallEvent value) getCaller,
    required TResult Function(_AcceptIncomingCallEvent value) accept,
    required TResult Function(_RejectIncomingCallEvent value) reject,
  }) {
    return getCaller(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCallerCallEvent value)? getCaller,
    TResult? Function(_AcceptIncomingCallEvent value)? accept,
    TResult? Function(_RejectIncomingCallEvent value)? reject,
  }) {
    return getCaller?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCallerCallEvent value)? getCaller,
    TResult Function(_AcceptIncomingCallEvent value)? accept,
    TResult Function(_RejectIncomingCallEvent value)? reject,
    required TResult orElse(),
  }) {
    if (getCaller != null) {
      return getCaller(this);
    }
    return orElse();
  }
}

abstract class _GetCallerCallEvent extends IncomingCallEvent {
  const factory _GetCallerCallEvent(final int? dlsId) = _$_GetCallerCallEvent;
  const _GetCallerCallEvent._() : super._();

  int? get dlsId;
  @JsonKey(ignore: true)
  _$$_GetCallerCallEventCopyWith<_$_GetCallerCallEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AcceptIncomingCallEventCopyWith<$Res> {
  factory _$$_AcceptIncomingCallEventCopyWith(_$_AcceptIncomingCallEvent value,
          $Res Function(_$_AcceptIncomingCallEvent) then) =
      __$$_AcceptIncomingCallEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AcceptIncomingCallEventCopyWithImpl<$Res>
    extends _$IncomingCallEventCopyWithImpl<$Res, _$_AcceptIncomingCallEvent>
    implements _$$_AcceptIncomingCallEventCopyWith<$Res> {
  __$$_AcceptIncomingCallEventCopyWithImpl(_$_AcceptIncomingCallEvent _value,
      $Res Function(_$_AcceptIncomingCallEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AcceptIncomingCallEvent extends _AcceptIncomingCallEvent {
  const _$_AcceptIncomingCallEvent() : super._();

  @override
  String toString() {
    return 'IncomingCallEvent.accept()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AcceptIncomingCallEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? dlsId) getCaller,
    required TResult Function() accept,
    required TResult Function() reject,
  }) {
    return accept();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? dlsId)? getCaller,
    TResult? Function()? accept,
    TResult? Function()? reject,
  }) {
    return accept?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? dlsId)? getCaller,
    TResult Function()? accept,
    TResult Function()? reject,
    required TResult orElse(),
  }) {
    if (accept != null) {
      return accept();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCallerCallEvent value) getCaller,
    required TResult Function(_AcceptIncomingCallEvent value) accept,
    required TResult Function(_RejectIncomingCallEvent value) reject,
  }) {
    return accept(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCallerCallEvent value)? getCaller,
    TResult? Function(_AcceptIncomingCallEvent value)? accept,
    TResult? Function(_RejectIncomingCallEvent value)? reject,
  }) {
    return accept?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCallerCallEvent value)? getCaller,
    TResult Function(_AcceptIncomingCallEvent value)? accept,
    TResult Function(_RejectIncomingCallEvent value)? reject,
    required TResult orElse(),
  }) {
    if (accept != null) {
      return accept(this);
    }
    return orElse();
  }
}

abstract class _AcceptIncomingCallEvent extends IncomingCallEvent {
  const factory _AcceptIncomingCallEvent() = _$_AcceptIncomingCallEvent;
  const _AcceptIncomingCallEvent._() : super._();
}

/// @nodoc
abstract class _$$_RejectIncomingCallEventCopyWith<$Res> {
  factory _$$_RejectIncomingCallEventCopyWith(_$_RejectIncomingCallEvent value,
          $Res Function(_$_RejectIncomingCallEvent) then) =
      __$$_RejectIncomingCallEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RejectIncomingCallEventCopyWithImpl<$Res>
    extends _$IncomingCallEventCopyWithImpl<$Res, _$_RejectIncomingCallEvent>
    implements _$$_RejectIncomingCallEventCopyWith<$Res> {
  __$$_RejectIncomingCallEventCopyWithImpl(_$_RejectIncomingCallEvent _value,
      $Res Function(_$_RejectIncomingCallEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RejectIncomingCallEvent extends _RejectIncomingCallEvent {
  const _$_RejectIncomingCallEvent() : super._();

  @override
  String toString() {
    return 'IncomingCallEvent.reject()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RejectIncomingCallEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? dlsId) getCaller,
    required TResult Function() accept,
    required TResult Function() reject,
  }) {
    return reject();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? dlsId)? getCaller,
    TResult? Function()? accept,
    TResult? Function()? reject,
  }) {
    return reject?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? dlsId)? getCaller,
    TResult Function()? accept,
    TResult Function()? reject,
    required TResult orElse(),
  }) {
    if (reject != null) {
      return reject();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCallerCallEvent value) getCaller,
    required TResult Function(_AcceptIncomingCallEvent value) accept,
    required TResult Function(_RejectIncomingCallEvent value) reject,
  }) {
    return reject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCallerCallEvent value)? getCaller,
    TResult? Function(_AcceptIncomingCallEvent value)? accept,
    TResult? Function(_RejectIncomingCallEvent value)? reject,
  }) {
    return reject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCallerCallEvent value)? getCaller,
    TResult Function(_AcceptIncomingCallEvent value)? accept,
    TResult Function(_RejectIncomingCallEvent value)? reject,
    required TResult orElse(),
  }) {
    if (reject != null) {
      return reject(this);
    }
    return orElse();
  }
}

abstract class _RejectIncomingCallEvent extends IncomingCallEvent {
  const factory _RejectIncomingCallEvent() = _$_RejectIncomingCallEvent;
  const _RejectIncomingCallEvent._() : super._();
}

/// @nodoc
mixin _$IncomingCallState {
  ActiveCall get activeCall => throw _privateConstructorUsedError;
  String get transaction => throw _privateConstructorUsedError;
  DLSUser? get caller => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)
        initial,
    required TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)
        accepted,
    required TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)
        rejected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        initial,
    TResult? Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        accepted,
    TResult? Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        rejected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        initial,
    TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        accepted,
    TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        rejected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialIncomingCallState value) initial,
    required TResult Function(_AcceptedIncomingCallState value) accepted,
    required TResult Function(_RejectedIncomingCallState value) rejected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialIncomingCallState value)? initial,
    TResult? Function(_AcceptedIncomingCallState value)? accepted,
    TResult? Function(_RejectedIncomingCallState value)? rejected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialIncomingCallState value)? initial,
    TResult Function(_AcceptedIncomingCallState value)? accepted,
    TResult Function(_RejectedIncomingCallState value)? rejected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IncomingCallStateCopyWith<IncomingCallState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomingCallStateCopyWith<$Res> {
  factory $IncomingCallStateCopyWith(
          IncomingCallState value, $Res Function(IncomingCallState) then) =
      _$IncomingCallStateCopyWithImpl<$Res, IncomingCallState>;
  @useResult
  $Res call({ActiveCall activeCall, String transaction, DLSUser? caller});

  $ActiveCallCopyWith<$Res> get activeCall;
  $DLSUserCopyWith<$Res>? get caller;
}

/// @nodoc
class _$IncomingCallStateCopyWithImpl<$Res, $Val extends IncomingCallState>
    implements $IncomingCallStateCopyWith<$Res> {
  _$IncomingCallStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeCall = null,
    Object? transaction = null,
    Object? caller = freezed,
  }) {
    return _then(_value.copyWith(
      activeCall: null == activeCall
          ? _value.activeCall
          : activeCall // ignore: cast_nullable_to_non_nullable
              as ActiveCall,
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String,
      caller: freezed == caller
          ? _value.caller
          : caller // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActiveCallCopyWith<$Res> get activeCall {
    return $ActiveCallCopyWith<$Res>(_value.activeCall, (value) {
      return _then(_value.copyWith(activeCall: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DLSUserCopyWith<$Res>? get caller {
    if (_value.caller == null) {
      return null;
    }

    return $DLSUserCopyWith<$Res>(_value.caller!, (value) {
      return _then(_value.copyWith(caller: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialIncomingCallStateCopyWith<$Res>
    implements $IncomingCallStateCopyWith<$Res> {
  factory _$$_InitialIncomingCallStateCopyWith(
          _$_InitialIncomingCallState value,
          $Res Function(_$_InitialIncomingCallState) then) =
      __$$_InitialIncomingCallStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActiveCall activeCall, String transaction, DLSUser? caller});

  @override
  $ActiveCallCopyWith<$Res> get activeCall;
  @override
  $DLSUserCopyWith<$Res>? get caller;
}

/// @nodoc
class __$$_InitialIncomingCallStateCopyWithImpl<$Res>
    extends _$IncomingCallStateCopyWithImpl<$Res, _$_InitialIncomingCallState>
    implements _$$_InitialIncomingCallStateCopyWith<$Res> {
  __$$_InitialIncomingCallStateCopyWithImpl(_$_InitialIncomingCallState _value,
      $Res Function(_$_InitialIncomingCallState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeCall = null,
    Object? transaction = null,
    Object? caller = freezed,
  }) {
    return _then(_$_InitialIncomingCallState(
      null == activeCall
          ? _value.activeCall
          : activeCall // ignore: cast_nullable_to_non_nullable
              as ActiveCall,
      null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String,
      caller: freezed == caller
          ? _value.caller
          : caller // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
    ));
  }
}

/// @nodoc

class _$_InitialIncomingCallState implements _InitialIncomingCallState {
  const _$_InitialIncomingCallState(this.activeCall, this.transaction,
      {this.caller});

  @override
  final ActiveCall activeCall;
  @override
  final String transaction;
  @override
  final DLSUser? caller;

  @override
  String toString() {
    return 'IncomingCallState.initial(activeCall: $activeCall, transaction: $transaction, caller: $caller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialIncomingCallState &&
            (identical(other.activeCall, activeCall) ||
                other.activeCall == activeCall) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            (identical(other.caller, caller) || other.caller == caller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeCall, transaction, caller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialIncomingCallStateCopyWith<_$_InitialIncomingCallState>
      get copyWith => __$$_InitialIncomingCallStateCopyWithImpl<
          _$_InitialIncomingCallState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)
        initial,
    required TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)
        accepted,
    required TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)
        rejected,
  }) {
    return initial(activeCall, transaction, caller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        initial,
    TResult? Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        accepted,
    TResult? Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        rejected,
  }) {
    return initial?.call(activeCall, transaction, caller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        initial,
    TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        accepted,
    TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        rejected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(activeCall, transaction, caller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialIncomingCallState value) initial,
    required TResult Function(_AcceptedIncomingCallState value) accepted,
    required TResult Function(_RejectedIncomingCallState value) rejected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialIncomingCallState value)? initial,
    TResult? Function(_AcceptedIncomingCallState value)? accepted,
    TResult? Function(_RejectedIncomingCallState value)? rejected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialIncomingCallState value)? initial,
    TResult Function(_AcceptedIncomingCallState value)? accepted,
    TResult Function(_RejectedIncomingCallState value)? rejected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialIncomingCallState implements IncomingCallState {
  const factory _InitialIncomingCallState(
      final ActiveCall activeCall, final String transaction,
      {final DLSUser? caller}) = _$_InitialIncomingCallState;

  @override
  ActiveCall get activeCall;
  @override
  String get transaction;
  @override
  DLSUser? get caller;
  @override
  @JsonKey(ignore: true)
  _$$_InitialIncomingCallStateCopyWith<_$_InitialIncomingCallState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AcceptedIncomingCallStateCopyWith<$Res>
    implements $IncomingCallStateCopyWith<$Res> {
  factory _$$_AcceptedIncomingCallStateCopyWith(
          _$_AcceptedIncomingCallState value,
          $Res Function(_$_AcceptedIncomingCallState) then) =
      __$$_AcceptedIncomingCallStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActiveCall activeCall, String transaction, DLSUser? caller});

  @override
  $ActiveCallCopyWith<$Res> get activeCall;
  @override
  $DLSUserCopyWith<$Res>? get caller;
}

/// @nodoc
class __$$_AcceptedIncomingCallStateCopyWithImpl<$Res>
    extends _$IncomingCallStateCopyWithImpl<$Res, _$_AcceptedIncomingCallState>
    implements _$$_AcceptedIncomingCallStateCopyWith<$Res> {
  __$$_AcceptedIncomingCallStateCopyWithImpl(
      _$_AcceptedIncomingCallState _value,
      $Res Function(_$_AcceptedIncomingCallState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeCall = null,
    Object? transaction = null,
    Object? caller = freezed,
  }) {
    return _then(_$_AcceptedIncomingCallState(
      null == activeCall
          ? _value.activeCall
          : activeCall // ignore: cast_nullable_to_non_nullable
              as ActiveCall,
      null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String,
      caller: freezed == caller
          ? _value.caller
          : caller // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
    ));
  }
}

/// @nodoc

class _$_AcceptedIncomingCallState implements _AcceptedIncomingCallState {
  const _$_AcceptedIncomingCallState(this.activeCall, this.transaction,
      {this.caller});

  @override
  final ActiveCall activeCall;
  @override
  final String transaction;
  @override
  final DLSUser? caller;

  @override
  String toString() {
    return 'IncomingCallState.accepted(activeCall: $activeCall, transaction: $transaction, caller: $caller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AcceptedIncomingCallState &&
            (identical(other.activeCall, activeCall) ||
                other.activeCall == activeCall) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            (identical(other.caller, caller) || other.caller == caller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeCall, transaction, caller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AcceptedIncomingCallStateCopyWith<_$_AcceptedIncomingCallState>
      get copyWith => __$$_AcceptedIncomingCallStateCopyWithImpl<
          _$_AcceptedIncomingCallState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)
        initial,
    required TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)
        accepted,
    required TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)
        rejected,
  }) {
    return accepted(activeCall, transaction, caller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        initial,
    TResult? Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        accepted,
    TResult? Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        rejected,
  }) {
    return accepted?.call(activeCall, transaction, caller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        initial,
    TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        accepted,
    TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        rejected,
    required TResult orElse(),
  }) {
    if (accepted != null) {
      return accepted(activeCall, transaction, caller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialIncomingCallState value) initial,
    required TResult Function(_AcceptedIncomingCallState value) accepted,
    required TResult Function(_RejectedIncomingCallState value) rejected,
  }) {
    return accepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialIncomingCallState value)? initial,
    TResult? Function(_AcceptedIncomingCallState value)? accepted,
    TResult? Function(_RejectedIncomingCallState value)? rejected,
  }) {
    return accepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialIncomingCallState value)? initial,
    TResult Function(_AcceptedIncomingCallState value)? accepted,
    TResult Function(_RejectedIncomingCallState value)? rejected,
    required TResult orElse(),
  }) {
    if (accepted != null) {
      return accepted(this);
    }
    return orElse();
  }
}

abstract class _AcceptedIncomingCallState implements IncomingCallState {
  const factory _AcceptedIncomingCallState(
      final ActiveCall activeCall, final String transaction,
      {final DLSUser? caller}) = _$_AcceptedIncomingCallState;

  @override
  ActiveCall get activeCall;
  @override
  String get transaction;
  @override
  DLSUser? get caller;
  @override
  @JsonKey(ignore: true)
  _$$_AcceptedIncomingCallStateCopyWith<_$_AcceptedIncomingCallState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RejectedIncomingCallStateCopyWith<$Res>
    implements $IncomingCallStateCopyWith<$Res> {
  factory _$$_RejectedIncomingCallStateCopyWith(
          _$_RejectedIncomingCallState value,
          $Res Function(_$_RejectedIncomingCallState) then) =
      __$$_RejectedIncomingCallStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActiveCall activeCall, String transaction, DLSUser? caller});

  @override
  $ActiveCallCopyWith<$Res> get activeCall;
  @override
  $DLSUserCopyWith<$Res>? get caller;
}

/// @nodoc
class __$$_RejectedIncomingCallStateCopyWithImpl<$Res>
    extends _$IncomingCallStateCopyWithImpl<$Res, _$_RejectedIncomingCallState>
    implements _$$_RejectedIncomingCallStateCopyWith<$Res> {
  __$$_RejectedIncomingCallStateCopyWithImpl(
      _$_RejectedIncomingCallState _value,
      $Res Function(_$_RejectedIncomingCallState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeCall = null,
    Object? transaction = null,
    Object? caller = freezed,
  }) {
    return _then(_$_RejectedIncomingCallState(
      null == activeCall
          ? _value.activeCall
          : activeCall // ignore: cast_nullable_to_non_nullable
              as ActiveCall,
      null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String,
      caller: freezed == caller
          ? _value.caller
          : caller // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
    ));
  }
}

/// @nodoc

class _$_RejectedIncomingCallState implements _RejectedIncomingCallState {
  const _$_RejectedIncomingCallState(this.activeCall, this.transaction,
      {this.caller});

  @override
  final ActiveCall activeCall;
  @override
  final String transaction;
  @override
  final DLSUser? caller;

  @override
  String toString() {
    return 'IncomingCallState.rejected(activeCall: $activeCall, transaction: $transaction, caller: $caller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RejectedIncomingCallState &&
            (identical(other.activeCall, activeCall) ||
                other.activeCall == activeCall) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            (identical(other.caller, caller) || other.caller == caller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeCall, transaction, caller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RejectedIncomingCallStateCopyWith<_$_RejectedIncomingCallState>
      get copyWith => __$$_RejectedIncomingCallStateCopyWithImpl<
          _$_RejectedIncomingCallState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)
        initial,
    required TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)
        accepted,
    required TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)
        rejected,
  }) {
    return rejected(activeCall, transaction, caller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        initial,
    TResult? Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        accepted,
    TResult? Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        rejected,
  }) {
    return rejected?.call(activeCall, transaction, caller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        initial,
    TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        accepted,
    TResult Function(
            ActiveCall activeCall, String transaction, DLSUser? caller)?
        rejected,
    required TResult orElse(),
  }) {
    if (rejected != null) {
      return rejected(activeCall, transaction, caller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialIncomingCallState value) initial,
    required TResult Function(_AcceptedIncomingCallState value) accepted,
    required TResult Function(_RejectedIncomingCallState value) rejected,
  }) {
    return rejected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialIncomingCallState value)? initial,
    TResult? Function(_AcceptedIncomingCallState value)? accepted,
    TResult? Function(_RejectedIncomingCallState value)? rejected,
  }) {
    return rejected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialIncomingCallState value)? initial,
    TResult Function(_AcceptedIncomingCallState value)? accepted,
    TResult Function(_RejectedIncomingCallState value)? rejected,
    required TResult orElse(),
  }) {
    if (rejected != null) {
      return rejected(this);
    }
    return orElse();
  }
}

abstract class _RejectedIncomingCallState implements IncomingCallState {
  const factory _RejectedIncomingCallState(
      final ActiveCall activeCall, final String transaction,
      {final DLSUser? caller}) = _$_RejectedIncomingCallState;

  @override
  ActiveCall get activeCall;
  @override
  String get transaction;
  @override
  DLSUser? get caller;
  @override
  @JsonKey(ignore: true)
  _$$_RejectedIncomingCallStateCopyWith<_$_RejectedIncomingCallState>
      get copyWith => throw _privateConstructorUsedError;
}
