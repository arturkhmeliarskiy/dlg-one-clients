// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_profile_add_contact_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsProfileAddContactEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contact) backToInit,
    required TResult Function() requestCode,
    required TResult Function(Function? callbackUpdate) validateCode,
    required TResult Function(String? contact, String? code) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contact)? backToInit,
    TResult? Function()? requestCode,
    TResult? Function(Function? callbackUpdate)? validateCode,
    TResult? Function(String? contact, String? code)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contact)? backToInit,
    TResult Function()? requestCode,
    TResult Function(Function? callbackUpdate)? validateCode,
    TResult Function(String? contact, String? code)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BackToInitEvent value) backToInit,
    required TResult Function(_ReqCodeEvent value) requestCode,
    required TResult Function(_ValidateCodeEvent value) validateCode,
    required TResult Function(_UpdateEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BackToInitEvent value)? backToInit,
    TResult? Function(_ReqCodeEvent value)? requestCode,
    TResult? Function(_ValidateCodeEvent value)? validateCode,
    TResult? Function(_UpdateEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BackToInitEvent value)? backToInit,
    TResult Function(_ReqCodeEvent value)? requestCode,
    TResult Function(_ValidateCodeEvent value)? validateCode,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsProfileAddContactEventCopyWith<$Res> {
  factory $SettingsProfileAddContactEventCopyWith(
          SettingsProfileAddContactEvent value,
          $Res Function(SettingsProfileAddContactEvent) then) =
      _$SettingsProfileAddContactEventCopyWithImpl<$Res,
          SettingsProfileAddContactEvent>;
}

/// @nodoc
class _$SettingsProfileAddContactEventCopyWithImpl<$Res,
        $Val extends SettingsProfileAddContactEvent>
    implements $SettingsProfileAddContactEventCopyWith<$Res> {
  _$SettingsProfileAddContactEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_BackToInitEventCopyWith<$Res> {
  factory _$$_BackToInitEventCopyWith(
          _$_BackToInitEvent value, $Res Function(_$_BackToInitEvent) then) =
      __$$_BackToInitEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String contact});
}

/// @nodoc
class __$$_BackToInitEventCopyWithImpl<$Res>
    extends _$SettingsProfileAddContactEventCopyWithImpl<$Res,
        _$_BackToInitEvent> implements _$$_BackToInitEventCopyWith<$Res> {
  __$$_BackToInitEventCopyWithImpl(
      _$_BackToInitEvent _value, $Res Function(_$_BackToInitEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$_BackToInitEvent(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BackToInitEvent extends _BackToInitEvent with DiagnosticableTreeMixin {
  const _$_BackToInitEvent({required this.contact}) : super._();

  @override
  final String contact;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsProfileAddContactEvent.backToInit(contact: $contact)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SettingsProfileAddContactEvent.backToInit'))
      ..add(DiagnosticsProperty('contact', contact));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BackToInitEvent &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BackToInitEventCopyWith<_$_BackToInitEvent> get copyWith =>
      __$$_BackToInitEventCopyWithImpl<_$_BackToInitEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contact) backToInit,
    required TResult Function() requestCode,
    required TResult Function(Function? callbackUpdate) validateCode,
    required TResult Function(String? contact, String? code) update,
  }) {
    return backToInit(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contact)? backToInit,
    TResult? Function()? requestCode,
    TResult? Function(Function? callbackUpdate)? validateCode,
    TResult? Function(String? contact, String? code)? update,
  }) {
    return backToInit?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contact)? backToInit,
    TResult Function()? requestCode,
    TResult Function(Function? callbackUpdate)? validateCode,
    TResult Function(String? contact, String? code)? update,
    required TResult orElse(),
  }) {
    if (backToInit != null) {
      return backToInit(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BackToInitEvent value) backToInit,
    required TResult Function(_ReqCodeEvent value) requestCode,
    required TResult Function(_ValidateCodeEvent value) validateCode,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return backToInit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BackToInitEvent value)? backToInit,
    TResult? Function(_ReqCodeEvent value)? requestCode,
    TResult? Function(_ValidateCodeEvent value)? validateCode,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return backToInit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BackToInitEvent value)? backToInit,
    TResult Function(_ReqCodeEvent value)? requestCode,
    TResult Function(_ValidateCodeEvent value)? validateCode,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (backToInit != null) {
      return backToInit(this);
    }
    return orElse();
  }
}

