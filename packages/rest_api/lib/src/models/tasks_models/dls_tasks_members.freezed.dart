// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_tasks_members.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DlsTasksMembers _$DlsTasksMembersFromJson(Map<String, dynamic> json) {
  return _DlsTasksMembers.fromJson(json);
}

/// @nodoc
mixin _$DlsTasksMembers {
  @JsonKey(name: 'executors')
  List<DlsTasksExecutors>? get executors => throw _privateConstructorUsedError;
  @JsonKey(name: 'responsible')
  List<DlsTasksExecutors>? get responsible =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'observers')
  List<DlsTasksExecutors>? get observers => throw _privateConstructorUsedError;
  @JsonKey(name: 'authors')
  List<DlsTasksExecutors>? get authors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DlsTasksMembersCopyWith<DlsTasksMembers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DlsTasksMembersCopyWith<$Res> {
  factory $DlsTasksMembersCopyWith(
          DlsTasksMembers value, $Res Function(DlsTasksMembers) then) =
      _$DlsTasksMembersCopyWithImpl<$Res, DlsTasksMembers>;
  @useResult
  $Res call(
      {@JsonKey(name: 'executors') List<DlsTasksExecutors>? executors,
      @JsonKey(name: 'responsible') List<DlsTasksExecutors>? responsible,
      @JsonKey(name: 'observers') List<DlsTasksExecutors>? observers,
      @JsonKey(name: 'authors') List<DlsTasksExecutors>? authors});
}

/// @nodoc
class _$DlsTasksMembersCopyWithImpl<$Res, $Val extends DlsTasksMembers>
    implements $DlsTasksMembersCopyWith<$Res> {
  _$DlsTasksMembersCopyWithImpl(this._value, this._then);

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
              as List<DlsTasksExecutors>?,
      responsible: freezed == responsible
          ? _value.responsible
          : responsible // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksExecutors>?,
      observers: freezed == observers
          ? _value.observers
          : observers // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksExecutors>?,
      authors: freezed == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksExecutors>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DlsTasksMembersCopyWith<$Res>
    implements $DlsTasksMembersCopyWith<$Res> {
  factory _$$_DlsTasksMembersCopyWith(
          _$_DlsTasksMembers value, $Res Function(_$_DlsTasksMembers) then) =
      __$$_DlsTasksMembersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'executors') List<DlsTasksExecutors>? executors,
      @JsonKey(name: 'responsible') List<DlsTasksExecutors>? responsible,
      @JsonKey(name: 'observers') List<DlsTasksExecutors>? observers,
      @JsonKey(name: 'authors') List<DlsTasksExecutors>? authors});
}

/// @nodoc
class __$$_DlsTasksMembersCopyWithImpl<$Res>
    extends _$DlsTasksMembersCopyWithImpl<$Res, _$_DlsTasksMembers>
    implements _$$_DlsTasksMembersCopyWith<$Res> {
  __$$_DlsTasksMembersCopyWithImpl(
      _$_DlsTasksMembers _value, $Res Function(_$_DlsTasksMembers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? executors = freezed,
    Object? responsible = freezed,
    Object? observers = freezed,
    Object? authors = freezed,
  }) {
    return _then(_$_DlsTasksMembers(
      executors: freezed == executors
          ? _value._executors
          : executors // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksExecutors>?,
      responsible: freezed == responsible
          ? _value._responsible
          : responsible // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksExecutors>?,
      observers: freezed == observers
          ? _value._observers
          : observers // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksExecutors>?,
      authors: freezed == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksExecutors>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DlsTasksMembers extends _DlsTasksMembers {
  _$_DlsTasksMembers(
      {@JsonKey(name: 'executors') final List<DlsTasksExecutors>? executors,
      @JsonKey(name: 'responsible') final List<DlsTasksExecutors>? responsible,
      @JsonKey(name: 'observers') final List<DlsTasksExecutors>? observers,
      @JsonKey(name: 'authors') final List<DlsTasksExecutors>? authors})
      : _executors = executors,
        _responsible = responsible,
        _observers = observers,
        _authors = authors,
        super._();

  factory _$_DlsTasksMembers.fromJson(Map<String, dynamic> json) =>
      _$$_DlsTasksMembersFromJson(json);

  final List<DlsTasksExecutors>? _executors;
  @override
  @JsonKey(name: 'executors')
  List<DlsTasksExecutors>? get executors {
    final value = _executors;
    if (value == null) return null;
    if (_executors is EqualUnmodifiableListView) return _executors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DlsTasksExecutors>? _responsible;
  @override
  @JsonKey(name: 'responsible')
  List<DlsTasksExecutors>? get responsible {
    final value = _responsible;
    if (value == null) return null;
    if (_responsible is EqualUnmodifiableListView) return _responsible;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DlsTasksExecutors>? _observers;
  @override
  @JsonKey(name: 'observers')
  List<DlsTasksExecutors>? get observers {
    final value = _observers;
    if (value == null) return null;
    if (_observers is EqualUnmodifiableListView) return _observers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DlsTasksExecutors>? _authors;
  @override
  @JsonKey(name: 'authors')
  List<DlsTasksExecutors>? get authors {
    final value = _authors;
    if (value == null) return null;
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DlsTasksMembers(executors: $executors, responsible: $responsible, observers: $observers, authors: $authors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DlsTasksMembers &&
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
  _$$_DlsTasksMembersCopyWith<_$_DlsTasksMembers> get copyWith =>
      __$$_DlsTasksMembersCopyWithImpl<_$_DlsTasksMembers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DlsTasksMembersToJson(
      this,
    );
  }
}

abstract class _DlsTasksMembers extends DlsTasksMembers {
  factory _DlsTasksMembers(
      {@JsonKey(name: 'executors')
          final List<DlsTasksExecutors>? executors,
      @JsonKey(name: 'responsible')
          final List<DlsTasksExecutors>? responsible,
      @JsonKey(name: 'observers')
          final List<DlsTasksExecutors>? observers,
      @JsonKey(name: 'authors')
          final List<DlsTasksExecutors>? authors}) = _$_DlsTasksMembers;
  _DlsTasksMembers._() : super._();

  factory _DlsTasksMembers.fromJson(Map<String, dynamic> json) =
      _$_DlsTasksMembers.fromJson;

  @override
  @JsonKey(name: 'executors')
  List<DlsTasksExecutors>? get executors;
  @override
  @JsonKey(name: 'responsible')
  List<DlsTasksExecutors>? get responsible;
  @override
  @JsonKey(name: 'observers')
  List<DlsTasksExecutors>? get observers;
  @override
  @JsonKey(name: 'authors')
  List<DlsTasksExecutors>? get authors;
  @override
  @JsonKey(ignore: true)
  _$$_DlsTasksMembersCopyWith<_$_DlsTasksMembers> get copyWith =>
      throw _privateConstructorUsedError;
}
