// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_notification_platform_helper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DLSNotificationPlatformHelper _$DLSNotificationPlatformHelperFromJson(
    Map<String, dynamic> json) {
  return _DLSNotificationPlatformHelper.fromJson(json);
}

/// @nodoc
mixin _$DLSNotificationPlatformHelper {
  @JsonKey(name: 'platform_type')
  DlsPlatformNotificationType? get platform =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DLSNotificationPlatformHelperCopyWith<DLSNotificationPlatformHelper>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DLSNotificationPlatformHelperCopyWith<$Res> {
  factory $DLSNotificationPlatformHelperCopyWith(
          DLSNotificationPlatformHelper value,
          $Res Function(DLSNotificationPlatformHelper) then) =
      _$DLSNotificationPlatformHelperCopyWithImpl<$Res,
          DLSNotificationPlatformHelper>;
  @useResult
  $Res call(
      {@JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform});
}

/// @nodoc
class _$DLSNotificationPlatformHelperCopyWithImpl<$Res,
        $Val extends DLSNotificationPlatformHelper>
    implements $DLSNotificationPlatformHelperCopyWith<$Res> {
  _$DLSNotificationPlatformHelperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = freezed,
  }) {
    return _then(_value.copyWith(
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as DlsPlatformNotificationType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DLSNotificationPlatformHelperCopyWith<$Res>
    implements $DLSNotificationPlatformHelperCopyWith<$Res> {
  factory _$$_DLSNotificationPlatformHelperCopyWith(
          _$_DLSNotificationPlatformHelper value,
          $Res Function(_$_DLSNotificationPlatformHelper) then) =
      __$$_DLSNotificationPlatformHelperCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform});
}

/// @nodoc
class __$$_DLSNotificationPlatformHelperCopyWithImpl<$Res>
    extends _$DLSNotificationPlatformHelperCopyWithImpl<$Res,
        _$_DLSNotificationPlatformHelper>
    implements _$$_DLSNotificationPlatformHelperCopyWith<$Res> {
  __$$_DLSNotificationPlatformHelperCopyWithImpl(
      _$_DLSNotificationPlatformHelper _value,
      $Res Function(_$_DLSNotificationPlatformHelper) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = freezed,
  }) {
    return _then(_$_DLSNotificationPlatformHelper(
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as DlsPlatformNotificationType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DLSNotificationPlatformHelper extends _DLSNotificationPlatformHelper {
  const _$_DLSNotificationPlatformHelper(
      {@JsonKey(name: 'platform_type') this.platform})
      : super._();

  factory _$_DLSNotificationPlatformHelper.fromJson(
          Map<String, dynamic> json) =>
      _$$_DLSNotificationPlatformHelperFromJson(json);

  @override
  @JsonKey(name: 'platform_type')
  final DlsPlatformNotificationType? platform;

  @override
  String toString() {
    return 'DLSNotificationPlatformHelper(platform: $platform)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DLSNotificationPlatformHelper &&
            (identical(other.platform, platform) ||
                other.platform == platform));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, platform);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DLSNotificationPlatformHelperCopyWith<_$_DLSNotificationPlatformHelper>
      get copyWith => __$$_DLSNotificationPlatformHelperCopyWithImpl<
          _$_DLSNotificationPlatformHelper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DLSNotificationPlatformHelperToJson(
      this,
    );
  }
}

abstract class _DLSNotificationPlatformHelper
    extends DLSNotificationPlatformHelper {
  const factory _DLSNotificationPlatformHelper(
          {@JsonKey(name: 'platform_type')
              final DlsPlatformNotificationType? platform}) =
      _$_DLSNotificationPlatformHelper;
  const _DLSNotificationPlatformHelper._() : super._();

  factory _DLSNotificationPlatformHelper.fromJson(Map<String, dynamic> json) =
      _$_DLSNotificationPlatformHelper.fromJson;

  @override
  @JsonKey(name: 'platform_type')
  DlsPlatformNotificationType? get platform;
  @override
  @JsonKey(ignore: true)
  _$$_DLSNotificationPlatformHelperCopyWith<_$_DLSNotificationPlatformHelper>
      get copyWith => throw _privateConstructorUsedError;
}