abstract class _BackToInitEvent extends SettingsProfileAddContactEvent {
  const factory _BackToInitEvent({required final String contact}) =
      _$_BackToInitEvent;
  const _BackToInitEvent._() : super._();

  String get contact;
  @JsonKey(ignore: true)
  _$$_BackToInitEventCopyWith<_$_BackToInitEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReqCodeEventCopyWith<$Res> {
  factory _$$_ReqCodeEventCopyWith(
          _$_ReqCodeEvent value, $Res Function(_$_ReqCodeEvent) then) =
      __$$_ReqCodeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReqCodeEventCopyWithImpl<$Res>
    extends _$SettingsProfileAddContactEventCopyWithImpl<$Res, _$_ReqCodeEvent>
    implements _$$_ReqCodeEventCopyWith<$Res> {
  __$$_ReqCodeEventCopyWithImpl(
      _$_ReqCodeEvent _value, $Res Function(_$_ReqCodeEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReqCodeEvent extends _ReqCodeEvent with DiagnosticableTreeMixin {
  const _$_ReqCodeEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsProfileAddContactEvent.requestCode()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'SettingsProfileAddContactEvent.requestCode'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReqCodeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contact) backToInit,
    required TResult Function() requestCode,
    required TResult Function(Function? callbackUpdate) validateCode,
    required TResult Function(String? contact, String? code) update,
  }) {
    return requestCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contact)? backToInit,
    TResult? Function()? requestCode,
    TResult? Function(Function? callbackUpdate)? validateCode,
    TResult? Function(String? contact, String? code)? update,
  }) {
    return requestCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contact)? backToInit,
    TResult Function()? requestCode,
    TResult Function(Function? callbackUpdate)? validateCode,
    TResult Function(String? contact, String? code)? update,
    required TResult orElse(),
  }) {
    if (requestCode != null) {
      return requestCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BackToInitEvent value) backToInit,
    required TResult Function(_ReqCodeEvent value) requestCode,
    required TResult Function(_ValidateCodeEvent value) validateCode,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return requestCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BackToInitEvent value)? backToInit,
    TResult? Function(_ReqCodeEvent value)? requestCode,
    TResult? Function(_ValidateCodeEvent value)? validateCode,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return requestCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BackToInitEvent value)? backToInit,
    TResult Function(_ReqCodeEvent value)? requestCode,
    TResult Function(_ValidateCodeEvent value)? validateCode,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (requestCode != null) {
      return requestCode(this);
    }
    return orElse();
  }
}

abstract class _ReqCodeEvent extends SettingsProfileAddContactEvent {
  const factory _ReqCodeEvent() = _$_ReqCodeEvent;
  const _ReqCodeEvent._() : super._();
}

/// @nodoc
abstract class _$$_ValidateCodeEventCopyWith<$Res> {
  factory _$$_ValidateCodeEventCopyWith(_$_ValidateCodeEvent value,
          $Res Function(_$_ValidateCodeEvent) then) =
      __$$_ValidateCodeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Function? callbackUpdate});
}

/// @nodoc
class __$$_ValidateCodeEventCopyWithImpl<$Res>
    extends _$SettingsProfileAddContactEventCopyWithImpl<$Res,
        _$_ValidateCodeEvent> implements _$$_ValidateCodeEventCopyWith<$Res> {
  __$$_ValidateCodeEventCopyWithImpl(
      _$_ValidateCodeEvent _value, $Res Function(_$_ValidateCodeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callbackUpdate = freezed,
  }) {
    return _then(_$_ValidateCodeEvent(
      callbackUpdate: freezed == callbackUpdate
          ? _value.callbackUpdate
          : callbackUpdate // ignore: cast_nullable_to_non_nullable
              as Function?,
    ));
  }
}

/// @nodoc

