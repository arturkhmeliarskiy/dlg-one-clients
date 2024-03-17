// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_tag_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateTagRequest _$CreateTagRequestFromJson(Map<String, dynamic> json) {
  return _CreateTagRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateTagRequest {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTagRequestCopyWith<CreateTagRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTagRequestCopyWith<$Res> {
  factory $CreateTagRequestCopyWith(
          CreateTagRequest value, $Res Function(CreateTagRequest) then) =
      _$CreateTagRequestCopyWithImpl<$Res, CreateTagRequest>;
  @useResult
  $Res call({String title, String? description, int? status});
}

/// @nodoc
class _$CreateTagRequestCopyWithImpl<$Res, $Val extends CreateTagRequest>
    implements $CreateTagRequestCopyWith<$Res> {
  _$CreateTagRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateTagRequestCopyWith<$Res>
    implements $CreateTagRequestCopyWith<$Res> {
  factory _$$_CreateTagRequestCopyWith(
          _$_CreateTagRequest value, $Res Function(_$_CreateTagRequest) then) =
      __$$_CreateTagRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String? description, int? status});
}

/// @nodoc
class __$$_CreateTagRequestCopyWithImpl<$Res>
    extends _$CreateTagRequestCopyWithImpl<$Res, _$_CreateTagRequest>
    implements _$$_CreateTagRequestCopyWith<$Res> {
  __$$_CreateTagRequestCopyWithImpl(
      _$_CreateTagRequest _value, $Res Function(_$_CreateTagRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_CreateTagRequest(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_CreateTagRequest implements _CreateTagRequest {
  const _$_CreateTagRequest(
      {required this.title, this.description, this.status});

  factory _$_CreateTagRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateTagRequestFromJson(json);

  @override
  final String title;
  @override
  final String? description;
  @override
  final int? status;

  @override
  String toString() {
    return 'CreateTagRequest(title: $title, description: $description, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateTagRequest &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateTagRequestCopyWith<_$_CreateTagRequest> get copyWith =>
      __$$_CreateTagRequestCopyWithImpl<_$_CreateTagRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateTagRequestToJson(
      this,
    );
  }
}

abstract class _CreateTagRequest implements CreateTagRequest {
  const factory _CreateTagRequest(
      {required final String title,
      final String? description,
      final int? status}) = _$_CreateTagRequest;

  factory _CreateTagRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateTagRequest.fromJson;

  @override
  String get title;
  @override
  String? get description;
  @override
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$$_CreateTagRequestCopyWith<_$_CreateTagRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
