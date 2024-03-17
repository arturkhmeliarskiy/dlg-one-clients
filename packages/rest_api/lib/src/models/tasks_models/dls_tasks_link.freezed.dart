// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_tasks_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DlsTasksLink _$DlsTasksLinkFromJson(Map<String, dynamic> json) {
  return _DlsTasksLink.fromJson(json);
}

/// @nodoc
mixin _$DlsTasksLink {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'label')
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'active')
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DlsTasksLinkCopyWith<DlsTasksLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DlsTasksLinkCopyWith<$Res> {
  factory $DlsTasksLinkCopyWith(
          DlsTasksLink value, $Res Function(DlsTasksLink) then) =
      _$DlsTasksLinkCopyWithImpl<$Res, DlsTasksLink>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'label') String? label,
      @JsonKey(name: 'active') bool? active});
}

/// @nodoc
class _$DlsTasksLinkCopyWithImpl<$Res, $Val extends DlsTasksLink>
    implements $DlsTasksLinkCopyWith<$Res> {
  _$DlsTasksLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DlsTasksLinkCopyWith<$Res>
    implements $DlsTasksLinkCopyWith<$Res> {
  factory _$$_DlsTasksLinkCopyWith(
          _$_DlsTasksLink value, $Res Function(_$_DlsTasksLink) then) =
      __$$_DlsTasksLinkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'label') String? label,
      @JsonKey(name: 'active') bool? active});
}

/// @nodoc
class __$$_DlsTasksLinkCopyWithImpl<$Res>
    extends _$DlsTasksLinkCopyWithImpl<$Res, _$_DlsTasksLink>
    implements _$$_DlsTasksLinkCopyWith<$Res> {
  __$$_DlsTasksLinkCopyWithImpl(
      _$_DlsTasksLink _value, $Res Function(_$_DlsTasksLink) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_$_DlsTasksLink(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DlsTasksLink extends _DlsTasksLink {
  _$_DlsTasksLink(
      {@JsonKey(name: 'url') this.url,
      @JsonKey(name: 'label') this.label,
      @JsonKey(name: 'active') this.active})
      : super._();

  factory _$_DlsTasksLink.fromJson(Map<String, dynamic> json) =>
      _$$_DlsTasksLinkFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'label')
  final String? label;
  @override
  @JsonKey(name: 'active')
  final bool? active;

  @override
  String toString() {
    return 'DlsTasksLink(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DlsTasksLink &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DlsTasksLinkCopyWith<_$_DlsTasksLink> get copyWith =>
      __$$_DlsTasksLinkCopyWithImpl<_$_DlsTasksLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DlsTasksLinkToJson(
      this,
    );
  }
}

abstract class _DlsTasksLink extends DlsTasksLink {
  factory _DlsTasksLink(
      {@JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'label') final String? label,
      @JsonKey(name: 'active') final bool? active}) = _$_DlsTasksLink;
  _DlsTasksLink._() : super._();

  factory _DlsTasksLink.fromJson(Map<String, dynamic> json) =
      _$_DlsTasksLink.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'label')
  String? get label;
  @override
  @JsonKey(name: 'active')
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$_DlsTasksLinkCopyWith<_$_DlsTasksLink> get copyWith =>
      throw _privateConstructorUsedError;
}
