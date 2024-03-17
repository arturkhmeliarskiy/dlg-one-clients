// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatMessageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) openFile,
    required TResult Function(BuildContext context) deleteFile,
    required TResult Function() read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? openFile,
    TResult? Function(BuildContext context)? deleteFile,
    TResult? Function()? read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? openFile,
    TResult Function(BuildContext context)? deleteFile,
    TResult Function()? read,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenFileReadEvMtxEvent value) openFile,
    required TResult Function(_DeleteFileEvMtxEvent value) deleteFile,
    required TResult Function(_ReadEvMtxEvent value) read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OpenFileReadEvMtxEvent value)? openFile,
    TResult? Function(_DeleteFileEvMtxEvent value)? deleteFile,
    TResult? Function(_ReadEvMtxEvent value)? read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenFileReadEvMtxEvent value)? openFile,
    TResult Function(_DeleteFileEvMtxEvent value)? deleteFile,
    TResult Function(_ReadEvMtxEvent value)? read,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageEventCopyWith<$Res> {
  factory $ChatMessageEventCopyWith(
          ChatMessageEvent value, $Res Function(ChatMessageEvent) then) =
      _$ChatMessageEventCopyWithImpl<$Res, ChatMessageEvent>;
}

/// @nodoc
class _$ChatMessageEventCopyWithImpl<$Res, $Val extends ChatMessageEvent>
    implements $ChatMessageEventCopyWith<$Res> {
  _$ChatMessageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OpenFileReadEvMtxEventCopyWith<$Res> {
  factory _$$_OpenFileReadEvMtxEventCopyWith(_$_OpenFileReadEvMtxEvent value,
          $Res Function(_$_OpenFileReadEvMtxEvent) then) =
      __$$_OpenFileReadEvMtxEventCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_OpenFileReadEvMtxEventCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$_OpenFileReadEvMtxEvent>
    implements _$$_OpenFileReadEvMtxEventCopyWith<$Res> {
  __$$_OpenFileReadEvMtxEventCopyWithImpl(_$_OpenFileReadEvMtxEvent _value,
      $Res Function(_$_OpenFileReadEvMtxEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$_OpenFileReadEvMtxEvent(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_OpenFileReadEvMtxEvent extends _OpenFileReadEvMtxEvent
    with DiagnosticableTreeMixin {
  const _$_OpenFileReadEvMtxEvent(this.context) : super._();

  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatMessageEvent.openFile(context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatMessageEvent.openFile'))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenFileReadEvMtxEvent &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenFileReadEvMtxEventCopyWith<_$_OpenFileReadEvMtxEvent> get copyWith =>
      __$$_OpenFileReadEvMtxEventCopyWithImpl<_$_OpenFileReadEvMtxEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) openFile,
    required TResult Function(BuildContext context) deleteFile,
    required TResult Function() read,
  }) {
    return openFile(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? openFile,
    TResult? Function(BuildContext context)? deleteFile,
    TResult? Function()? read,
  }) {
    return openFile?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? openFile,
    TResult Function(BuildContext context)? deleteFile,
    TResult Function()? read,
    required TResult orElse(),
  }) {
    if (openFile != null) {
      return openFile(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenFileReadEvMtxEvent value) openFile,
    required TResult Function(_DeleteFileEvMtxEvent value) deleteFile,
    required TResult Function(_ReadEvMtxEvent value) read,
  }) {
    return openFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OpenFileReadEvMtxEvent value)? openFile,
    TResult? Function(_DeleteFileEvMtxEvent value)? deleteFile,
    TResult? Function(_ReadEvMtxEvent value)? read,
  }) {
    return openFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenFileReadEvMtxEvent value)? openFile,
    TResult Function(_DeleteFileEvMtxEvent value)? deleteFile,
    TResult Function(_ReadEvMtxEvent value)? read,
    required TResult orElse(),
  }) {
    if (openFile != null) {
      return openFile(this);
    }
    return orElse();
  }
}

