// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'series_repeat_event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SeriesRepeatEventModel _$SeriesRepeatEventModelFromJson(
    Map<String, dynamic> json) {
  return _SeriesRepeatEventModel.fromJson(json);
}

/// @nodoc
mixin _$SeriesRepeatEventModel {
  int get id => throw _privateConstructorUsedError;
  RepeatEventModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeriesRepeatEventModelCopyWith<SeriesRepeatEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesRepeatEventModelCopyWith<$Res> {
  factory $SeriesRepeatEventModelCopyWith(SeriesRepeatEventModel value,
          $Res Function(SeriesRepeatEventModel) then) =
      _$SeriesRepeatEventModelCopyWithImpl<$Res, SeriesRepeatEventModel>;
  @useResult
  $Res call({int id, RepeatEventModel data});

  $RepeatEventModelCopyWith<$Res> get data;
}

/// @nodoc
class _$SeriesRepeatEventModelCopyWithImpl<$Res,
        $Val extends SeriesRepeatEventModel>
    implements $SeriesRepeatEventModelCopyWith<$Res> {
  _$SeriesRepeatEventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RepeatEventModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RepeatEventModelCopyWith<$Res> get data {
    return $RepeatEventModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SeriesRepeatEventModelCopyWith<$Res>
    implements $SeriesRepeatEventModelCopyWith<$Res> {
  factory _$$_SeriesRepeatEventModelCopyWith(_$_SeriesRepeatEventModel value,
          $Res Function(_$_SeriesRepeatEventModel) then) =
      __$$_SeriesRepeatEventModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, RepeatEventModel data});

  @override
  $RepeatEventModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SeriesRepeatEventModelCopyWithImpl<$Res>
    extends _$SeriesRepeatEventModelCopyWithImpl<$Res,
        _$_SeriesRepeatEventModel>
    implements _$$_SeriesRepeatEventModelCopyWith<$Res> {
  __$$_SeriesRepeatEventModelCopyWithImpl(_$_SeriesRepeatEventModel _value,
      $Res Function(_$_SeriesRepeatEventModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
  }) {
    return _then(_$_SeriesRepeatEventModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RepeatEventModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SeriesRepeatEventModel implements _SeriesRepeatEventModel {
  const _$_SeriesRepeatEventModel({required this.id, required this.data});

  factory _$_SeriesRepeatEventModel.fromJson(Map<String, dynamic> json) =>
      _$$_SeriesRepeatEventModelFromJson(json);

  @override
  final int id;
  @override
  final RepeatEventModel data;

  @override
  String toString() {
    return 'SeriesRepeatEventModel(id: $id, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeriesRepeatEventModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeriesRepeatEventModelCopyWith<_$_SeriesRepeatEventModel> get copyWith =>
      __$$_SeriesRepeatEventModelCopyWithImpl<_$_SeriesRepeatEventModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeriesRepeatEventModelToJson(
      this,
    );
  }
}

abstract class _SeriesRepeatEventModel implements SeriesRepeatEventModel {
  const factory _SeriesRepeatEventModel(
      {required final int id,
      required final RepeatEventModel data}) = _$_SeriesRepeatEventModel;

  factory _SeriesRepeatEventModel.fromJson(Map<String, dynamic> json) =
      _$_SeriesRepeatEventModel.fromJson;

  @override
  int get id;
  @override
  RepeatEventModel get data;
  @override
  @JsonKey(ignore: true)
  _$$_SeriesRepeatEventModelCopyWith<_$_SeriesRepeatEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}