class _$_ValidateCodeEvent extends _ValidateCodeEvent
    with DiagnosticableTreeMixin {
  const _$_ValidateCodeEvent({this.callbackUpdate}) : super._();

  @override
  final Function? callbackUpdate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsProfileAddContactEvent.validateCode(callbackUpdate: $callbackUpdate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SettingsProfileAddContactEvent.validateCode'))
      ..add(DiagnosticsProperty('callbackUpdate', callbackUpdate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidateCodeEvent &&
            (identical(other.callbackUpdate, callbackUpdate) ||
                other.callbackUpdate == callbackUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callbackUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidateCodeEventCopyWith<_$_ValidateCodeEvent> get copyWith =>
      __$$_ValidateCodeEventCopyWithImpl<_$_ValidateCodeEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contact) backToInit,
    required TResult Function() requestCode,
    required TResult Function(Function? callbackUpdate) validateCode,
    required TResult Function(String? contact, String? code) update,
  }) {
    return validateCode(callbackUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contact)? backToInit,
    TResult? Function()? requestCode,
    TResult? Function(Function? callbackUpdate)? validateCode,
    TResult? Function(String? contact, String? code)? update,
  }) {
    return validateCode?.call(callbackUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contact)? backToInit,
    TResult Function()? requestCode,
    TResult Function(Function? callbackUpdate)? validateCode,
    TResult Function(String? contact, String? code)? update,
    required TResult orElse(),
  }) {
    if (validateCode != null) {
      return validateCode(callbackUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BackToInitEvent value) backToInit,
    required TResult Function(_ReqCodeEvent value) requestCode,
    required TResult Function(_ValidateCodeEvent value) validateCode,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return validateCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BackToInitEvent value)? backToInit,
    TResult? Function(_ReqCodeEvent value)? requestCode,
    TResult? Function(_ValidateCodeEvent value)? validateCode,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return validateCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BackToInitEvent value)? backToInit,
    TResult Function(_ReqCodeEvent value)? requestCode,
    TResult Function(_ValidateCodeEvent value)? validateCode,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (validateCode != null) {
      return validateCode(this);
    }
    return orElse();
  }
}

abstract class _ValidateCodeEvent extends SettingsProfileAddContactEvent {
  const factory _ValidateCodeEvent({final Function? callbackUpdate}) =
      _$_ValidateCodeEvent;
  const _ValidateCodeEvent._() : super._();

  Function? get callbackUpdate;
  @JsonKey(ignore: true)
  _$$_ValidateCodeEventCopyWith<_$_ValidateCodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateEventCopyWith<$Res> {
  factory _$$_UpdateEventCopyWith(
          _$_UpdateEvent value, $Res Function(_$_UpdateEvent) then) =
      __$$_UpdateEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String? contact, String? code});
}