abstract class _OpenFileReadEvMtxEvent extends ChatMessageEvent {
  const factory _OpenFileReadEvMtxEvent(final BuildContext context) =
      _$_OpenFileReadEvMtxEvent;
  const _OpenFileReadEvMtxEvent._() : super._();

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_OpenFileReadEvMtxEventCopyWith<_$_OpenFileReadEvMtxEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteFileEvMtxEventCopyWith<$Res> {
  factory _$$_DeleteFileEvMtxEventCopyWith(_$_DeleteFileEvMtxEvent value,
          $Res Function(_$_DeleteFileEvMtxEvent) then) =
      __$$_DeleteFileEvMtxEventCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_DeleteFileEvMtxEventCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$_DeleteFileEvMtxEvent>
    implements _$$_DeleteFileEvMtxEventCopyWith<$Res> {
  __$$_DeleteFileEvMtxEventCopyWithImpl(_$_DeleteFileEvMtxEvent _value,
      $Res Function(_$_DeleteFileEvMtxEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$_DeleteFileEvMtxEvent(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_DeleteFileEvMtxEvent extends _DeleteFileEvMtxEvent
    with DiagnosticableTreeMixin {
  const _$_DeleteFileEvMtxEvent({required this.context}) : super._();

  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatMessageEvent.deleteFile(context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatMessageEvent.deleteFile'))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteFileEvMtxEvent &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteFileEvMtxEventCopyWith<_$_DeleteFileEvMtxEvent> get copyWith =>
      __$$_DeleteFileEvMtxEventCopyWithImpl<_$_DeleteFileEvMtxEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) openFile,
    required TResult Function(BuildContext context) deleteFile,
    required TResult Function() read,
  }) {
    return deleteFile(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? openFile,
    TResult? Function(BuildContext context)? deleteFile,
    TResult? Function()? read,
  }) {
    return deleteFile?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? openFile,
    TResult Function(BuildContext context)? deleteFile,
    TResult Function()? read,
    required TResult orElse(),
  }) {
    if (deleteFile != null) {
      return deleteFile(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenFileReadEvMtxEvent value) openFile,
    required TResult Function(_DeleteFileEvMtxEvent value) deleteFile,
    required TResult Function(_ReadEvMtxEvent value) read,
  }) {
    return deleteFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OpenFileReadEvMtxEvent value)? openFile,
    TResult? Function(_DeleteFileEvMtxEvent value)? deleteFile,
    TResult? Function(_ReadEvMtxEvent value)? read,
  }) {
    return deleteFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenFileReadEvMtxEvent value)? openFile,
    TResult Function(_DeleteFileEvMtxEvent value)? deleteFile,
    TResult Function(_ReadEvMtxEvent value)? read,
    required TResult orElse(),
  }) {
    if (deleteFile != null) {
      return deleteFile(this);
    }
    return orElse();
  }
}

