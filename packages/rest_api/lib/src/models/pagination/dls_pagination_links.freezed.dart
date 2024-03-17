// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_pagination_links.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DlsPaginationLinks _$DlsPaginationLinksFromJson(Map<String, dynamic> json) {
  return _DlsPaginationLinks.fromJson(json);
}

/// @nodoc
mixin _$DlsPaginationLinks {
  @JsonKey(name: 'first')
  String? get first => throw _privateConstructorUsedError;
  @JsonKey(name: 'last')
  String? get last => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev')
  String? get prev => throw _privateConstructorUsedError;
  @JsonKey(name: 'next')
  String? get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DlsPaginationLinksCopyWith<DlsPaginationLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DlsPaginationLinksCopyWith<$Res> {
  factory $DlsPaginationLinksCopyWith(
          DlsPaginationLinks value, $Res Function(DlsPaginationLinks) then) =
      _$DlsPaginationLinksCopyWithImpl<$Res, DlsPaginationLinks>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first') String? first,
      @JsonKey(name: 'last') String? last,
      @JsonKey(name: 'prev') String? prev,
      @JsonKey(name: 'next') String? next});
}

/// @nodoc
class _$DlsPaginationLinksCopyWithImpl<$Res, $Val extends DlsPaginationLinks>
    implements $DlsPaginationLinksCopyWith<$Res> {
  _$DlsPaginationLinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
    Object? last = freezed,
    Object? prev = freezed,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String?,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DlsPaginationLinksCopyWith<$Res>
    implements $DlsPaginationLinksCopyWith<$Res> {
  factory _$$_DlsPaginationLinksCopyWith(_$_DlsPaginationLinks value,
          $Res Function(_$_DlsPaginationLinks) then) =
      __$$_DlsPaginationLinksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first') String? first,
      @JsonKey(name: 'last') String? last,
      @JsonKey(name: 'prev') String? prev,
      @JsonKey(name: 'next') String? next});
}

/// @nodoc
class __$$_DlsPaginationLinksCopyWithImpl<$Res>
    extends _$DlsPaginationLinksCopyWithImpl<$Res, _$_DlsPaginationLinks>
    implements _$$_DlsPaginationLinksCopyWith<$Res> {
  __$$_DlsPaginationLinksCopyWithImpl(
      _$_DlsPaginationLinks _value, $Res Function(_$_DlsPaginationLinks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
    Object? last = freezed,
    Object? prev = freezed,
    Object? next = freezed,
  }) {
    return _then(_$_DlsPaginationLinks(
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String?,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DlsPaginationLinks extends _DlsPaginationLinks {
  _$_DlsPaginationLinks(
      {@JsonKey(name: 'first') required this.first,
      @JsonKey(name: 'last') required this.last,
      @JsonKey(name: 'prev') required this.prev,
      @JsonKey(name: 'next') required this.next})
      : super._();

  factory _$_DlsPaginationLinks.fromJson(Map<String, dynamic> json) =>
      _$$_DlsPaginationLinksFromJson(json);

  @override
  @JsonKey(name: 'first')
  final String? first;
  @override
  @JsonKey(name: 'last')
  final String? last;
  @override
  @JsonKey(name: 'prev')
  final String? prev;
  @override
  @JsonKey(name: 'next')
  final String? next;

  @override
  String toString() {
    return 'DlsPaginationLinks(first: $first, last: $last, prev: $prev, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DlsPaginationLinks &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.prev, prev) || other.prev == prev) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, first, last, prev, next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DlsPaginationLinksCopyWith<_$_DlsPaginationLinks> get copyWith =>
      __$$_DlsPaginationLinksCopyWithImpl<_$_DlsPaginationLinks>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DlsPaginationLinksToJson(
      this,
    );
  }
}

abstract class _DlsPaginationLinks extends DlsPaginationLinks {
  factory _DlsPaginationLinks(
          {@JsonKey(name: 'first') required final String? first,
          @JsonKey(name: 'last') required final String? last,
          @JsonKey(name: 'prev') required final String? prev,
          @JsonKey(name: 'next') required final String? next}) =
      _$_DlsPaginationLinks;
  _DlsPaginationLinks._() : super._();

  factory _DlsPaginationLinks.fromJson(Map<String, dynamic> json) =
      _$_DlsPaginationLinks.fromJson;

  @override
  @JsonKey(name: 'first')
  String? get first;
  @override
  @JsonKey(name: 'last')
  String? get last;
  @override
  @JsonKey(name: 'prev')
  String? get prev;
  @override
  @JsonKey(name: 'next')
  String? get next;
  @override
  @JsonKey(ignore: true)
  _$$_DlsPaginationLinksCopyWith<_$_DlsPaginationLinks> get copyWith =>
      throw _privateConstructorUsedError;
}