/// @nodoc
class __$$_UpdateEventCopyWithImpl<$Res>
    extends _$SettingsProfileAddContactEventCopyWithImpl<$Res, _$_UpdateEvent>
    implements _$$_UpdateEventCopyWith<$Res> {
  __$$_UpdateEventCopyWithImpl(
      _$_UpdateEvent _value, $Res Function(_$_UpdateEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_UpdateEvent(
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UpdateEvent extends _UpdateEvent with DiagnosticableTreeMixin {
  const _$_UpdateEvent({this.contact, this.code}) : super._();

  @override
  final String? contact;
  @override
  final String? code;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsProfileAddContactEvent.update(contact: $contact, code: $code)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'SettingsProfileAddContactEvent.update'))
      ..add(DiagnosticsProperty('contact', contact))
      ..add(DiagnosticsProperty('code', code));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateEvent &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateEventCopyWith<_$_UpdateEvent> get copyWith =>
      __$$_UpdateEventCopyWithImpl<_$_UpdateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contact) backToInit,
    required TResult Function() requestCode,
    required TResult Function(Function? callbackUpdate) validateCode,
    required TResult Function(String? contact, String? code) update,
  }) {
    return update(contact, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contact)? backToInit,
    TResult? Function()? requestCode,
    TResult? Function(Function? callbackUpdate)? validateCode,
    TResult? Function(String? contact, String? code)? update,
  }) {
    return update?.call(contact, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contact)? backToInit,
    TResult Function()? requestCode,
    TResult Function(Function? callbackUpdate)? validateCode,
    TResult Function(String? contact, String? code)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(contact, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BackToInitEvent value) backToInit,
    required TResult Function(_ReqCodeEvent value) requestCode,
    required TResult Function(_ValidateCodeEvent value) validateCode,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BackToInitEvent value)? backToInit,
    TResult? Function(_ReqCodeEvent value)? requestCode,
    TResult? Function(_ValidateCodeEvent value)? validateCode,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BackToInitEvent value)? backToInit,
    TResult Function(_ReqCodeEvent value)? requestCode,
    TResult Function(_ValidateCodeEvent value)? validateCode,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateEvent extends SettingsProfileAddContactEvent {
  const factory _UpdateEvent({final String? contact, final String? code}) =
      _$_UpdateEvent;
  const _UpdateEvent._() : super._();

  String? get contact;
  String? get code;
  @JsonKey(ignore: true)
  _$$_UpdateEventCopyWith<_$_UpdateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsProfileAddContactState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? contact, bool isValid) initial,
    required TResult Function() loading,
    required TResult Function() saved,
    required TResult Function(String contact, String? code, String? message)
        data,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? contact, bool isValid)? initial,
    TResult? Function()? loading,
    TResult? Function()? saved,
    TResult? Function(String contact, String? code, String? message)? data,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? contact, bool isValid)? initial,
    TResult Function()? loading,
    TResult Function()? saved,
    TResult Function(String contact, String? code, String? message)? data,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSettingsProfileAddContactState value)
        initial,
    required TResult Function(_LoadingSettingsProfileAddContactState value)
        loading,
    required TResult Function(_SavedSettingsProfileAddContactState value) saved,
    required TResult Function(_DataSettingsProfileAddContactState value) data,
    required TResult Function(_FailureSettingsProfileAddContactState value)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSettingsProfileAddContactState value)? initial,
    TResult? Function(_LoadingSettingsProfileAddContactState value)? loading,
    TResult? Function(_SavedSettingsProfileAddContactState value)? saved,
    TResult? Function(_DataSettingsProfileAddContactState value)? data,
    TResult? Function(_FailureSettingsProfileAddContactState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSettingsProfileAddContactState value)? initial,
    TResult Function(_LoadingSettingsProfileAddContactState value)? loading,
    TResult Function(_SavedSettingsProfileAddContactState value)? saved,
    TResult Function(_DataSettingsProfileAddContactState value)? data,
    TResult Function(_FailureSettingsProfileAddContactState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsProfileAddContactStateCopyWith<$Res> {
  factory $SettingsProfileAddContactStateCopyWith(
          SettingsProfileAddContactState value,
          $Res Function(SettingsProfileAddContactState) then) =
      _$SettingsProfileAddContactStateCopyWithImpl<$Res,
          SettingsProfileAddContactState>;
}

/// @nodoc
class _$SettingsProfileAddContactStateCopyWithImpl<$Res,
        $Val extends SettingsProfileAddContactState>
    implements $SettingsProfileAddContactStateCopyWith<$Res> {
  _$SettingsProfileAddContactStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialSettingsProfileAddContactStateCopyWith<$Res> {
  factory _$$_InitialSettingsProfileAddContactStateCopyWith(
          _$_InitialSettingsProfileAddContactState value,
          $Res Function(_$_InitialSettingsProfileAddContactState) then) =
      __$$_InitialSettingsProfileAddContactStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String? contact, bool isValid});
}