abstract class _DeleteFileEvMtxEvent extends ChatMessageEvent {
  const factory _DeleteFileEvMtxEvent({required final BuildContext context}) =
      _$_DeleteFileEvMtxEvent;
  const _DeleteFileEvMtxEvent._() : super._();

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_DeleteFileEvMtxEventCopyWith<_$_DeleteFileEvMtxEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReadEvMtxEventCopyWith<$Res> {
  factory _$$_ReadEvMtxEventCopyWith(
          _$_ReadEvMtxEvent value, $Res Function(_$_ReadEvMtxEvent) then) =
      __$$_ReadEvMtxEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReadEvMtxEventCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$_ReadEvMtxEvent>
    implements _$$_ReadEvMtxEventCopyWith<$Res> {
  __$$_ReadEvMtxEventCopyWithImpl(
      _$_ReadEvMtxEvent _value, $Res Function(_$_ReadEvMtxEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReadEvMtxEvent extends _ReadEvMtxEvent with DiagnosticableTreeMixin {
  const _$_ReadEvMtxEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatMessageEvent.read()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatMessageEvent.read'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReadEvMtxEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) openFile,
    required TResult Function(BuildContext context) deleteFile,
    required TResult Function() read,
  }) {
    return read();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? openFile,
    TResult? Function(BuildContext context)? deleteFile,
    TResult? Function()? read,
  }) {
    return read?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? openFile,
    TResult Function(BuildContext context)? deleteFile,
    TResult Function()? read,
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
    required TResult Function(_OpenFileReadEvMtxEvent value) openFile,
    required TResult Function(_DeleteFileEvMtxEvent value) deleteFile,
    required TResult Function(_ReadEvMtxEvent value) read,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OpenFileReadEvMtxEvent value)? openFile,
    TResult? Function(_DeleteFileEvMtxEvent value)? deleteFile,
    TResult? Function(_ReadEvMtxEvent value)? read,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenFileReadEvMtxEvent value)? openFile,
    TResult Function(_DeleteFileEvMtxEvent value)? deleteFile,
    TResult Function(_ReadEvMtxEvent value)? read,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class _ReadEvMtxEvent extends ChatMessageEvent {
  const factory _ReadEvMtxEvent() = _$_ReadEvMtxEvent;
  const _ReadEvMtxEvent._() : super._();
}

/// @nodoc
mixin _$ChatMessageState {
  DlsChatMessage get event => throw _privateConstructorUsedError;
  DLSUser? get user => throw _privateConstructorUsedError;
  String? get transaction => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DlsChatMessage event, DLSUser? user, String? transaction)
        data,
    required TResult Function(DlsChatMessage event, DLSUser? user,
            String message, String? transaction)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DlsChatMessage event, DLSUser? user, String? transaction)?
        data,
    TResult? Function(DlsChatMessage event, DLSUser? user, String message,
            String? transaction)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DlsChatMessage event, DLSUser? user, String? transaction)?
        data,
    TResult Function(DlsChatMessage event, DLSUser? user, String message,
            String? transaction)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataEvMtxState value) data,
    required TResult Function(_FailureEvMtxState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataEvMtxState value)? data,
    TResult? Function(_FailureEvMtxState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataEvMtxState value)? data,
    TResult Function(_FailureEvMtxState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatMessageStateCopyWith<ChatMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageStateCopyWith<$Res> {
  factory $ChatMessageStateCopyWith(
          ChatMessageState value, $Res Function(ChatMessageState) then) =
      _$ChatMessageStateCopyWithImpl<$Res, ChatMessageState>;
  @useResult
  $Res call({DlsChatMessage event, DLSUser? user, String? transaction});

  $DLSUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ChatMessageStateCopyWithImpl<$Res, $Val extends ChatMessageState>
    implements $ChatMessageStateCopyWith<$Res> {
  _$ChatMessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? user = freezed,
    Object? transaction = freezed,
  }) {
    return _then(_value.copyWith(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as DlsChatMessage,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DLSUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $DLSUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataEvMtxStateCopyWith<$Res>
    implements $ChatMessageStateCopyWith<$Res> {
  factory _$$_DataEvMtxStateCopyWith(
          _$_DataEvMtxState value, $Res Function(_$_DataEvMtxState) then) =
      __$$_DataEvMtxStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DlsChatMessage event, DLSUser? user, String? transaction});

  @override
  $DLSUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_DataEvMtxStateCopyWithImpl<$Res>
    extends _$ChatMessageStateCopyWithImpl<$Res, _$_DataEvMtxState>
    implements _$$_DataEvMtxStateCopyWith<$Res> {
  __$$_DataEvMtxStateCopyWithImpl(
      _$_DataEvMtxState _value, $Res Function(_$_DataEvMtxState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? user = freezed,
    Object? transaction = freezed,
  }) {
    return _then(_$_DataEvMtxState(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as DlsChatMessage,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DataEvMtxState extends _DataEvMtxState with DiagnosticableTreeMixin {
  const _$_DataEvMtxState(
      {required this.event, required this.user, this.transaction})
      : super._();

  @override
  final DlsChatMessage event;
  @override
  final DLSUser? user;
  @override
  final String? transaction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatMessageState.data(event: $event, user: $user, transaction: $transaction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatMessageState.data'))
      ..add(DiagnosticsProperty('event', event))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('transaction', transaction));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataEvMtxState &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event, user, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataEvMtxStateCopyWith<_$_DataEvMtxState> get copyWith =>
      __$$_DataEvMtxStateCopyWithImpl<_$_DataEvMtxState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DlsChatMessage event, DLSUser? user, String? transaction)
        data,
    required TResult Function(DlsChatMessage event, DLSUser? user,
            String message, String? transaction)
        failure,
  }) {
    return data(event, user, transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DlsChatMessage event, DLSUser? user, String? transaction)?
        data,
    TResult? Function(DlsChatMessage event, DLSUser? user, String message,
            String? transaction)?
        failure,
  }) {
    return data?.call(event, user, transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DlsChatMessage event, DLSUser? user, String? transaction)?
        data,
    TResult Function(DlsChatMessage event, DLSUser? user, String message,
            String? transaction)?
        failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(event, user, transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataEvMtxState value) data,
    required TResult Function(_FailureEvMtxState value) failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataEvMtxState value)? data,
    TResult? Function(_FailureEvMtxState value)? failure,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataEvMtxState value)? data,
    TResult Function(_FailureEvMtxState value)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataEvMtxState extends ChatMessageState {
  const factory _DataEvMtxState(
      {required final DlsChatMessage event,
      required final DLSUser? user,
      final String? transaction}) = _$_DataEvMtxState;
  const _DataEvMtxState._() : super._();

  @override
  DlsChatMessage get event;
  @override
  DLSUser? get user;
  @override
  String? get transaction;
  @override
  @JsonKey(ignore: true)
  _$$_DataEvMtxStateCopyWith<_$_DataEvMtxState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureEvMtxStateCopyWith<$Res>
    implements $ChatMessageStateCopyWith<$Res> {
  factory _$$_FailureEvMtxStateCopyWith(_$_FailureEvMtxState value,
          $Res Function(_$_FailureEvMtxState) then) =
      __$$_FailureEvMtxStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DlsChatMessage event,
      DLSUser? user,
      String message,
      String? transaction});

  @override
  $DLSUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_FailureEvMtxStateCopyWithImpl<$Res>
    extends _$ChatMessageStateCopyWithImpl<$Res, _$_FailureEvMtxState>
    implements _$$_FailureEvMtxStateCopyWith<$Res> {
  __$$_FailureEvMtxStateCopyWithImpl(
      _$_FailureEvMtxState _value, $Res Function(_$_FailureEvMtxState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? user = freezed,
    Object? message = null,
    Object? transaction = freezed,
  }) {
    return _then(_$_FailureEvMtxState(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as DlsChatMessage,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FailureEvMtxState extends _FailureEvMtxState
    with DiagnosticableTreeMixin {
  const _$_FailureEvMtxState(
      {required this.event,
      required this.user,
      required this.message,
      this.transaction})
      : super._();

  @override
  final DlsChatMessage event;
  @override
  final DLSUser? user;
  @override
  final String message;
  @override
  final String? transaction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatMessageState.failure(event: $event, user: $user, message: $message, transaction: $transaction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatMessageState.failure'))
      ..add(DiagnosticsProperty('event', event))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('transaction', transaction));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureEvMtxState &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, event, user, message, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureEvMtxStateCopyWith<_$_FailureEvMtxState> get copyWith =>
      __$$_FailureEvMtxStateCopyWithImpl<_$_FailureEvMtxState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DlsChatMessage event, DLSUser? user, String? transaction)
        data,
    required TResult Function(DlsChatMessage event, DLSUser? user,
            String message, String? transaction)
        failure,
  }) {
    return failure(event, user, message, transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DlsChatMessage event, DLSUser? user, String? transaction)?
        data,
    TResult? Function(DlsChatMessage event, DLSUser? user, String message,
            String? transaction)?
        failure,
  }) {
    return failure?.call(event, user, message, transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DlsChatMessage event, DLSUser? user, String? transaction)?
        data,
    TResult Function(DlsChatMessage event, DLSUser? user, String message,
            String? transaction)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(event, user, message, transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataEvMtxState value) data,
    required TResult Function(_FailureEvMtxState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataEvMtxState value)? data,
    TResult? Function(_FailureEvMtxState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataEvMtxState value)? data,
    TResult Function(_FailureEvMtxState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureEvMtxState extends ChatMessageState {
  const factory _FailureEvMtxState(
      {required final DlsChatMessage event,
      required final DLSUser? user,
      required final String message,
      final String? transaction}) = _$_FailureEvMtxState;
  const _FailureEvMtxState._() : super._();

  @override
  DlsChatMessage get event;
  @override
  DLSUser? get user;
  String get message;
  @override
  String? get transaction;
  @override
  @JsonKey(ignore: true)
  _$$_FailureEvMtxStateCopyWith<_$_FailureEvMtxState> get copyWith =>
      throw _privateConstructorUsedError;
}
