// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_information_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserInformationEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? read,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadUserInformationEvent value) read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadUserInformationEvent value)? read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadUserInformationEvent value)? read,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserInformationEventCopyWith<UserInformationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInformationEventCopyWith<$Res> {
  factory $UserInformationEventCopyWith(UserInformationEvent value,
          $Res Function(UserInformationEvent) then) =
      _$UserInformationEventCopyWithImpl<$Res, UserInformationEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$UserInformationEventCopyWithImpl<$Res,
        $Val extends UserInformationEvent>
    implements $UserInformationEventCopyWith<$Res> {
  _$UserInformationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReadUserInformationEventCopyWith<$Res>
    implements $UserInformationEventCopyWith<$Res> {
  factory _$$_ReadUserInformationEventCopyWith(
          _$_ReadUserInformationEvent value,
          $Res Function(_$_ReadUserInformationEvent) then) =
      __$$_ReadUserInformationEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_ReadUserInformationEventCopyWithImpl<$Res>
    extends _$UserInformationEventCopyWithImpl<$Res,
        _$_ReadUserInformationEvent>
    implements _$$_ReadUserInformationEventCopyWith<$Res> {
  __$$_ReadUserInformationEventCopyWithImpl(_$_ReadUserInformationEvent _value,
      $Res Function(_$_ReadUserInformationEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_ReadUserInformationEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReadUserInformationEvent extends _ReadUserInformationEvent
    with DiagnosticableTreeMixin {
  const _$_ReadUserInformationEvent(this.id) : super._();

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserInformationEvent.read(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserInformationEvent.read'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadUserInformationEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadUserInformationEventCopyWith<_$_ReadUserInformationEvent>
      get copyWith => __$$_ReadUserInformationEventCopyWithImpl<
          _$_ReadUserInformationEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) read,
  }) {
    return read(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? read,
  }) {
    return read?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? read,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadUserInformationEvent value) read,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadUserInformationEvent value)? read,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadUserInformationEvent value)? read,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class _ReadUserInformationEvent extends UserInformationEvent {
  const factory _ReadUserInformationEvent(final String id) =
      _$_ReadUserInformationEvent;
  const _ReadUserInformationEvent._() : super._();

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_ReadUserInformationEventCopyWith<_$_ReadUserInformationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserInformationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(
            DLSUser user,
            Map<String, Event>? attachmentsImage,
            Map<String, Event>? attachmentsVideo,
            Map<String, Event>? attachmentsAudio,
            Map<String, Event>? attachmentsFile,
            Map<String, Event>? attachmentsLinks)
        loaded,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(
            DLSUser user,
            Map<String, Event>? attachmentsImage,
            Map<String, Event>? attachmentsVideo,
            Map<String, Event>? attachmentsAudio,
            Map<String, Event>? attachmentsFile,
            Map<String, Event>? attachmentsLinks)?
        loaded,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(
            DLSUser user,
            Map<String, Event>? attachmentsImage,
            Map<String, Event>? attachmentsVideo,
            Map<String, Event>? attachmentsAudio,
            Map<String, Event>? attachmentsFile,
            Map<String, Event>? attachmentsLinks)?
        loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserInformationState value) initial,
    required TResult Function(_LoadingUserInformationState value) loading,
    required TResult Function(_LoadedUserInformationState value) loaded,
    required TResult Function(_FailureUserInformationState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUserInformationState value)? initial,
    TResult? Function(_LoadingUserInformationState value)? loading,
    TResult? Function(_LoadedUserInformationState value)? loaded,
    TResult? Function(_FailureUserInformationState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserInformationState value)? initial,
    TResult Function(_LoadingUserInformationState value)? loading,
    TResult Function(_LoadedUserInformationState value)? loaded,
    TResult Function(_FailureUserInformationState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInformationStateCopyWith<$Res> {
  factory $UserInformationStateCopyWith(UserInformationState value,
          $Res Function(UserInformationState) then) =
      _$UserInformationStateCopyWithImpl<$Res, UserInformationState>;
}

/// @nodoc
class _$UserInformationStateCopyWithImpl<$Res,
        $Val extends UserInformationState>
    implements $UserInformationStateCopyWith<$Res> {
  _$UserInformationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialUserInformationStateCopyWith<$Res> {
  factory _$$_InitialUserInformationStateCopyWith(
          _$_InitialUserInformationState value,
          $Res Function(_$_InitialUserInformationState) then) =
      __$$_InitialUserInformationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialUserInformationStateCopyWithImpl<$Res>
    extends _$UserInformationStateCopyWithImpl<$Res,
        _$_InitialUserInformationState>
    implements _$$_InitialUserInformationStateCopyWith<$Res> {
  __$$_InitialUserInformationStateCopyWithImpl(
      _$_InitialUserInformationState _value,
      $Res Function(_$_InitialUserInformationState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialUserInformationState extends _InitialUserInformationState
    with DiagnosticableTreeMixin {
  const _$_InitialUserInformationState() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserInformationState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserInformationState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialUserInformationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(
            DLSUser user,
            Map<String, Event>? attachmentsImage,
            Map<String, Event>? attachmentsVideo,
            Map<String, Event>? attachmentsAudio,
            Map<String, Event>? attachmentsFile,
            Map<String, Event>? attachmentsLinks)
        loaded,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(
            DLSUser user,
            Map<String, Event>? attachmentsImage,
            Map<String, Event>? attachmentsVideo,
            Map<String, Event>? attachmentsAudio,
            Map<String, Event>? attachmentsFile,
            Map<String, Event>? attachmentsLinks)?
        loaded,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(
            DLSUser user,
            Map<String, Event>? attachmentsImage,
            Map<String, Event>? attachmentsVideo,
            Map<String, Event>? attachmentsAudio,
            Map<String, Event>? attachmentsFile,
            Map<String, Event>? attachmentsLinks)?
        loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserInformationState value) initial,
    required TResult Function(_LoadingUserInformationState value) loading,
    required TResult Function(_LoadedUserInformationState value) loaded,
    required TResult Function(_FailureUserInformationState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUserInformationState value)? initial,
    TResult? Function(_LoadingUserInformationState value)? loading,
    TResult? Function(_LoadedUserInformationState value)? loaded,
    TResult? Function(_FailureUserInformationState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserInformationState value)? initial,
    TResult Function(_LoadingUserInformationState value)? loading,
    TResult Function(_LoadedUserInformationState value)? loaded,
    TResult Function(_FailureUserInformationState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialUserInformationState extends UserInformationState {
  const factory _InitialUserInformationState() = _$_InitialUserInformationState;
  const _InitialUserInformationState._() : super._();
}

/// @nodoc
abstract class _$$_LoadingUserInformationStateCopyWith<$Res> {
  factory _$$_LoadingUserInformationStateCopyWith(
          _$_LoadingUserInformationState value,
          $Res Function(_$_LoadingUserInformationState) then) =
      __$$_LoadingUserInformationStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_LoadingUserInformationStateCopyWithImpl<$Res>
    extends _$UserInformationStateCopyWithImpl<$Res,
        _$_LoadingUserInformationState>
    implements _$$_LoadingUserInformationStateCopyWith<$Res> {
  __$$_LoadingUserInformationStateCopyWithImpl(
      _$_LoadingUserInformationState _value,
      $Res Function(_$_LoadingUserInformationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_LoadingUserInformationState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadingUserInformationState extends _LoadingUserInformationState
    with DiagnosticableTreeMixin {
  const _$_LoadingUserInformationState({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserInformationState.loading(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserInformationState.loading'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingUserInformationState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingUserInformationStateCopyWith<_$_LoadingUserInformationState>
      get copyWith => __$$_LoadingUserInformationStateCopyWithImpl<
          _$_LoadingUserInformationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(
            DLSUser user,
            Map<String, Event>? attachmentsImage,
            Map<String, Event>? attachmentsVideo,
            Map<String, Event>? attachmentsAudio,
            Map<String, Event>? attachmentsFile,
            Map<String, Event>? attachmentsLinks)
        loaded,
    required TResult Function(String message) failure,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(
            DLSUser user,
            Map<String, Event>? attachmentsImage,
            Map<String, Event>? attachmentsVideo,
            Map<String, Event>? attachmentsAudio,
            Map<String, Event>? attachmentsFile,
            Map<String, Event>? attachmentsLinks)?
        loaded,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(
            DLSUser user,
            Map<String, Event>? attachmentsImage,
            Map<String, Event>? attachmentsVideo,
            Map<String, Event>? attachmentsAudio,
            Map<String, Event>? attachmentsFile,
            Map<String, Event>? attachmentsLinks)?
        loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserInformationState value) initial,
    required TResult Function(_LoadingUserInformationState value) loading,
    required TResult Function(_LoadedUserInformationState value) loaded,
    required TResult Function(_FailureUserInformationState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUserInformationState value)? initial,
    TResult? Function(_LoadingUserInformationState value)? loading,
    TResult? Function(_LoadedUserInformationState value)? loaded,
    TResult? Function(_FailureUserInformationState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserInformationState value)? initial,
    TResult Function(_LoadingUserInformationState value)? loading,
    TResult Function(_LoadedUserInformationState value)? loaded,
    TResult Function(_FailureUserInformationState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingUserInformationState extends UserInformationState {
  const factory _LoadingUserInformationState({required final String message}) =
      _$_LoadingUserInformationState;
  const _LoadingUserInformationState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_LoadingUserInformationStateCopyWith<_$_LoadingUserInformationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedUserInformationStateCopyWith<$Res> {
  factory _$$_LoadedUserInformationStateCopyWith(
          _$_LoadedUserInformationState value,
          $Res Function(_$_LoadedUserInformationState) then) =
      __$$_LoadedUserInformationStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {DLSUser user,
      Map<String, Event>? attachmentsImage,
      Map<String, Event>? attachmentsVideo,
      Map<String, Event>? attachmentsAudio,
      Map<String, Event>? attachmentsFile,
      Map<String, Event>? attachmentsLinks});

  $DLSUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_LoadedUserInformationStateCopyWithImpl<$Res>
    extends _$UserInformationStateCopyWithImpl<$Res,
        _$_LoadedUserInformationState>
    implements _$$_LoadedUserInformationStateCopyWith<$Res> {
  __$$_LoadedUserInformationStateCopyWithImpl(
      _$_LoadedUserInformationState _value,
      $Res Function(_$_LoadedUserInformationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? attachmentsImage = freezed,
    Object? attachmentsVideo = freezed,
    Object? attachmentsAudio = freezed,
    Object? attachmentsFile = freezed,
    Object? attachmentsLinks = freezed,
  }) {
    return _then(_$_LoadedUserInformationState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DLSUser,
      attachmentsImage: freezed == attachmentsImage
          ? _value._attachmentsImage
          : attachmentsImage // ignore: cast_nullable_to_non_nullable
              as Map<String, Event>?,
      attachmentsVideo: freezed == attachmentsVideo
          ? _value._attachmentsVideo
          : attachmentsVideo // ignore: cast_nullable_to_non_nullable
              as Map<String, Event>?,
      attachmentsAudio: freezed == attachmentsAudio
          ? _value._attachmentsAudio
          : attachmentsAudio // ignore: cast_nullable_to_non_nullable
              as Map<String, Event>?,
      attachmentsFile: freezed == attachmentsFile
          ? _value._attachmentsFile
          : attachmentsFile // ignore: cast_nullable_to_non_nullable
              as Map<String, Event>?,
      attachmentsLinks: freezed == attachmentsLinks
          ? _value._attachmentsLinks
          : attachmentsLinks // ignore: cast_nullable_to_non_nullable
              as Map<String, Event>?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DLSUserCopyWith<$Res> get user {
    return $DLSUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_LoadedUserInformationState extends _LoadedUserInformationState
    with DiagnosticableTreeMixin {
  const _$_LoadedUserInformationState(
      {required this.user,
      final Map<String, Event>? attachmentsImage,
      final Map<String, Event>? attachmentsVideo,
      final Map<String, Event>? attachmentsAudio,
      final Map<String, Event>? attachmentsFile,
      final Map<String, Event>? attachmentsLinks})
      : _attachmentsImage = attachmentsImage,
        _attachmentsVideo = attachmentsVideo,
        _attachmentsAudio = attachmentsAudio,
        _attachmentsFile = attachmentsFile,
        _attachmentsLinks = attachmentsLinks,
        super._();

  @override
  final DLSUser user;
  final Map<String, Event>? _attachmentsImage;
  @override
  Map<String, Event>? get attachmentsImage {
    final value = _attachmentsImage;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, Event>? _attachmentsVideo;
  @override
  Map<String, Event>? get attachmentsVideo {
    final value = _attachmentsVideo;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, Event>? _attachmentsAudio;
  @override
  Map<String, Event>? get attachmentsAudio {
    final value = _attachmentsAudio;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, Event>? _attachmentsFile;
  @override
  Map<String, Event>? get attachmentsFile {
    final value = _attachmentsFile;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, Event>? _attachmentsLinks;
  @override
  Map<String, Event>? get attachmentsLinks {
    final value = _attachmentsLinks;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserInformationState.loaded(user: $user, attachmentsImage: $attachmentsImage, attachmentsVideo: $attachmentsVideo, attachmentsAudio: $attachmentsAudio, attachmentsFile: $attachmentsFile, attachmentsLinks: $attachmentsLinks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserInformationState.loaded'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('attachmentsImage', attachmentsImage))
      ..add(DiagnosticsProperty('attachmentsVideo', attachmentsVideo))
      ..add(DiagnosticsProperty('attachmentsAudio', attachmentsAudio))
      ..add(DiagnosticsProperty('attachmentsFile', attachmentsFile))
      ..add(DiagnosticsProperty('attachmentsLinks', attachmentsLinks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedUserInformationState &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._attachmentsImage, _attachmentsImage) &&
            const DeepCollectionEquality()
                .equals(other._attachmentsVideo, _attachmentsVideo) &&
            const DeepCollectionEquality()
                .equals(other._attachmentsAudio, _attachmentsAudio) &&
            const DeepCollectionEquality()
                .equals(other._attachmentsFile, _attachmentsFile) &&
            const DeepCollectionEquality()
                .equals(other._attachmentsLinks, _attachmentsLinks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      const DeepCollectionEquality().hash(_attachmentsImage),
      const DeepCollectionEquality().hash(_attachmentsVideo),
      const DeepCollectionEquality().hash(_attachmentsAudio),
      const DeepCollectionEquality().hash(_attachmentsFile),
      const DeepCollectionEquality().hash(_attachmentsLinks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedUserInformationStateCopyWith<_$_LoadedUserInformationState>
      get copyWith => __$$_LoadedUserInformationStateCopyWithImpl<
          _$_LoadedUserInformationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(
            DLSUser user,
            Map<String, Event>? attachmentsImage,
            Map<String, Event>? attachmentsVideo,
            Map<String, Event>? attachmentsAudio,
            Map<String, Event>? attachmentsFile,
            Map<String, Event>? attachmentsLinks)
        loaded,
    required TResult Function(String message) failure,
  }) {
    return loaded(user, attachmentsImage, attachmentsVideo, attachmentsAudio,
        attachmentsFile, attachmentsLinks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(
            DLSUser user,
            Map<String, Event>? attachmentsImage,
            Map<String, Event>? attachmentsVideo,
            Map<String, Event>? attachmentsAudio,
            Map<String, Event>? attachmentsFile,
            Map<String, Event>? attachmentsLinks)?
        loaded,
    TResult? Function(String message)? failure,
  }) {
    return loaded?.call(user, attachmentsImage, attachmentsVideo,
        attachmentsAudio, attachmentsFile, attachmentsLinks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(
            DLSUser user,
            Map<String, Event>? attachmentsImage,
            Map<String, Event>? attachmentsVideo,
            Map<String, Event>? attachmentsAudio,
            Map<String, Event>? attachmentsFile,
            Map<String, Event>? attachmentsLinks)?
        loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user, attachmentsImage, attachmentsVideo, attachmentsAudio,
          attachmentsFile, attachmentsLinks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserInformationState value) initial,
    required TResult Function(_LoadingUserInformationState value) loading,
    required TResult Function(_LoadedUserInformationState value) loaded,
    required TResult Function(_FailureUserInformationState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUserInformationState value)? initial,
    TResult? Function(_LoadingUserInformationState value)? loading,
    TResult? Function(_LoadedUserInformationState value)? loaded,
    TResult? Function(_FailureUserInformationState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserInformationState value)? initial,
    TResult Function(_LoadingUserInformationState value)? loading,
    TResult Function(_LoadedUserInformationState value)? loaded,
    TResult Function(_FailureUserInformationState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedUserInformationState extends UserInformationState {
  const factory _LoadedUserInformationState(
          {required final DLSUser user,
          final Map<String, Event>? attachmentsImage,
          final Map<String, Event>? attachmentsVideo,
          final Map<String, Event>? attachmentsAudio,
          final Map<String, Event>? attachmentsFile,
          final Map<String, Event>? attachmentsLinks}) =
      _$_LoadedUserInformationState;
  const _LoadedUserInformationState._() : super._();

  DLSUser get user;
  Map<String, Event>? get attachmentsImage;
  Map<String, Event>? get attachmentsVideo;
  Map<String, Event>? get attachmentsAudio;
  Map<String, Event>? get attachmentsFile;
  Map<String, Event>? get attachmentsLinks;
  @JsonKey(ignore: true)
  _$$_LoadedUserInformationStateCopyWith<_$_LoadedUserInformationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureUserInformationStateCopyWith<$Res> {
  factory _$$_FailureUserInformationStateCopyWith(
          _$_FailureUserInformationState value,
          $Res Function(_$_FailureUserInformationState) then) =
      __$$_FailureUserInformationStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_FailureUserInformationStateCopyWithImpl<$Res>
    extends _$UserInformationStateCopyWithImpl<$Res,
        _$_FailureUserInformationState>
    implements _$$_FailureUserInformationStateCopyWith<$Res> {
  __$$_FailureUserInformationStateCopyWithImpl(
      _$_FailureUserInformationState _value,
      $Res Function(_$_FailureUserInformationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_FailureUserInformationState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FailureUserInformationState extends _FailureUserInformationState
    with DiagnosticableTreeMixin {
  const _$_FailureUserInformationState({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserInformationState.failure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserInformationState.failure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureUserInformationState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureUserInformationStateCopyWith<_$_FailureUserInformationState>
      get copyWith => __$$_FailureUserInformationStateCopyWithImpl<
          _$_FailureUserInformationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(
            DLSUser user,
            Map<String, Event>? attachmentsImage,
            Map<String, Event>? attachmentsVideo,
            Map<String, Event>? attachmentsAudio,
            Map<String, Event>? attachmentsFile,
            Map<String, Event>? attachmentsLinks)
        loaded,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(
            DLSUser user,
            Map<String, Event>? attachmentsImage,
            Map<String, Event>? attachmentsVideo,
            Map<String, Event>? attachmentsAudio,
            Map<String, Event>? attachmentsFile,
            Map<String, Event>? attachmentsLinks)?
        loaded,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(
            DLSUser user,
            Map<String, Event>? attachmentsImage,
            Map<String, Event>? attachmentsVideo,
            Map<String, Event>? attachmentsAudio,
            Map<String, Event>? attachmentsFile,
            Map<String, Event>? attachmentsLinks)?
        loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserInformationState value) initial,
    required TResult Function(_LoadingUserInformationState value) loading,
    required TResult Function(_LoadedUserInformationState value) loaded,
    required TResult Function(_FailureUserInformationState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUserInformationState value)? initial,
    TResult? Function(_LoadingUserInformationState value)? loading,
    TResult? Function(_LoadedUserInformationState value)? loaded,
    TResult? Function(_FailureUserInformationState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserInformationState value)? initial,
    TResult Function(_LoadingUserInformationState value)? loading,
    TResult Function(_LoadedUserInformationState value)? loaded,
    TResult Function(_FailureUserInformationState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureUserInformationState extends UserInformationState {
  const factory _FailureUserInformationState({required final String message}) =
      _$_FailureUserInformationState;
  const _FailureUserInformationState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_FailureUserInformationStateCopyWith<_$_FailureUserInformationState>
      get copyWith => throw _privateConstructorUsedError;
}