/// @nodoc
class __$$_InitialSettingsProfileAddContactStateCopyWithImpl<$Res>
    extends _$SettingsProfileAddContactStateCopyWithImpl<$Res,
        _$_InitialSettingsProfileAddContactState>
    implements _$$_InitialSettingsProfileAddContactStateCopyWith<$Res> {
  __$$_InitialSettingsProfileAddContactStateCopyWithImpl(
      _$_InitialSettingsProfileAddContactState _value,
      $Res Function(_$_InitialSettingsProfileAddContactState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
    Object? isValid = null,
  }) {
    return _then(_$_InitialSettingsProfileAddContactState(
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InitialSettingsProfileAddContactState
    extends _InitialSettingsProfileAddContactState
    with DiagnosticableTreeMixin {
  const _$_InitialSettingsProfileAddContactState(
      {this.contact, required this.isValid})
      : super._();

  @override
  final String? contact;
  @override
  final bool isValid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsProfileAddContactState.initial(contact: $contact, isValid: $isValid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'SettingsProfileAddContactState.initial'))
      ..add(DiagnosticsProperty('contact', contact))
      ..add(DiagnosticsProperty('isValid', isValid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialSettingsProfileAddContactState &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialSettingsProfileAddContactStateCopyWith<
          _$_InitialSettingsProfileAddContactState>
      get copyWith => __$$_InitialSettingsProfileAddContactStateCopyWithImpl<
          _$_InitialSettingsProfileAddContactState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? contact, bool isValid) initial,
    required TResult Function() loading,
    required TResult Function() saved,
    required TResult Function(String contact, String? code, String? message)
        data,
    required TResult Function(String message) failure,
  }) {
    return initial(contact, isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? contact, bool isValid)? initial,
    TResult? Function()? loading,
    TResult? Function()? saved,
    TResult? Function(String contact, String? code, String? message)? data,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call(contact, isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? contact, bool isValid)? initial,
    TResult Function()? loading,
    TResult Function()? saved,
    TResult Function(String contact, String? code, String? message)? data,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(contact, isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSettingsProfileAddContactState value)
        initial,
    required TResult Function(_LoadingSettingsProfileAddContactState value)
        loading,
    required TResult Function(_SavedSettingsProfileAddContactState value) saved,
    required TResult Function(_DataSettingsProfileAddContactState value) data,
    required TResult Function(_FailureSettingsProfileAddContactState value)
        failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSettingsProfileAddContactState value)? initial,
    TResult? Function(_LoadingSettingsProfileAddContactState value)? loading,
    TResult? Function(_SavedSettingsProfileAddContactState value)? saved,
    TResult? Function(_DataSettingsProfileAddContactState value)? data,
    TResult? Function(_FailureSettingsProfileAddContactState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSettingsProfileAddContactState value)? initial,
    TResult Function(_LoadingSettingsProfileAddContactState value)? loading,
    TResult Function(_SavedSettingsProfileAddContactState value)? saved,
    TResult Function(_DataSettingsProfileAddContactState value)? data,
    TResult Function(_FailureSettingsProfileAddContactState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialSettingsProfileAddContactState
    extends SettingsProfileAddContactState {
  const factory _InitialSettingsProfileAddContactState(
      {final String? contact,
      required final bool isValid}) = _$_InitialSettingsProfileAddContactState;
  const _InitialSettingsProfileAddContactState._() : super._();

  String? get contact;
  bool get isValid;
  @JsonKey(ignore: true)
  _$$_InitialSettingsProfileAddContactStateCopyWith<
          _$_InitialSettingsProfileAddContactState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingSettingsProfileAddContactStateCopyWith<$Res> {
  factory _$$_LoadingSettingsProfileAddContactStateCopyWith(
          _$_LoadingSettingsProfileAddContactState value,
          $Res Function(_$_LoadingSettingsProfileAddContactState) then) =
      __$$_LoadingSettingsProfileAddContactStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingSettingsProfileAddContactStateCopyWithImpl<$Res>
    extends _$SettingsProfileAddContactStateCopyWithImpl<$Res,
        _$_LoadingSettingsProfileAddContactState>
    implements _$$_LoadingSettingsProfileAddContactStateCopyWith<$Res> {
  __$$_LoadingSettingsProfileAddContactStateCopyWithImpl(
      _$_LoadingSettingsProfileAddContactState _value,
      $Res Function(_$_LoadingSettingsProfileAddContactState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingSettingsProfileAddContactState
    extends _LoadingSettingsProfileAddContactState
    with DiagnosticableTreeMixin {
  const _$_LoadingSettingsProfileAddContactState() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsProfileAddContactState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'SettingsProfileAddContactState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingSettingsProfileAddContactState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? contact, bool isValid) initial,
    required TResult Function() loading,
    required TResult Function() saved,
    required TResult Function(String contact, String? code, String? message)
        data,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? contact, bool isValid)? initial,
    TResult? Function()? loading,
    TResult? Function()? saved,
    TResult? Function(String contact, String? code, String? message)? data,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? contact, bool isValid)? initial,
    TResult Function()? loading,
    TResult Function()? saved,
    TResult Function(String contact, String? code, String? message)? data,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSettingsProfileAddContactState value)
        initial,
    required TResult Function(_LoadingSettingsProfileAddContactState value)
        loading,
    required TResult Function(_SavedSettingsProfileAddContactState value) saved,
    required TResult Function(_DataSettingsProfileAddContactState value) data,
    required TResult Function(_FailureSettingsProfileAddContactState value)
        failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSettingsProfileAddContactState value)? initial,
    TResult? Function(_LoadingSettingsProfileAddContactState value)? loading,
    TResult? Function(_SavedSettingsProfileAddContactState value)? saved,
    TResult? Function(_DataSettingsProfileAddContactState value)? data,
    TResult? Function(_FailureSettingsProfileAddContactState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSettingsProfileAddContactState value)? initial,
    TResult Function(_LoadingSettingsProfileAddContactState value)? loading,
    TResult Function(_SavedSettingsProfileAddContactState value)? saved,
    TResult Function(_DataSettingsProfileAddContactState value)? data,
    TResult Function(_FailureSettingsProfileAddContactState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingSettingsProfileAddContactState
    extends SettingsProfileAddContactState {
  const factory _LoadingSettingsProfileAddContactState() =
      _$_LoadingSettingsProfileAddContactState;
  const _LoadingSettingsProfileAddContactState._() : super._();
}

/// @nodoc
abstract class _$$_SavedSettingsProfileAddContactStateCopyWith<$Res> {
  factory _$$_SavedSettingsProfileAddContactStateCopyWith(
          _$_SavedSettingsProfileAddContactState value,
          $Res Function(_$_SavedSettingsProfileAddContactState) then) =
      __$$_SavedSettingsProfileAddContactStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedSettingsProfileAddContactStateCopyWithImpl<$Res>
    extends _$SettingsProfileAddContactStateCopyWithImpl<$Res,
        _$_SavedSettingsProfileAddContactState>
    implements _$$_SavedSettingsProfileAddContactStateCopyWith<$Res> {
  __$$_SavedSettingsProfileAddContactStateCopyWithImpl(
      _$_SavedSettingsProfileAddContactState _value,
      $Res Function(_$_SavedSettingsProfileAddContactState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SavedSettingsProfileAddContactState
    extends _SavedSettingsProfileAddContactState with DiagnosticableTreeMixin {
  const _$_SavedSettingsProfileAddContactState() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsProfileAddContactState.saved()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'SettingsProfileAddContactState.saved'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavedSettingsProfileAddContactState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? contact, bool isValid) initial,
    required TResult Function() loading,
    required TResult Function() saved,
    required TResult Function(String contact, String? code, String? message)
        data,
    required TResult Function(String message) failure,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? contact, bool isValid)? initial,
    TResult? Function()? loading,
    TResult? Function()? saved,
    TResult? Function(String contact, String? code, String? message)? data,
    TResult? Function(String message)? failure,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? contact, bool isValid)? initial,
    TResult Function()? loading,
    TResult Function()? saved,
    TResult Function(String contact, String? code, String? message)? data,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSettingsProfileAddContactState value)
        initial,
    required TResult Function(_LoadingSettingsProfileAddContactState value)
        loading,
    required TResult Function(_SavedSettingsProfileAddContactState value) saved,
    required TResult Function(_DataSettingsProfileAddContactState value) data,
    required TResult Function(_FailureSettingsProfileAddContactState value)
        failure,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSettingsProfileAddContactState value)? initial,
    TResult? Function(_LoadingSettingsProfileAddContactState value)? loading,
    TResult? Function(_SavedSettingsProfileAddContactState value)? saved,
    TResult? Function(_DataSettingsProfileAddContactState value)? data,
    TResult? Function(_FailureSettingsProfileAddContactState value)? failure,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSettingsProfileAddContactState value)? initial,
    TResult Function(_LoadingSettingsProfileAddContactState value)? loading,
    TResult Function(_SavedSettingsProfileAddContactState value)? saved,
    TResult Function(_DataSettingsProfileAddContactState value)? data,
    TResult Function(_FailureSettingsProfileAddContactState value)? failure,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _SavedSettingsProfileAddContactState
    extends SettingsProfileAddContactState {
  const factory _SavedSettingsProfileAddContactState() =
      _$_SavedSettingsProfileAddContactState;
  const _SavedSettingsProfileAddContactState._() : super._();
}

/// @nodoc
abstract class _$$_DataSettingsProfileAddContactStateCopyWith<$Res> {
  factory _$$_DataSettingsProfileAddContactStateCopyWith(
          _$_DataSettingsProfileAddContactState value,
          $Res Function(_$_DataSettingsProfileAddContactState) then) =
      __$$_DataSettingsProfileAddContactStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String contact, String? code, String? message});
}

/// @nodoc
class __$$_DataSettingsProfileAddContactStateCopyWithImpl<$Res>
    extends _$SettingsProfileAddContactStateCopyWithImpl<$Res,
        _$_DataSettingsProfileAddContactState>
    implements _$$_DataSettingsProfileAddContactStateCopyWith<$Res> {
  __$$_DataSettingsProfileAddContactStateCopyWithImpl(
      _$_DataSettingsProfileAddContactState _value,
      $Res Function(_$_DataSettingsProfileAddContactState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_DataSettingsProfileAddContactState(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DataSettingsProfileAddContactState
    extends _DataSettingsProfileAddContactState with DiagnosticableTreeMixin {
  const _$_DataSettingsProfileAddContactState(
      {required this.contact, this.code, this.message})
      : super._();

  @override
  final String contact;
  @override
  final String? code;
  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsProfileAddContactState.data(contact: $contact, code: $code, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsProfileAddContactState.data'))
      ..add(DiagnosticsProperty('contact', contact))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataSettingsProfileAddContactState &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataSettingsProfileAddContactStateCopyWith<
          _$_DataSettingsProfileAddContactState>
      get copyWith => __$$_DataSettingsProfileAddContactStateCopyWithImpl<
          _$_DataSettingsProfileAddContactState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? contact, bool isValid) initial,
    required TResult Function() loading,
    required TResult Function() saved,
    required TResult Function(String contact, String? code, String? message)
        data,
    required TResult Function(String message) failure,
  }) {
    return data(contact, code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? contact, bool isValid)? initial,
    TResult? Function()? loading,
    TResult? Function()? saved,
    TResult? Function(String contact, String? code, String? message)? data,
    TResult? Function(String message)? failure,
  }) {
    return data?.call(contact, code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? contact, bool isValid)? initial,
    TResult Function()? loading,
    TResult Function()? saved,
    TResult Function(String contact, String? code, String? message)? data,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(contact, code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSettingsProfileAddContactState value)
        initial,
    required TResult Function(_LoadingSettingsProfileAddContactState value)
        loading,
    required TResult Function(_SavedSettingsProfileAddContactState value) saved,
    required TResult Function(_DataSettingsProfileAddContactState value) data,
    required TResult Function(_FailureSettingsProfileAddContactState value)
        failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSettingsProfileAddContactState value)? initial,
    TResult? Function(_LoadingSettingsProfileAddContactState value)? loading,
    TResult? Function(_SavedSettingsProfileAddContactState value)? saved,
    TResult? Function(_DataSettingsProfileAddContactState value)? data,
    TResult? Function(_FailureSettingsProfileAddContactState value)? failure,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSettingsProfileAddContactState value)? initial,
    TResult Function(_LoadingSettingsProfileAddContactState value)? loading,
    TResult Function(_SavedSettingsProfileAddContactState value)? saved,
    TResult Function(_DataSettingsProfileAddContactState value)? data,
    TResult Function(_FailureSettingsProfileAddContactState value)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataSettingsProfileAddContactState
    extends SettingsProfileAddContactState {
  const factory _DataSettingsProfileAddContactState(
      {required final String contact,
      final String? code,
      final String? message}) = _$_DataSettingsProfileAddContactState;
  const _DataSettingsProfileAddContactState._() : super._();

  String get contact;
  String? get code;
  String? get message;
  @JsonKey(ignore: true)
  _$$_DataSettingsProfileAddContactStateCopyWith<
          _$_DataSettingsProfileAddContactState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureSettingsProfileAddContactStateCopyWith<$Res> {
  factory _$$_FailureSettingsProfileAddContactStateCopyWith(
          _$_FailureSettingsProfileAddContactState value,
          $Res Function(_$_FailureSettingsProfileAddContactState) then) =
      __$$_FailureSettingsProfileAddContactStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_FailureSettingsProfileAddContactStateCopyWithImpl<$Res>
    extends _$SettingsProfileAddContactStateCopyWithImpl<$Res,
        _$_FailureSettingsProfileAddContactState>
    implements _$$_FailureSettingsProfileAddContactStateCopyWith<$Res> {
  __$$_FailureSettingsProfileAddContactStateCopyWithImpl(
      _$_FailureSettingsProfileAddContactState _value,
      $Res Function(_$_FailureSettingsProfileAddContactState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_FailureSettingsProfileAddContactState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FailureSettingsProfileAddContactState
    extends _FailureSettingsProfileAddContactState
    with DiagnosticableTreeMixin {
  const _$_FailureSettingsProfileAddContactState({required this.message})
      : super._();

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsProfileAddContactState.failure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'SettingsProfileAddContactState.failure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureSettingsProfileAddContactState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureSettingsProfileAddContactStateCopyWith<
          _$_FailureSettingsProfileAddContactState>
      get copyWith => __$$_FailureSettingsProfileAddContactStateCopyWithImpl<
          _$_FailureSettingsProfileAddContactState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? contact, bool isValid) initial,
    required TResult Function() loading,
    required TResult Function() saved,
    required TResult Function(String contact, String? code, String? message)
        data,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? contact, bool isValid)? initial,
    TResult? Function()? loading,
    TResult? Function()? saved,
    TResult? Function(String contact, String? code, String? message)? data,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? contact, bool isValid)? initial,
    TResult Function()? loading,
    TResult Function()? saved,
    TResult Function(String contact, String? code, String? message)? data,
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
    required TResult Function(_InitialSettingsProfileAddContactState value)
        initial,
    required TResult Function(_LoadingSettingsProfileAddContactState value)
        loading,
    required TResult Function(_SavedSettingsProfileAddContactState value) saved,
    required TResult Function(_DataSettingsProfileAddContactState value) data,
    required TResult Function(_FailureSettingsProfileAddContactState value)
        failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSettingsProfileAddContactState value)? initial,
    TResult? Function(_LoadingSettingsProfileAddContactState value)? loading,
    TResult? Function(_SavedSettingsProfileAddContactState value)? saved,
    TResult? Function(_DataSettingsProfileAddContactState value)? data,
    TResult? Function(_FailureSettingsProfileAddContactState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSettingsProfileAddContactState value)? initial,
    TResult Function(_LoadingSettingsProfileAddContactState value)? loading,
    TResult Function(_SavedSettingsProfileAddContactState value)? saved,
    TResult Function(_DataSettingsProfileAddContactState value)? data,
    TResult Function(_FailureSettingsProfileAddContactState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureSettingsProfileAddContactState
    extends SettingsProfileAddContactState {
  const factory _FailureSettingsProfileAddContactState(
          {required final String message}) =
      _$_FailureSettingsProfileAddContactState;
  const _FailureSettingsProfileAddContactState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_FailureSettingsProfileAddContactStateCopyWith<
          _$_FailureSettingsProfileAddContactState>
      get copyWith => throw _privateConstructorUsedError;
}
