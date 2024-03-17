// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_members.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DlsMembers _$DlsMembersFromJson(Map<String, dynamic> json) {
  return _DlsMembers.fromJson(json);
}

/// @nodoc
mixin _$DlsMembers {
  @JsonKey(name: 'executors')
  List<int>? get executors => throw _privateConstructorUsedError;
  @JsonKey(name: 'responsible')
  List<int>? get responsible => throw _privateConstructorUsedError;
  @JsonKey(name: 'observers')
  List<int>? get observers => throw _privateConstructorUsedError;
  @JsonKey(name: 'authors')
  List<int>? get authors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DlsMembersCopyWith<DlsMembers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DlsMembersCopyWith<$Res> {
  factory $DlsMembersCopyWith(
          DlsMembers value, $Res Function(DlsMembers) then) =
      _$DlsMembersCopyWithImpl<$Res, DlsMembers>;
  @useResult
  $Res call(
      {@JsonKey(name: 'executors') List<int>? executors,
      @JsonKey(name: 'responsible') List<int>? responsible,
      @JsonKey(name: 'observers') List<int>? observers,
      @JsonKey(name: 'authors') List<int>? authors});
}

/// @nodoc
class _$DlsMembersCopyWithImpl<$Res, $Val extends DlsMembers>
    implements $DlsMembersCopyWith<$Res> {
  _$DlsMembersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? executors = freezed,
    Object? responsible = freezed,
    Object? observers = freezed,
    Object? authors = freezed,
  }) {
    return _then(_value.copyWith(
      executors: freezed == executors
          ? _value.executors
          : executors // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      responsible: freezed == responsible
          ? _value.responsible
          : responsible // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      observers: freezed == observers
          ? _value.observers
          : observers // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      authors: freezed == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DlsMembersCopyWith<$Res>
    implements $DlsMembersCopyWith<$Res> {
  factory _$$_DlsMembersCopyWith(
          _$_DlsMembers value, $Res Function(_$_DlsMembers) then) =
      __$$_DlsMembersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'executors') List<int>? executors,
      @JsonKey(name: 'responsible') List<int>? responsible,
      @JsonKey(name: 'observers') List<int>? observers,
      @JsonKey(name: 'authors') List<int>? authors});
}

/// @nodoc
class __$$_DlsMembersCopyWithImpl<$Res>
    extends _$DlsMembersCopyWithImpl<$Res, _$_DlsMembers>
    implements _$$_DlsMembersCopyWith<$Res> {
  __$$_DlsMembersCopyWithImpl(
      _$_DlsMembers _value, $Res Function(_$_DlsMembers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? executors = freezed,
    Object? responsible = freezed,
    Object? observers = freezed,
    Object? authors = freezed,
  }) {
    return _then(_$_DlsMembers(
      executors: freezed == executors
          ? _value._executors
          : executors // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      responsible: freezed == responsible
          ? _value._responsible
          : responsible // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      observers: freezed == observers
          ? _value._observers
          : observers // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      authors: freezed == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_DlsMembers extends _DlsMembers {
  _$_DlsMembers(
      {@JsonKey(name: 'executors') final List<int>? executors,
      @JsonKey(name: 'responsible') final List<int>? responsible,
      @JsonKey(name: 'observers') final List<int>? observers,
      @JsonKey(name: 'authors') final List<int>? authors})
      : _executors = executors,
        _responsible = responsible,
        _observers = observers,
        _authors = authors,
        super._();

  factory _$_DlsMembers.fromJson(Map<String, dynamic> json) =>
      _$$_DlsMembersFromJson(json);

  final List<int>? _executors;
  @override
  @JsonKey(name: 'executors')
  List<int>? get executors {
    final value = _executors;
    if (value == null) return null;
    if (_executors is EqualUnmodifiableListView) return _executors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _responsible;
  @override
  @JsonKey(name: 'responsible')
  List<int>? get responsible {
    final value = _responsible;
    if (value == null) return null;
    if (_responsible is EqualUnmodifiableListView) return _responsible;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _observers;
  @override
  @JsonKey(name: 'observers')
  List<int>? get observers {
    final value = _observers;
    if (value == null) return null;
    if (_observers is EqualUnmodifiableListView) return _observers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _authors;
  @override
  @JsonKey(name: 'authors')
  List<int>? get authors {
    final value = _authors;
    if (value == null) return null;
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DlsMembers(executors: $executors, responsible: $responsible, observers: $observers, authors: $authors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DlsMembers &&
            const DeepCollectionEquality()
                .equals(other._executors, _executors) &&
            const DeepCollectionEquality()
                .equals(other._responsible, _responsible) &&
            const DeepCollectionEquality()
                .equals(other._observers, _observers) &&
            const DeepCollectionEquality().equals(other._authors, _authors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_executors),
      const DeepCollectionEquality().hash(_responsible),
      const DeepCollectionEquality().hash(_observers),
      const DeepCollectionEquality().hash(_authors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DlsMembersCopyWith<_$_DlsMembers> get copyWith =>
      __$$_DlsMembersCopyWithImpl<_$_DlsMembers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DlsMembersToJson(
      this,
    );
  }
}

abstract class _DlsMembers extends DlsMembers {
  factory _DlsMembers(
      {@JsonKey(name: 'executors') final List<int>? executors,
      @JsonKey(name: 'responsible') final List<int>? responsible,
      @JsonKey(name: 'observers') final List<int>? observers,
      @JsonKey(name: 'authors') final List<int>? authors}) = _$_DlsMembers;
  _DlsMembers._() : super._();

  factory _DlsMembers.fromJson(Map<String, dynamic> json) =
      _$_DlsMembers.fromJson;

  @override
  @JsonKey(name: 'executors')
  List<int>? get executors;
  @override
  @JsonKey(name: 'responsible')
  List<int>? get responsible;
  @override
  @JsonKey(name: 'observers')
  List<int>? get observers;
  @override
  @JsonKey(name: 'authors')
  List<int>? get authors;
  @override
  @JsonKey(ignore: true)
  _$$_DlsMembersCopyWith<_$_DlsMembers> get copyWith =>
      throw _privateConstructorUsedError;
}
