// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalendarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, CalendarViewType? viewType) init,
    required TResult Function(bool withLoading) fetch,
    required TResult Function(DateTime date, CalendarViewType? viewType)
        setDateAndViewType,
    required TResult Function(CalendarViewType type) changeViewType,
    required TResult Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)
        addCalendarItem,
    required TResult Function(String message) emitError,
    required TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)
        changeCalendarItemTime,
    required TResult Function(int id, bool isCompleted) changeTodoStatus,
    required TResult Function(DateTime menuTime) manageMenu,
    required TResult Function() removeMenu,
    required TResult Function(CalendarModel model) updateModel,
    required TResult Function(DateTime time, CalendarItemModel event)
        moveEventTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date, CalendarViewType? viewType)? init,
    TResult? Function(bool withLoading)? fetch,
    TResult? Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult? Function(CalendarViewType type)? changeViewType,
    TResult? Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)?
        addCalendarItem,
    TResult? Function(String message)? emitError,
    TResult? Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult? Function(int id, bool isCompleted)? changeTodoStatus,
    TResult? Function(DateTime menuTime)? manageMenu,
    TResult? Function()? removeMenu,
    TResult? Function(CalendarModel model)? updateModel,
    TResult? Function(DateTime time, CalendarItemModel event)? moveEventTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, CalendarViewType? viewType)? init,
    TResult Function(bool withLoading)? fetch,
    TResult Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult Function(CalendarViewType type)? changeViewType,
    TResult Function(CalendarItemType calendarItemType, DateTime? startDateTime,
            DateTime? endDateTime)?
        addCalendarItem,
    TResult Function(String message)? emitError,
    TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult Function(int id, bool isCompleted)? changeTodoStatus,
    TResult Function(DateTime menuTime)? manageMenu,
    TResult Function()? removeMenu,
    TResult Function(CalendarModel model)? updateModel,
    TResult Function(DateTime time, CalendarItemModel event)? moveEventTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetDateAndViewType value) setDateAndViewType,
    required TResult Function(_ChangeViewType value) changeViewType,
    required TResult Function(_AddCalendarItem value) addCalendarItem,
    required TResult Function(_EmitError value) emitError,
    required TResult Function(_ChangeCalendarItemTime value)
        changeCalendarItemTime,
    required TResult Function(_ChangeTodoStatus value) changeTodoStatus,
    required TResult Function(_ManageMenu value) manageMenu,
    required TResult Function(_RemoveMenu value) removeMenu,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_MoveEventTime value) moveEventTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult? Function(_ChangeViewType value)? changeViewType,
    TResult? Function(_AddCalendarItem value)? addCalendarItem,
    TResult? Function(_EmitError value)? emitError,
    TResult? Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult? Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult? Function(_ManageMenu value)? manageMenu,
    TResult? Function(_RemoveMenu value)? removeMenu,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_MoveEventTime value)? moveEventTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult Function(_ChangeViewType value)? changeViewType,
    TResult Function(_AddCalendarItem value)? addCalendarItem,
    TResult Function(_EmitError value)? emitError,
    TResult Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult Function(_ManageMenu value)? manageMenu,
    TResult Function(_RemoveMenu value)? removeMenu,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_MoveEventTime value)? moveEventTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventCopyWith<$Res> {
  factory $CalendarEventCopyWith(
          CalendarEvent value, $Res Function(CalendarEvent) then) =
      _$CalendarEventCopyWithImpl<$Res, CalendarEvent>;
}

/// @nodoc
class _$CalendarEventCopyWithImpl<$Res, $Val extends CalendarEvent>
    implements $CalendarEventCopyWith<$Res> {
  _$CalendarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date, CalendarViewType? viewType});
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? viewType = freezed,
  }) {
    return _then(_$_Init(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      viewType: freezed == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as CalendarViewType?,
    ));
  }
}

/// @nodoc

class _$_Init extends _Init {
  const _$_Init({required this.date, this.viewType}) : super._();

  @override
  final DateTime date;
  @override
  final CalendarViewType? viewType;

  @override
  String toString() {
    return 'CalendarEvent.init(date: $date, viewType: $viewType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Init &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.viewType, viewType) ||
                other.viewType == viewType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, viewType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitCopyWith<_$_Init> get copyWith =>
      __$$_InitCopyWithImpl<_$_Init>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, CalendarViewType? viewType) init,
    required TResult Function(bool withLoading) fetch,
    required TResult Function(DateTime date, CalendarViewType? viewType)
        setDateAndViewType,
    required TResult Function(CalendarViewType type) changeViewType,
    required TResult Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)
        addCalendarItem,
    required TResult Function(String message) emitError,
    required TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)
        changeCalendarItemTime,
    required TResult Function(int id, bool isCompleted) changeTodoStatus,
    required TResult Function(DateTime menuTime) manageMenu,
    required TResult Function() removeMenu,
    required TResult Function(CalendarModel model) updateModel,
    required TResult Function(DateTime time, CalendarItemModel event)
        moveEventTime,
  }) {
    return init(date, viewType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date, CalendarViewType? viewType)? init,
    TResult? Function(bool withLoading)? fetch,
    TResult? Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult? Function(CalendarViewType type)? changeViewType,
    TResult? Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)?
        addCalendarItem,
    TResult? Function(String message)? emitError,
    TResult? Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult? Function(int id, bool isCompleted)? changeTodoStatus,
    TResult? Function(DateTime menuTime)? manageMenu,
    TResult? Function()? removeMenu,
    TResult? Function(CalendarModel model)? updateModel,
    TResult? Function(DateTime time, CalendarItemModel event)? moveEventTime,
  }) {
    return init?.call(date, viewType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, CalendarViewType? viewType)? init,
    TResult Function(bool withLoading)? fetch,
    TResult Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult Function(CalendarViewType type)? changeViewType,
    TResult Function(CalendarItemType calendarItemType, DateTime? startDateTime,
            DateTime? endDateTime)?
        addCalendarItem,
    TResult Function(String message)? emitError,
    TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult Function(int id, bool isCompleted)? changeTodoStatus,
    TResult Function(DateTime menuTime)? manageMenu,
    TResult Function()? removeMenu,
    TResult Function(CalendarModel model)? updateModel,
    TResult Function(DateTime time, CalendarItemModel event)? moveEventTime,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(date, viewType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetDateAndViewType value) setDateAndViewType,
    required TResult Function(_ChangeViewType value) changeViewType,
    required TResult Function(_AddCalendarItem value) addCalendarItem,
    required TResult Function(_EmitError value) emitError,
    required TResult Function(_ChangeCalendarItemTime value)
        changeCalendarItemTime,
    required TResult Function(_ChangeTodoStatus value) changeTodoStatus,
    required TResult Function(_ManageMenu value) manageMenu,
    required TResult Function(_RemoveMenu value) removeMenu,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_MoveEventTime value) moveEventTime,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult? Function(_ChangeViewType value)? changeViewType,
    TResult? Function(_AddCalendarItem value)? addCalendarItem,
    TResult? Function(_EmitError value)? emitError,
    TResult? Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult? Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult? Function(_ManageMenu value)? manageMenu,
    TResult? Function(_RemoveMenu value)? removeMenu,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_MoveEventTime value)? moveEventTime,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult Function(_ChangeViewType value)? changeViewType,
    TResult Function(_AddCalendarItem value)? addCalendarItem,
    TResult Function(_EmitError value)? emitError,
    TResult Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult Function(_ManageMenu value)? manageMenu,
    TResult Function(_RemoveMenu value)? removeMenu,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_MoveEventTime value)? moveEventTime,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init extends CalendarEvent {
  const factory _Init(
      {required final DateTime date,
      final CalendarViewType? viewType}) = _$_Init;
  const _Init._() : super._();

  DateTime get date;
  CalendarViewType? get viewType;
  @JsonKey(ignore: true)
  _$$_InitCopyWith<_$_Init> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
  @useResult
  $Res call({bool withLoading});
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$_Fetch>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? withLoading = null,
  }) {
    return _then(_$_Fetch(
      withLoading: null == withLoading
          ? _value.withLoading
          : withLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Fetch extends _Fetch {
  const _$_Fetch({this.withLoading = true}) : super._();

  @override
  @JsonKey()
  final bool withLoading;

  @override
  String toString() {
    return 'CalendarEvent.fetch(withLoading: $withLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fetch &&
            (identical(other.withLoading, withLoading) ||
                other.withLoading == withLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, withLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      __$$_FetchCopyWithImpl<_$_Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, CalendarViewType? viewType) init,
    required TResult Function(bool withLoading) fetch,
    required TResult Function(DateTime date, CalendarViewType? viewType)
        setDateAndViewType,
    required TResult Function(CalendarViewType type) changeViewType,
    required TResult Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)
        addCalendarItem,
    required TResult Function(String message) emitError,
    required TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)
        changeCalendarItemTime,
    required TResult Function(int id, bool isCompleted) changeTodoStatus,
    required TResult Function(DateTime menuTime) manageMenu,
    required TResult Function() removeMenu,
    required TResult Function(CalendarModel model) updateModel,
    required TResult Function(DateTime time, CalendarItemModel event)
        moveEventTime,
  }) {
    return fetch(withLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date, CalendarViewType? viewType)? init,
    TResult? Function(bool withLoading)? fetch,
    TResult? Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult? Function(CalendarViewType type)? changeViewType,
    TResult? Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)?
        addCalendarItem,
    TResult? Function(String message)? emitError,
    TResult? Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult? Function(int id, bool isCompleted)? changeTodoStatus,
    TResult? Function(DateTime menuTime)? manageMenu,
    TResult? Function()? removeMenu,
    TResult? Function(CalendarModel model)? updateModel,
    TResult? Function(DateTime time, CalendarItemModel event)? moveEventTime,
  }) {
    return fetch?.call(withLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, CalendarViewType? viewType)? init,
    TResult Function(bool withLoading)? fetch,
    TResult Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult Function(CalendarViewType type)? changeViewType,
    TResult Function(CalendarItemType calendarItemType, DateTime? startDateTime,
            DateTime? endDateTime)?
        addCalendarItem,
    TResult Function(String message)? emitError,
    TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult Function(int id, bool isCompleted)? changeTodoStatus,
    TResult Function(DateTime menuTime)? manageMenu,
    TResult Function()? removeMenu,
    TResult Function(CalendarModel model)? updateModel,
    TResult Function(DateTime time, CalendarItemModel event)? moveEventTime,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(withLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetDateAndViewType value) setDateAndViewType,
    required TResult Function(_ChangeViewType value) changeViewType,
    required TResult Function(_AddCalendarItem value) addCalendarItem,
    required TResult Function(_EmitError value) emitError,
    required TResult Function(_ChangeCalendarItemTime value)
        changeCalendarItemTime,
    required TResult Function(_ChangeTodoStatus value) changeTodoStatus,
    required TResult Function(_ManageMenu value) manageMenu,
    required TResult Function(_RemoveMenu value) removeMenu,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_MoveEventTime value) moveEventTime,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult? Function(_ChangeViewType value)? changeViewType,
    TResult? Function(_AddCalendarItem value)? addCalendarItem,
    TResult? Function(_EmitError value)? emitError,
    TResult? Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult? Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult? Function(_ManageMenu value)? manageMenu,
    TResult? Function(_RemoveMenu value)? removeMenu,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_MoveEventTime value)? moveEventTime,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult Function(_ChangeViewType value)? changeViewType,
    TResult Function(_AddCalendarItem value)? addCalendarItem,
    TResult Function(_EmitError value)? emitError,
    TResult Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult Function(_ManageMenu value)? manageMenu,
    TResult Function(_RemoveMenu value)? removeMenu,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_MoveEventTime value)? moveEventTime,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch extends CalendarEvent {
  const factory _Fetch({final bool withLoading}) = _$_Fetch;
  const _Fetch._() : super._();

  bool get withLoading;
  @JsonKey(ignore: true)
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetDateAndViewTypeCopyWith<$Res> {
  factory _$$_SetDateAndViewTypeCopyWith(_$_SetDateAndViewType value,
          $Res Function(_$_SetDateAndViewType) then) =
      __$$_SetDateAndViewTypeCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date, CalendarViewType? viewType});
}

/// @nodoc
class __$$_SetDateAndViewTypeCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$_SetDateAndViewType>
    implements _$$_SetDateAndViewTypeCopyWith<$Res> {
  __$$_SetDateAndViewTypeCopyWithImpl(
      _$_SetDateAndViewType _value, $Res Function(_$_SetDateAndViewType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? viewType = freezed,
  }) {
    return _then(_$_SetDateAndViewType(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      viewType: freezed == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as CalendarViewType?,
    ));
  }
}

/// @nodoc

class _$_SetDateAndViewType extends _SetDateAndViewType {
  const _$_SetDateAndViewType({required this.date, this.viewType}) : super._();

  @override
  final DateTime date;
  @override
  final CalendarViewType? viewType;

  @override
  String toString() {
    return 'CalendarEvent.setDateAndViewType(date: $date, viewType: $viewType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetDateAndViewType &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.viewType, viewType) ||
                other.viewType == viewType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, viewType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetDateAndViewTypeCopyWith<_$_SetDateAndViewType> get copyWith =>
      __$$_SetDateAndViewTypeCopyWithImpl<_$_SetDateAndViewType>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, CalendarViewType? viewType) init,
    required TResult Function(bool withLoading) fetch,
    required TResult Function(DateTime date, CalendarViewType? viewType)
        setDateAndViewType,
    required TResult Function(CalendarViewType type) changeViewType,
    required TResult Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)
        addCalendarItem,
    required TResult Function(String message) emitError,
    required TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)
        changeCalendarItemTime,
    required TResult Function(int id, bool isCompleted) changeTodoStatus,
    required TResult Function(DateTime menuTime) manageMenu,
    required TResult Function() removeMenu,
    required TResult Function(CalendarModel model) updateModel,
    required TResult Function(DateTime time, CalendarItemModel event)
        moveEventTime,
  }) {
    return setDateAndViewType(date, viewType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date, CalendarViewType? viewType)? init,
    TResult? Function(bool withLoading)? fetch,
    TResult? Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult? Function(CalendarViewType type)? changeViewType,
    TResult? Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)?
        addCalendarItem,
    TResult? Function(String message)? emitError,
    TResult? Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult? Function(int id, bool isCompleted)? changeTodoStatus,
    TResult? Function(DateTime menuTime)? manageMenu,
    TResult? Function()? removeMenu,
    TResult? Function(CalendarModel model)? updateModel,
    TResult? Function(DateTime time, CalendarItemModel event)? moveEventTime,
  }) {
    return setDateAndViewType?.call(date, viewType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, CalendarViewType? viewType)? init,
    TResult Function(bool withLoading)? fetch,
    TResult Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult Function(CalendarViewType type)? changeViewType,
    TResult Function(CalendarItemType calendarItemType, DateTime? startDateTime,
            DateTime? endDateTime)?
        addCalendarItem,
    TResult Function(String message)? emitError,
    TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult Function(int id, bool isCompleted)? changeTodoStatus,
    TResult Function(DateTime menuTime)? manageMenu,
    TResult Function()? removeMenu,
    TResult Function(CalendarModel model)? updateModel,
    TResult Function(DateTime time, CalendarItemModel event)? moveEventTime,
    required TResult orElse(),
  }) {
    if (setDateAndViewType != null) {
      return setDateAndViewType(date, viewType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetDateAndViewType value) setDateAndViewType,
    required TResult Function(_ChangeViewType value) changeViewType,
    required TResult Function(_AddCalendarItem value) addCalendarItem,
    required TResult Function(_EmitError value) emitError,
    required TResult Function(_ChangeCalendarItemTime value)
        changeCalendarItemTime,
    required TResult Function(_ChangeTodoStatus value) changeTodoStatus,
    required TResult Function(_ManageMenu value) manageMenu,
    required TResult Function(_RemoveMenu value) removeMenu,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_MoveEventTime value) moveEventTime,
  }) {
    return setDateAndViewType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult? Function(_ChangeViewType value)? changeViewType,
    TResult? Function(_AddCalendarItem value)? addCalendarItem,
    TResult? Function(_EmitError value)? emitError,
    TResult? Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult? Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult? Function(_ManageMenu value)? manageMenu,
    TResult? Function(_RemoveMenu value)? removeMenu,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_MoveEventTime value)? moveEventTime,
  }) {
    return setDateAndViewType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult Function(_ChangeViewType value)? changeViewType,
    TResult Function(_AddCalendarItem value)? addCalendarItem,
    TResult Function(_EmitError value)? emitError,
    TResult Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult Function(_ManageMenu value)? manageMenu,
    TResult Function(_RemoveMenu value)? removeMenu,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_MoveEventTime value)? moveEventTime,
    required TResult orElse(),
  }) {
    if (setDateAndViewType != null) {
      return setDateAndViewType(this);
    }
    return orElse();
  }
}

abstract class _SetDateAndViewType extends CalendarEvent {
  const factory _SetDateAndViewType(
      {required final DateTime date,
      final CalendarViewType? viewType}) = _$_SetDateAndViewType;
  const _SetDateAndViewType._() : super._();

  DateTime get date;
  CalendarViewType? get viewType;
  @JsonKey(ignore: true)
  _$$_SetDateAndViewTypeCopyWith<_$_SetDateAndViewType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeViewTypeCopyWith<$Res> {
  factory _$$_ChangeViewTypeCopyWith(
          _$_ChangeViewType value, $Res Function(_$_ChangeViewType) then) =
      __$$_ChangeViewTypeCopyWithImpl<$Res>;
  @useResult
  $Res call({CalendarViewType type});
}

/// @nodoc
class __$$_ChangeViewTypeCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$_ChangeViewType>
    implements _$$_ChangeViewTypeCopyWith<$Res> {
  __$$_ChangeViewTypeCopyWithImpl(
      _$_ChangeViewType _value, $Res Function(_$_ChangeViewType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_ChangeViewType(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CalendarViewType,
    ));
  }
}

/// @nodoc

class _$_ChangeViewType extends _ChangeViewType {
  const _$_ChangeViewType(this.type) : super._();

  @override
  final CalendarViewType type;

  @override
  String toString() {
    return 'CalendarEvent.changeViewType(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeViewType &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeViewTypeCopyWith<_$_ChangeViewType> get copyWith =>
      __$$_ChangeViewTypeCopyWithImpl<_$_ChangeViewType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, CalendarViewType? viewType) init,
    required TResult Function(bool withLoading) fetch,
    required TResult Function(DateTime date, CalendarViewType? viewType)
        setDateAndViewType,
    required TResult Function(CalendarViewType type) changeViewType,
    required TResult Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)
        addCalendarItem,
    required TResult Function(String message) emitError,
    required TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)
        changeCalendarItemTime,
    required TResult Function(int id, bool isCompleted) changeTodoStatus,
    required TResult Function(DateTime menuTime) manageMenu,
    required TResult Function() removeMenu,
    required TResult Function(CalendarModel model) updateModel,
    required TResult Function(DateTime time, CalendarItemModel event)
        moveEventTime,
  }) {
    return changeViewType(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date, CalendarViewType? viewType)? init,
    TResult? Function(bool withLoading)? fetch,
    TResult? Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult? Function(CalendarViewType type)? changeViewType,
    TResult? Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)?
        addCalendarItem,
    TResult? Function(String message)? emitError,
    TResult? Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult? Function(int id, bool isCompleted)? changeTodoStatus,
    TResult? Function(DateTime menuTime)? manageMenu,
    TResult? Function()? removeMenu,
    TResult? Function(CalendarModel model)? updateModel,
    TResult? Function(DateTime time, CalendarItemModel event)? moveEventTime,
  }) {
    return changeViewType?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, CalendarViewType? viewType)? init,
    TResult Function(bool withLoading)? fetch,
    TResult Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult Function(CalendarViewType type)? changeViewType,
    TResult Function(CalendarItemType calendarItemType, DateTime? startDateTime,
            DateTime? endDateTime)?
        addCalendarItem,
    TResult Function(String message)? emitError,
    TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult Function(int id, bool isCompleted)? changeTodoStatus,
    TResult Function(DateTime menuTime)? manageMenu,
    TResult Function()? removeMenu,
    TResult Function(CalendarModel model)? updateModel,
    TResult Function(DateTime time, CalendarItemModel event)? moveEventTime,
    required TResult orElse(),
  }) {
    if (changeViewType != null) {
      return changeViewType(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetDateAndViewType value) setDateAndViewType,
    required TResult Function(_ChangeViewType value) changeViewType,
    required TResult Function(_AddCalendarItem value) addCalendarItem,
    required TResult Function(_EmitError value) emitError,
    required TResult Function(_ChangeCalendarItemTime value)
        changeCalendarItemTime,
    required TResult Function(_ChangeTodoStatus value) changeTodoStatus,
    required TResult Function(_ManageMenu value) manageMenu,
    required TResult Function(_RemoveMenu value) removeMenu,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_MoveEventTime value) moveEventTime,
  }) {
    return changeViewType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult? Function(_ChangeViewType value)? changeViewType,
    TResult? Function(_AddCalendarItem value)? addCalendarItem,
    TResult? Function(_EmitError value)? emitError,
    TResult? Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult? Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult? Function(_ManageMenu value)? manageMenu,
    TResult? Function(_RemoveMenu value)? removeMenu,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_MoveEventTime value)? moveEventTime,
  }) {
    return changeViewType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult Function(_ChangeViewType value)? changeViewType,
    TResult Function(_AddCalendarItem value)? addCalendarItem,
    TResult Function(_EmitError value)? emitError,
    TResult Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult Function(_ManageMenu value)? manageMenu,
    TResult Function(_RemoveMenu value)? removeMenu,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_MoveEventTime value)? moveEventTime,
    required TResult orElse(),
  }) {
    if (changeViewType != null) {
      return changeViewType(this);
    }
    return orElse();
  }
}

abstract class _ChangeViewType extends CalendarEvent {
  const factory _ChangeViewType(final CalendarViewType type) =
      _$_ChangeViewType;
  const _ChangeViewType._() : super._();

  CalendarViewType get type;
  @JsonKey(ignore: true)
  _$$_ChangeViewTypeCopyWith<_$_ChangeViewType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddCalendarItemCopyWith<$Res> {
  factory _$$_AddCalendarItemCopyWith(
          _$_AddCalendarItem value, $Res Function(_$_AddCalendarItem) then) =
      __$$_AddCalendarItemCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CalendarItemType calendarItemType,
      DateTime? startDateTime,
      DateTime? endDateTime});
}

/// @nodoc
class __$$_AddCalendarItemCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$_AddCalendarItem>
    implements _$$_AddCalendarItemCopyWith<$Res> {
  __$$_AddCalendarItemCopyWithImpl(
      _$_AddCalendarItem _value, $Res Function(_$_AddCalendarItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendarItemType = null,
    Object? startDateTime = freezed,
    Object? endDateTime = freezed,
  }) {
    return _then(_$_AddCalendarItem(
      null == calendarItemType
          ? _value.calendarItemType
          : calendarItemType // ignore: cast_nullable_to_non_nullable
              as CalendarItemType,
      freezed == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_AddCalendarItem extends _AddCalendarItem {
  const _$_AddCalendarItem(
      this.calendarItemType, this.startDateTime, this.endDateTime)
      : super._();

  @override
  final CalendarItemType calendarItemType;
  @override
  final DateTime? startDateTime;
  @override
  final DateTime? endDateTime;

  @override
  String toString() {
    return 'CalendarEvent.addCalendarItem(calendarItemType: $calendarItemType, startDateTime: $startDateTime, endDateTime: $endDateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCalendarItem &&
            (identical(other.calendarItemType, calendarItemType) ||
                other.calendarItemType == calendarItemType) &&
            (identical(other.startDateTime, startDateTime) ||
                other.startDateTime == startDateTime) &&
            (identical(other.endDateTime, endDateTime) ||
                other.endDateTime == endDateTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, calendarItemType, startDateTime, endDateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCalendarItemCopyWith<_$_AddCalendarItem> get copyWith =>
      __$$_AddCalendarItemCopyWithImpl<_$_AddCalendarItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, CalendarViewType? viewType) init,
    required TResult Function(bool withLoading) fetch,
    required TResult Function(DateTime date, CalendarViewType? viewType)
        setDateAndViewType,
    required TResult Function(CalendarViewType type) changeViewType,
    required TResult Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)
        addCalendarItem,
    required TResult Function(String message) emitError,
    required TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)
        changeCalendarItemTime,
    required TResult Function(int id, bool isCompleted) changeTodoStatus,
    required TResult Function(DateTime menuTime) manageMenu,
    required TResult Function() removeMenu,
    required TResult Function(CalendarModel model) updateModel,
    required TResult Function(DateTime time, CalendarItemModel event)
        moveEventTime,
  }) {
    return addCalendarItem(calendarItemType, startDateTime, endDateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date, CalendarViewType? viewType)? init,
    TResult? Function(bool withLoading)? fetch,
    TResult? Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult? Function(CalendarViewType type)? changeViewType,
    TResult? Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)?
        addCalendarItem,
    TResult? Function(String message)? emitError,
    TResult? Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult? Function(int id, bool isCompleted)? changeTodoStatus,
    TResult? Function(DateTime menuTime)? manageMenu,
    TResult? Function()? removeMenu,
    TResult? Function(CalendarModel model)? updateModel,
    TResult? Function(DateTime time, CalendarItemModel event)? moveEventTime,
  }) {
    return addCalendarItem?.call(calendarItemType, startDateTime, endDateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, CalendarViewType? viewType)? init,
    TResult Function(bool withLoading)? fetch,
    TResult Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult Function(CalendarViewType type)? changeViewType,
    TResult Function(CalendarItemType calendarItemType, DateTime? startDateTime,
            DateTime? endDateTime)?
        addCalendarItem,
    TResult Function(String message)? emitError,
    TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult Function(int id, bool isCompleted)? changeTodoStatus,
    TResult Function(DateTime menuTime)? manageMenu,
    TResult Function()? removeMenu,
    TResult Function(CalendarModel model)? updateModel,
    TResult Function(DateTime time, CalendarItemModel event)? moveEventTime,
    required TResult orElse(),
  }) {
    if (addCalendarItem != null) {
      return addCalendarItem(calendarItemType, startDateTime, endDateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetDateAndViewType value) setDateAndViewType,
    required TResult Function(_ChangeViewType value) changeViewType,
    required TResult Function(_AddCalendarItem value) addCalendarItem,
    required TResult Function(_EmitError value) emitError,
    required TResult Function(_ChangeCalendarItemTime value)
        changeCalendarItemTime,
    required TResult Function(_ChangeTodoStatus value) changeTodoStatus,
    required TResult Function(_ManageMenu value) manageMenu,
    required TResult Function(_RemoveMenu value) removeMenu,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_MoveEventTime value) moveEventTime,
  }) {
    return addCalendarItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult? Function(_ChangeViewType value)? changeViewType,
    TResult? Function(_AddCalendarItem value)? addCalendarItem,
    TResult? Function(_EmitError value)? emitError,
    TResult? Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult? Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult? Function(_ManageMenu value)? manageMenu,
    TResult? Function(_RemoveMenu value)? removeMenu,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_MoveEventTime value)? moveEventTime,
  }) {
    return addCalendarItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult Function(_ChangeViewType value)? changeViewType,
    TResult Function(_AddCalendarItem value)? addCalendarItem,
    TResult Function(_EmitError value)? emitError,
    TResult Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult Function(_ManageMenu value)? manageMenu,
    TResult Function(_RemoveMenu value)? removeMenu,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_MoveEventTime value)? moveEventTime,
    required TResult orElse(),
  }) {
    if (addCalendarItem != null) {
      return addCalendarItem(this);
    }
    return orElse();
  }
}

abstract class _AddCalendarItem extends CalendarEvent {
  const factory _AddCalendarItem(
      final CalendarItemType calendarItemType,
      final DateTime? startDateTime,
      final DateTime? endDateTime) = _$_AddCalendarItem;
  const _AddCalendarItem._() : super._();

  CalendarItemType get calendarItemType;
  DateTime? get startDateTime;
  DateTime? get endDateTime;
  @JsonKey(ignore: true)
  _$$_AddCalendarItemCopyWith<_$_AddCalendarItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmitErrorCopyWith<$Res> {
  factory _$$_EmitErrorCopyWith(
          _$_EmitError value, $Res Function(_$_EmitError) then) =
      __$$_EmitErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_EmitErrorCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$_EmitError>
    implements _$$_EmitErrorCopyWith<$Res> {
  __$$_EmitErrorCopyWithImpl(
      _$_EmitError _value, $Res Function(_$_EmitError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_EmitError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmitError extends _EmitError {
  const _$_EmitError(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'CalendarEvent.emitError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmitError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmitErrorCopyWith<_$_EmitError> get copyWith =>
      __$$_EmitErrorCopyWithImpl<_$_EmitError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, CalendarViewType? viewType) init,
    required TResult Function(bool withLoading) fetch,
    required TResult Function(DateTime date, CalendarViewType? viewType)
        setDateAndViewType,
    required TResult Function(CalendarViewType type) changeViewType,
    required TResult Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)
        addCalendarItem,
    required TResult Function(String message) emitError,
    required TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)
        changeCalendarItemTime,
    required TResult Function(int id, bool isCompleted) changeTodoStatus,
    required TResult Function(DateTime menuTime) manageMenu,
    required TResult Function() removeMenu,
    required TResult Function(CalendarModel model) updateModel,
    required TResult Function(DateTime time, CalendarItemModel event)
        moveEventTime,
  }) {
    return emitError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date, CalendarViewType? viewType)? init,
    TResult? Function(bool withLoading)? fetch,
    TResult? Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult? Function(CalendarViewType type)? changeViewType,
    TResult? Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)?
        addCalendarItem,
    TResult? Function(String message)? emitError,
    TResult? Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult? Function(int id, bool isCompleted)? changeTodoStatus,
    TResult? Function(DateTime menuTime)? manageMenu,
    TResult? Function()? removeMenu,
    TResult? Function(CalendarModel model)? updateModel,
    TResult? Function(DateTime time, CalendarItemModel event)? moveEventTime,
  }) {
    return emitError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, CalendarViewType? viewType)? init,
    TResult Function(bool withLoading)? fetch,
    TResult Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult Function(CalendarViewType type)? changeViewType,
    TResult Function(CalendarItemType calendarItemType, DateTime? startDateTime,
            DateTime? endDateTime)?
        addCalendarItem,
    TResult Function(String message)? emitError,
    TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult Function(int id, bool isCompleted)? changeTodoStatus,
    TResult Function(DateTime menuTime)? manageMenu,
    TResult Function()? removeMenu,
    TResult Function(CalendarModel model)? updateModel,
    TResult Function(DateTime time, CalendarItemModel event)? moveEventTime,
    required TResult orElse(),
  }) {
    if (emitError != null) {
      return emitError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetDateAndViewType value) setDateAndViewType,
    required TResult Function(_ChangeViewType value) changeViewType,
    required TResult Function(_AddCalendarItem value) addCalendarItem,
    required TResult Function(_EmitError value) emitError,
    required TResult Function(_ChangeCalendarItemTime value)
        changeCalendarItemTime,
    required TResult Function(_ChangeTodoStatus value) changeTodoStatus,
    required TResult Function(_ManageMenu value) manageMenu,
    required TResult Function(_RemoveMenu value) removeMenu,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_MoveEventTime value) moveEventTime,
  }) {
    return emitError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult? Function(_ChangeViewType value)? changeViewType,
    TResult? Function(_AddCalendarItem value)? addCalendarItem,
    TResult? Function(_EmitError value)? emitError,
    TResult? Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult? Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult? Function(_ManageMenu value)? manageMenu,
    TResult? Function(_RemoveMenu value)? removeMenu,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_MoveEventTime value)? moveEventTime,
  }) {
    return emitError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult Function(_ChangeViewType value)? changeViewType,
    TResult Function(_AddCalendarItem value)? addCalendarItem,
    TResult Function(_EmitError value)? emitError,
    TResult Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult Function(_ManageMenu value)? manageMenu,
    TResult Function(_RemoveMenu value)? removeMenu,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_MoveEventTime value)? moveEventTime,
    required TResult orElse(),
  }) {
    if (emitError != null) {
      return emitError(this);
    }
    return orElse();
  }
}

abstract class _EmitError extends CalendarEvent {
  const factory _EmitError(final String message) = _$_EmitError;
  const _EmitError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_EmitErrorCopyWith<_$_EmitError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeCalendarItemTimeCopyWith<$Res> {
  factory _$$_ChangeCalendarItemTimeCopyWith(_$_ChangeCalendarItemTime value,
          $Res Function(_$_ChangeCalendarItemTime) then) =
      __$$_ChangeCalendarItemTimeCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int? id,
      CalendarItemType calendarItemType,
      DateTime timeStart,
      DateTime timeEnd,
      Object model});
}

/// @nodoc
class __$$_ChangeCalendarItemTimeCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$_ChangeCalendarItemTime>
    implements _$$_ChangeCalendarItemTimeCopyWith<$Res> {
  __$$_ChangeCalendarItemTimeCopyWithImpl(_$_ChangeCalendarItemTime _value,
      $Res Function(_$_ChangeCalendarItemTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? calendarItemType = null,
    Object? timeStart = null,
    Object? timeEnd = null,
    Object? model = null,
  }) {
    return _then(_$_ChangeCalendarItemTime(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      null == calendarItemType
          ? _value.calendarItemType
          : calendarItemType // ignore: cast_nullable_to_non_nullable
              as CalendarItemType,
      null == timeStart
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == timeEnd
          ? _value.timeEnd
          : timeEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == model ? _value.model : model,
    ));
  }
}

/// @nodoc

class _$_ChangeCalendarItemTime extends _ChangeCalendarItemTime {
  const _$_ChangeCalendarItemTime(
      this.id, this.calendarItemType, this.timeStart, this.timeEnd, this.model)
      : super._();

  @override
  final int? id;
  @override
  final CalendarItemType calendarItemType;
  @override
  final DateTime timeStart;
  @override
  final DateTime timeEnd;
  @override
  final Object model;

  @override
  String toString() {
    return 'CalendarEvent.changeCalendarItemTime(id: $id, calendarItemType: $calendarItemType, timeStart: $timeStart, timeEnd: $timeEnd, model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeCalendarItemTime &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.calendarItemType, calendarItemType) ||
                other.calendarItemType == calendarItemType) &&
            (identical(other.timeStart, timeStart) ||
                other.timeStart == timeStart) &&
            (identical(other.timeEnd, timeEnd) || other.timeEnd == timeEnd) &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, calendarItemType, timeStart,
      timeEnd, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeCalendarItemTimeCopyWith<_$_ChangeCalendarItemTime> get copyWith =>
      __$$_ChangeCalendarItemTimeCopyWithImpl<_$_ChangeCalendarItemTime>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, CalendarViewType? viewType) init,
    required TResult Function(bool withLoading) fetch,
    required TResult Function(DateTime date, CalendarViewType? viewType)
        setDateAndViewType,
    required TResult Function(CalendarViewType type) changeViewType,
    required TResult Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)
        addCalendarItem,
    required TResult Function(String message) emitError,
    required TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)
        changeCalendarItemTime,
    required TResult Function(int id, bool isCompleted) changeTodoStatus,
    required TResult Function(DateTime menuTime) manageMenu,
    required TResult Function() removeMenu,
    required TResult Function(CalendarModel model) updateModel,
    required TResult Function(DateTime time, CalendarItemModel event)
        moveEventTime,
  }) {
    return changeCalendarItemTime(
        id, calendarItemType, timeStart, timeEnd, model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date, CalendarViewType? viewType)? init,
    TResult? Function(bool withLoading)? fetch,
    TResult? Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult? Function(CalendarViewType type)? changeViewType,
    TResult? Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)?
        addCalendarItem,
    TResult? Function(String message)? emitError,
    TResult? Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult? Function(int id, bool isCompleted)? changeTodoStatus,
    TResult? Function(DateTime menuTime)? manageMenu,
    TResult? Function()? removeMenu,
    TResult? Function(CalendarModel model)? updateModel,
    TResult? Function(DateTime time, CalendarItemModel event)? moveEventTime,
  }) {
    return changeCalendarItemTime?.call(
        id, calendarItemType, timeStart, timeEnd, model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, CalendarViewType? viewType)? init,
    TResult Function(bool withLoading)? fetch,
    TResult Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult Function(CalendarViewType type)? changeViewType,
    TResult Function(CalendarItemType calendarItemType, DateTime? startDateTime,
            DateTime? endDateTime)?
        addCalendarItem,
    TResult Function(String message)? emitError,
    TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult Function(int id, bool isCompleted)? changeTodoStatus,
    TResult Function(DateTime menuTime)? manageMenu,
    TResult Function()? removeMenu,
    TResult Function(CalendarModel model)? updateModel,
    TResult Function(DateTime time, CalendarItemModel event)? moveEventTime,
    required TResult orElse(),
  }) {
    if (changeCalendarItemTime != null) {
      return changeCalendarItemTime(
          id, calendarItemType, timeStart, timeEnd, model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetDateAndViewType value) setDateAndViewType,
    required TResult Function(_ChangeViewType value) changeViewType,
    required TResult Function(_AddCalendarItem value) addCalendarItem,
    required TResult Function(_EmitError value) emitError,
    required TResult Function(_ChangeCalendarItemTime value)
        changeCalendarItemTime,
    required TResult Function(_ChangeTodoStatus value) changeTodoStatus,
    required TResult Function(_ManageMenu value) manageMenu,
    required TResult Function(_RemoveMenu value) removeMenu,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_MoveEventTime value) moveEventTime,
  }) {
    return changeCalendarItemTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult? Function(_ChangeViewType value)? changeViewType,
    TResult? Function(_AddCalendarItem value)? addCalendarItem,
    TResult? Function(_EmitError value)? emitError,
    TResult? Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult? Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult? Function(_ManageMenu value)? manageMenu,
    TResult? Function(_RemoveMenu value)? removeMenu,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_MoveEventTime value)? moveEventTime,
  }) {
    return changeCalendarItemTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult Function(_ChangeViewType value)? changeViewType,
    TResult Function(_AddCalendarItem value)? addCalendarItem,
    TResult Function(_EmitError value)? emitError,
    TResult Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult Function(_ManageMenu value)? manageMenu,
    TResult Function(_RemoveMenu value)? removeMenu,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_MoveEventTime value)? moveEventTime,
    required TResult orElse(),
  }) {
    if (changeCalendarItemTime != null) {
      return changeCalendarItemTime(this);
    }
    return orElse();
  }
}

abstract class _ChangeCalendarItemTime extends CalendarEvent {
  const factory _ChangeCalendarItemTime(
      final int? id,
      final CalendarItemType calendarItemType,
      final DateTime timeStart,
      final DateTime timeEnd,
      final Object model) = _$_ChangeCalendarItemTime;
  const _ChangeCalendarItemTime._() : super._();

  int? get id;
  CalendarItemType get calendarItemType;
  DateTime get timeStart;
  DateTime get timeEnd;
  Object get model;
  @JsonKey(ignore: true)
  _$$_ChangeCalendarItemTimeCopyWith<_$_ChangeCalendarItemTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeTodoStatusCopyWith<$Res> {
  factory _$$_ChangeTodoStatusCopyWith(
          _$_ChangeTodoStatus value, $Res Function(_$_ChangeTodoStatus) then) =
      __$$_ChangeTodoStatusCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, bool isCompleted});
}

/// @nodoc
class __$$_ChangeTodoStatusCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$_ChangeTodoStatus>
    implements _$$_ChangeTodoStatusCopyWith<$Res> {
  __$$_ChangeTodoStatusCopyWithImpl(
      _$_ChangeTodoStatus _value, $Res Function(_$_ChangeTodoStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isCompleted = null,
  }) {
    return _then(_$_ChangeTodoStatus(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeTodoStatus extends _ChangeTodoStatus {
  const _$_ChangeTodoStatus(this.id, this.isCompleted) : super._();

  @override
  final int id;
  @override
  final bool isCompleted;

  @override
  String toString() {
    return 'CalendarEvent.changeTodoStatus(id: $id, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTodoStatus &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeTodoStatusCopyWith<_$_ChangeTodoStatus> get copyWith =>
      __$$_ChangeTodoStatusCopyWithImpl<_$_ChangeTodoStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, CalendarViewType? viewType) init,
    required TResult Function(bool withLoading) fetch,
    required TResult Function(DateTime date, CalendarViewType? viewType)
        setDateAndViewType,
    required TResult Function(CalendarViewType type) changeViewType,
    required TResult Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)
        addCalendarItem,
    required TResult Function(String message) emitError,
    required TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)
        changeCalendarItemTime,
    required TResult Function(int id, bool isCompleted) changeTodoStatus,
    required TResult Function(DateTime menuTime) manageMenu,
    required TResult Function() removeMenu,
    required TResult Function(CalendarModel model) updateModel,
    required TResult Function(DateTime time, CalendarItemModel event)
        moveEventTime,
  }) {
    return changeTodoStatus(id, isCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date, CalendarViewType? viewType)? init,
    TResult? Function(bool withLoading)? fetch,
    TResult? Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult? Function(CalendarViewType type)? changeViewType,
    TResult? Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)?
        addCalendarItem,
    TResult? Function(String message)? emitError,
    TResult? Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult? Function(int id, bool isCompleted)? changeTodoStatus,
    TResult? Function(DateTime menuTime)? manageMenu,
    TResult? Function()? removeMenu,
    TResult? Function(CalendarModel model)? updateModel,
    TResult? Function(DateTime time, CalendarItemModel event)? moveEventTime,
  }) {
    return changeTodoStatus?.call(id, isCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, CalendarViewType? viewType)? init,
    TResult Function(bool withLoading)? fetch,
    TResult Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult Function(CalendarViewType type)? changeViewType,
    TResult Function(CalendarItemType calendarItemType, DateTime? startDateTime,
            DateTime? endDateTime)?
        addCalendarItem,
    TResult Function(String message)? emitError,
    TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult Function(int id, bool isCompleted)? changeTodoStatus,
    TResult Function(DateTime menuTime)? manageMenu,
    TResult Function()? removeMenu,
    TResult Function(CalendarModel model)? updateModel,
    TResult Function(DateTime time, CalendarItemModel event)? moveEventTime,
    required TResult orElse(),
  }) {
    if (changeTodoStatus != null) {
      return changeTodoStatus(id, isCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetDateAndViewType value) setDateAndViewType,
    required TResult Function(_ChangeViewType value) changeViewType,
    required TResult Function(_AddCalendarItem value) addCalendarItem,
    required TResult Function(_EmitError value) emitError,
    required TResult Function(_ChangeCalendarItemTime value)
        changeCalendarItemTime,
    required TResult Function(_ChangeTodoStatus value) changeTodoStatus,
    required TResult Function(_ManageMenu value) manageMenu,
    required TResult Function(_RemoveMenu value) removeMenu,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_MoveEventTime value) moveEventTime,
  }) {
    return changeTodoStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult? Function(_ChangeViewType value)? changeViewType,
    TResult? Function(_AddCalendarItem value)? addCalendarItem,
    TResult? Function(_EmitError value)? emitError,
    TResult? Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult? Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult? Function(_ManageMenu value)? manageMenu,
    TResult? Function(_RemoveMenu value)? removeMenu,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_MoveEventTime value)? moveEventTime,
  }) {
    return changeTodoStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult Function(_ChangeViewType value)? changeViewType,
    TResult Function(_AddCalendarItem value)? addCalendarItem,
    TResult Function(_EmitError value)? emitError,
    TResult Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult Function(_ManageMenu value)? manageMenu,
    TResult Function(_RemoveMenu value)? removeMenu,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_MoveEventTime value)? moveEventTime,
    required TResult orElse(),
  }) {
    if (changeTodoStatus != null) {
      return changeTodoStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeTodoStatus extends CalendarEvent {
  const factory _ChangeTodoStatus(final int id, final bool isCompleted) =
      _$_ChangeTodoStatus;
  const _ChangeTodoStatus._() : super._();

  int get id;
  bool get isCompleted;
  @JsonKey(ignore: true)
  _$$_ChangeTodoStatusCopyWith<_$_ChangeTodoStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ManageMenuCopyWith<$Res> {
  factory _$$_ManageMenuCopyWith(
          _$_ManageMenu value, $Res Function(_$_ManageMenu) then) =
      __$$_ManageMenuCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime menuTime});
}

/// @nodoc
class __$$_ManageMenuCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$_ManageMenu>
    implements _$$_ManageMenuCopyWith<$Res> {
  __$$_ManageMenuCopyWithImpl(
      _$_ManageMenu _value, $Res Function(_$_ManageMenu) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuTime = null,
  }) {
    return _then(_$_ManageMenu(
      null == menuTime
          ? _value.menuTime
          : menuTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_ManageMenu extends _ManageMenu {
  const _$_ManageMenu(this.menuTime) : super._();

  @override
  final DateTime menuTime;

  @override
  String toString() {
    return 'CalendarEvent.manageMenu(menuTime: $menuTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ManageMenu &&
            (identical(other.menuTime, menuTime) ||
                other.menuTime == menuTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, menuTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ManageMenuCopyWith<_$_ManageMenu> get copyWith =>
      __$$_ManageMenuCopyWithImpl<_$_ManageMenu>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, CalendarViewType? viewType) init,
    required TResult Function(bool withLoading) fetch,
    required TResult Function(DateTime date, CalendarViewType? viewType)
        setDateAndViewType,
    required TResult Function(CalendarViewType type) changeViewType,
    required TResult Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)
        addCalendarItem,
    required TResult Function(String message) emitError,
    required TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)
        changeCalendarItemTime,
    required TResult Function(int id, bool isCompleted) changeTodoStatus,
    required TResult Function(DateTime menuTime) manageMenu,
    required TResult Function() removeMenu,
    required TResult Function(CalendarModel model) updateModel,
    required TResult Function(DateTime time, CalendarItemModel event)
        moveEventTime,
  }) {
    return manageMenu(menuTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date, CalendarViewType? viewType)? init,
    TResult? Function(bool withLoading)? fetch,
    TResult? Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult? Function(CalendarViewType type)? changeViewType,
    TResult? Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)?
        addCalendarItem,
    TResult? Function(String message)? emitError,
    TResult? Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult? Function(int id, bool isCompleted)? changeTodoStatus,
    TResult? Function(DateTime menuTime)? manageMenu,
    TResult? Function()? removeMenu,
    TResult? Function(CalendarModel model)? updateModel,
    TResult? Function(DateTime time, CalendarItemModel event)? moveEventTime,
  }) {
    return manageMenu?.call(menuTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, CalendarViewType? viewType)? init,
    TResult Function(bool withLoading)? fetch,
    TResult Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult Function(CalendarViewType type)? changeViewType,
    TResult Function(CalendarItemType calendarItemType, DateTime? startDateTime,
            DateTime? endDateTime)?
        addCalendarItem,
    TResult Function(String message)? emitError,
    TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult Function(int id, bool isCompleted)? changeTodoStatus,
    TResult Function(DateTime menuTime)? manageMenu,
    TResult Function()? removeMenu,
    TResult Function(CalendarModel model)? updateModel,
    TResult Function(DateTime time, CalendarItemModel event)? moveEventTime,
    required TResult orElse(),
  }) {
    if (manageMenu != null) {
      return manageMenu(menuTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetDateAndViewType value) setDateAndViewType,
    required TResult Function(_ChangeViewType value) changeViewType,
    required TResult Function(_AddCalendarItem value) addCalendarItem,
    required TResult Function(_EmitError value) emitError,
    required TResult Function(_ChangeCalendarItemTime value)
        changeCalendarItemTime,
    required TResult Function(_ChangeTodoStatus value) changeTodoStatus,
    required TResult Function(_ManageMenu value) manageMenu,
    required TResult Function(_RemoveMenu value) removeMenu,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_MoveEventTime value) moveEventTime,
  }) {
    return manageMenu(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult? Function(_ChangeViewType value)? changeViewType,
    TResult? Function(_AddCalendarItem value)? addCalendarItem,
    TResult? Function(_EmitError value)? emitError,
    TResult? Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult? Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult? Function(_ManageMenu value)? manageMenu,
    TResult? Function(_RemoveMenu value)? removeMenu,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_MoveEventTime value)? moveEventTime,
  }) {
    return manageMenu?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult Function(_ChangeViewType value)? changeViewType,
    TResult Function(_AddCalendarItem value)? addCalendarItem,
    TResult Function(_EmitError value)? emitError,
    TResult Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult Function(_ManageMenu value)? manageMenu,
    TResult Function(_RemoveMenu value)? removeMenu,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_MoveEventTime value)? moveEventTime,
    required TResult orElse(),
  }) {
    if (manageMenu != null) {
      return manageMenu(this);
    }
    return orElse();
  }
}

abstract class _ManageMenu extends CalendarEvent {
  const factory _ManageMenu(final DateTime menuTime) = _$_ManageMenu;
  const _ManageMenu._() : super._();

  DateTime get menuTime;
  @JsonKey(ignore: true)
  _$$_ManageMenuCopyWith<_$_ManageMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveMenuCopyWith<$Res> {
  factory _$$_RemoveMenuCopyWith(
          _$_RemoveMenu value, $Res Function(_$_RemoveMenu) then) =
      __$$_RemoveMenuCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RemoveMenuCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$_RemoveMenu>
    implements _$$_RemoveMenuCopyWith<$Res> {
  __$$_RemoveMenuCopyWithImpl(
      _$_RemoveMenu _value, $Res Function(_$_RemoveMenu) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RemoveMenu extends _RemoveMenu {
  const _$_RemoveMenu() : super._();

  @override
  String toString() {
    return 'CalendarEvent.removeMenu()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RemoveMenu);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, CalendarViewType? viewType) init,
    required TResult Function(bool withLoading) fetch,
    required TResult Function(DateTime date, CalendarViewType? viewType)
        setDateAndViewType,
    required TResult Function(CalendarViewType type) changeViewType,
    required TResult Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)
        addCalendarItem,
    required TResult Function(String message) emitError,
    required TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)
        changeCalendarItemTime,
    required TResult Function(int id, bool isCompleted) changeTodoStatus,
    required TResult Function(DateTime menuTime) manageMenu,
    required TResult Function() removeMenu,
    required TResult Function(CalendarModel model) updateModel,
    required TResult Function(DateTime time, CalendarItemModel event)
        moveEventTime,
  }) {
    return removeMenu();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date, CalendarViewType? viewType)? init,
    TResult? Function(bool withLoading)? fetch,
    TResult? Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult? Function(CalendarViewType type)? changeViewType,
    TResult? Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)?
        addCalendarItem,
    TResult? Function(String message)? emitError,
    TResult? Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult? Function(int id, bool isCompleted)? changeTodoStatus,
    TResult? Function(DateTime menuTime)? manageMenu,
    TResult? Function()? removeMenu,
    TResult? Function(CalendarModel model)? updateModel,
    TResult? Function(DateTime time, CalendarItemModel event)? moveEventTime,
  }) {
    return removeMenu?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, CalendarViewType? viewType)? init,
    TResult Function(bool withLoading)? fetch,
    TResult Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult Function(CalendarViewType type)? changeViewType,
    TResult Function(CalendarItemType calendarItemType, DateTime? startDateTime,
            DateTime? endDateTime)?
        addCalendarItem,
    TResult Function(String message)? emitError,
    TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult Function(int id, bool isCompleted)? changeTodoStatus,
    TResult Function(DateTime menuTime)? manageMenu,
    TResult Function()? removeMenu,
    TResult Function(CalendarModel model)? updateModel,
    TResult Function(DateTime time, CalendarItemModel event)? moveEventTime,
    required TResult orElse(),
  }) {
    if (removeMenu != null) {
      return removeMenu();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetDateAndViewType value) setDateAndViewType,
    required TResult Function(_ChangeViewType value) changeViewType,
    required TResult Function(_AddCalendarItem value) addCalendarItem,
    required TResult Function(_EmitError value) emitError,
    required TResult Function(_ChangeCalendarItemTime value)
        changeCalendarItemTime,
    required TResult Function(_ChangeTodoStatus value) changeTodoStatus,
    required TResult Function(_ManageMenu value) manageMenu,
    required TResult Function(_RemoveMenu value) removeMenu,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_MoveEventTime value) moveEventTime,
  }) {
    return removeMenu(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult? Function(_ChangeViewType value)? changeViewType,
    TResult? Function(_AddCalendarItem value)? addCalendarItem,
    TResult? Function(_EmitError value)? emitError,
    TResult? Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult? Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult? Function(_ManageMenu value)? manageMenu,
    TResult? Function(_RemoveMenu value)? removeMenu,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_MoveEventTime value)? moveEventTime,
  }) {
    return removeMenu?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult Function(_ChangeViewType value)? changeViewType,
    TResult Function(_AddCalendarItem value)? addCalendarItem,
    TResult Function(_EmitError value)? emitError,
    TResult Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult Function(_ManageMenu value)? manageMenu,
    TResult Function(_RemoveMenu value)? removeMenu,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_MoveEventTime value)? moveEventTime,
    required TResult orElse(),
  }) {
    if (removeMenu != null) {
      return removeMenu(this);
    }
    return orElse();
  }
}

abstract class _RemoveMenu extends CalendarEvent {
  const factory _RemoveMenu() = _$_RemoveMenu;
  const _RemoveMenu._() : super._();
}

/// @nodoc
abstract class _$$_UpdateModelCopyWith<$Res> {
  factory _$$_UpdateModelCopyWith(
          _$_UpdateModel value, $Res Function(_$_UpdateModel) then) =
      __$$_UpdateModelCopyWithImpl<$Res>;
  @useResult
  $Res call({CalendarModel model});

  $CalendarModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_UpdateModelCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$_UpdateModel>
    implements _$$_UpdateModelCopyWith<$Res> {
  __$$_UpdateModelCopyWithImpl(
      _$_UpdateModel _value, $Res Function(_$_UpdateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_UpdateModel(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CalendarModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CalendarModelCopyWith<$Res> get model {
    return $CalendarModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$_UpdateModel extends _UpdateModel {
  const _$_UpdateModel(this.model) : super._();

  @override
  final CalendarModel model;

  @override
  String toString() {
    return 'CalendarEvent.updateModel(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateModel &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateModelCopyWith<_$_UpdateModel> get copyWith =>
      __$$_UpdateModelCopyWithImpl<_$_UpdateModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, CalendarViewType? viewType) init,
    required TResult Function(bool withLoading) fetch,
    required TResult Function(DateTime date, CalendarViewType? viewType)
        setDateAndViewType,
    required TResult Function(CalendarViewType type) changeViewType,
    required TResult Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)
        addCalendarItem,
    required TResult Function(String message) emitError,
    required TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)
        changeCalendarItemTime,
    required TResult Function(int id, bool isCompleted) changeTodoStatus,
    required TResult Function(DateTime menuTime) manageMenu,
    required TResult Function() removeMenu,
    required TResult Function(CalendarModel model) updateModel,
    required TResult Function(DateTime time, CalendarItemModel event)
        moveEventTime,
  }) {
    return updateModel(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date, CalendarViewType? viewType)? init,
    TResult? Function(bool withLoading)? fetch,
    TResult? Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult? Function(CalendarViewType type)? changeViewType,
    TResult? Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)?
        addCalendarItem,
    TResult? Function(String message)? emitError,
    TResult? Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult? Function(int id, bool isCompleted)? changeTodoStatus,
    TResult? Function(DateTime menuTime)? manageMenu,
    TResult? Function()? removeMenu,
    TResult? Function(CalendarModel model)? updateModel,
    TResult? Function(DateTime time, CalendarItemModel event)? moveEventTime,
  }) {
    return updateModel?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, CalendarViewType? viewType)? init,
    TResult Function(bool withLoading)? fetch,
    TResult Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult Function(CalendarViewType type)? changeViewType,
    TResult Function(CalendarItemType calendarItemType, DateTime? startDateTime,
            DateTime? endDateTime)?
        addCalendarItem,
    TResult Function(String message)? emitError,
    TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult Function(int id, bool isCompleted)? changeTodoStatus,
    TResult Function(DateTime menuTime)? manageMenu,
    TResult Function()? removeMenu,
    TResult Function(CalendarModel model)? updateModel,
    TResult Function(DateTime time, CalendarItemModel event)? moveEventTime,
    required TResult orElse(),
  }) {
    if (updateModel != null) {
      return updateModel(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetDateAndViewType value) setDateAndViewType,
    required TResult Function(_ChangeViewType value) changeViewType,
    required TResult Function(_AddCalendarItem value) addCalendarItem,
    required TResult Function(_EmitError value) emitError,
    required TResult Function(_ChangeCalendarItemTime value)
        changeCalendarItemTime,
    required TResult Function(_ChangeTodoStatus value) changeTodoStatus,
    required TResult Function(_ManageMenu value) manageMenu,
    required TResult Function(_RemoveMenu value) removeMenu,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_MoveEventTime value) moveEventTime,
  }) {
    return updateModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult? Function(_ChangeViewType value)? changeViewType,
    TResult? Function(_AddCalendarItem value)? addCalendarItem,
    TResult? Function(_EmitError value)? emitError,
    TResult? Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult? Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult? Function(_ManageMenu value)? manageMenu,
    TResult? Function(_RemoveMenu value)? removeMenu,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_MoveEventTime value)? moveEventTime,
  }) {
    return updateModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult Function(_ChangeViewType value)? changeViewType,
    TResult Function(_AddCalendarItem value)? addCalendarItem,
    TResult Function(_EmitError value)? emitError,
    TResult Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult Function(_ManageMenu value)? manageMenu,
    TResult Function(_RemoveMenu value)? removeMenu,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_MoveEventTime value)? moveEventTime,
    required TResult orElse(),
  }) {
    if (updateModel != null) {
      return updateModel(this);
    }
    return orElse();
  }
}

abstract class _UpdateModel extends CalendarEvent {
  const factory _UpdateModel(final CalendarModel model) = _$_UpdateModel;
  const _UpdateModel._() : super._();

  CalendarModel get model;
  @JsonKey(ignore: true)
  _$$_UpdateModelCopyWith<_$_UpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MoveEventTimeCopyWith<$Res> {
  factory _$$_MoveEventTimeCopyWith(
          _$_MoveEventTime value, $Res Function(_$_MoveEventTime) then) =
      __$$_MoveEventTimeCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime time, CalendarItemModel event});

  $CalendarItemModelCopyWith<$Res> get event;
}

/// @nodoc
class __$$_MoveEventTimeCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$_MoveEventTime>
    implements _$$_MoveEventTimeCopyWith<$Res> {
  __$$_MoveEventTimeCopyWithImpl(
      _$_MoveEventTime _value, $Res Function(_$_MoveEventTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? event = null,
  }) {
    return _then(_$_MoveEventTime(
      null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as CalendarItemModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CalendarItemModelCopyWith<$Res> get event {
    return $CalendarItemModelCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$_MoveEventTime extends _MoveEventTime {
  const _$_MoveEventTime(this.time, this.event) : super._();

  @override
  final DateTime time;
  @override
  final CalendarItemModel event;

  @override
  String toString() {
    return 'CalendarEvent.moveEventTime(time: $time, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoveEventTime &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoveEventTimeCopyWith<_$_MoveEventTime> get copyWith =>
      __$$_MoveEventTimeCopyWithImpl<_$_MoveEventTime>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, CalendarViewType? viewType) init,
    required TResult Function(bool withLoading) fetch,
    required TResult Function(DateTime date, CalendarViewType? viewType)
        setDateAndViewType,
    required TResult Function(CalendarViewType type) changeViewType,
    required TResult Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)
        addCalendarItem,
    required TResult Function(String message) emitError,
    required TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)
        changeCalendarItemTime,
    required TResult Function(int id, bool isCompleted) changeTodoStatus,
    required TResult Function(DateTime menuTime) manageMenu,
    required TResult Function() removeMenu,
    required TResult Function(CalendarModel model) updateModel,
    required TResult Function(DateTime time, CalendarItemModel event)
        moveEventTime,
  }) {
    return moveEventTime(time, event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date, CalendarViewType? viewType)? init,
    TResult? Function(bool withLoading)? fetch,
    TResult? Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult? Function(CalendarViewType type)? changeViewType,
    TResult? Function(CalendarItemType calendarItemType,
            DateTime? startDateTime, DateTime? endDateTime)?
        addCalendarItem,
    TResult? Function(String message)? emitError,
    TResult? Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult? Function(int id, bool isCompleted)? changeTodoStatus,
    TResult? Function(DateTime menuTime)? manageMenu,
    TResult? Function()? removeMenu,
    TResult? Function(CalendarModel model)? updateModel,
    TResult? Function(DateTime time, CalendarItemModel event)? moveEventTime,
  }) {
    return moveEventTime?.call(time, event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, CalendarViewType? viewType)? init,
    TResult Function(bool withLoading)? fetch,
    TResult Function(DateTime date, CalendarViewType? viewType)?
        setDateAndViewType,
    TResult Function(CalendarViewType type)? changeViewType,
    TResult Function(CalendarItemType calendarItemType, DateTime? startDateTime,
            DateTime? endDateTime)?
        addCalendarItem,
    TResult Function(String message)? emitError,
    TResult Function(int? id, CalendarItemType calendarItemType,
            DateTime timeStart, DateTime timeEnd, Object model)?
        changeCalendarItemTime,
    TResult Function(int id, bool isCompleted)? changeTodoStatus,
    TResult Function(DateTime menuTime)? manageMenu,
    TResult Function()? removeMenu,
    TResult Function(CalendarModel model)? updateModel,
    TResult Function(DateTime time, CalendarItemModel event)? moveEventTime,
    required TResult orElse(),
  }) {
    if (moveEventTime != null) {
      return moveEventTime(time, event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetDateAndViewType value) setDateAndViewType,
    required TResult Function(_ChangeViewType value) changeViewType,
    required TResult Function(_AddCalendarItem value) addCalendarItem,
    required TResult Function(_EmitError value) emitError,
    required TResult Function(_ChangeCalendarItemTime value)
        changeCalendarItemTime,
    required TResult Function(_ChangeTodoStatus value) changeTodoStatus,
    required TResult Function(_ManageMenu value) manageMenu,
    required TResult Function(_RemoveMenu value) removeMenu,
    required TResult Function(_UpdateModel value) updateModel,
    required TResult Function(_MoveEventTime value) moveEventTime,
  }) {
    return moveEventTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult? Function(_ChangeViewType value)? changeViewType,
    TResult? Function(_AddCalendarItem value)? addCalendarItem,
    TResult? Function(_EmitError value)? emitError,
    TResult? Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult? Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult? Function(_ManageMenu value)? manageMenu,
    TResult? Function(_RemoveMenu value)? removeMenu,
    TResult? Function(_UpdateModel value)? updateModel,
    TResult? Function(_MoveEventTime value)? moveEventTime,
  }) {
    return moveEventTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetDateAndViewType value)? setDateAndViewType,
    TResult Function(_ChangeViewType value)? changeViewType,
    TResult Function(_AddCalendarItem value)? addCalendarItem,
    TResult Function(_EmitError value)? emitError,
    TResult Function(_ChangeCalendarItemTime value)? changeCalendarItemTime,
    TResult Function(_ChangeTodoStatus value)? changeTodoStatus,
    TResult Function(_ManageMenu value)? manageMenu,
    TResult Function(_RemoveMenu value)? removeMenu,
    TResult Function(_UpdateModel value)? updateModel,
    TResult Function(_MoveEventTime value)? moveEventTime,
    required TResult orElse(),
  }) {
    if (moveEventTime != null) {
      return moveEventTime(this);
    }
    return orElse();
  }
}

abstract class _MoveEventTime extends CalendarEvent {
  const factory _MoveEventTime(
      final DateTime time, final CalendarItemModel event) = _$_MoveEventTime;
  const _MoveEventTime._() : super._();

  DateTime get time;
  CalendarItemModel get event;
  @JsonKey(ignore: true)
  _$$_MoveEventTimeCopyWith<_$_MoveEventTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CalendarState {
  CalendarModel get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CalendarModel model) initial,
    required TResult Function(CalendarModel model) loading,
    required TResult Function(CalendarModel model) loaded,
    required TResult Function(String message, CalendarModel model) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CalendarModel model)? initial,
    TResult? Function(CalendarModel model)? loading,
    TResult? Function(CalendarModel model)? loaded,
    TResult? Function(String message, CalendarModel model)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CalendarModel model)? initial,
    TResult Function(CalendarModel model)? loading,
    TResult Function(CalendarModel model)? loaded,
    TResult Function(String message, CalendarModel model)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCalendarState value) initial,
    required TResult Function(_LoadingCalendarState value) loading,
    required TResult Function(_LoadedCalendarState value) loaded,
    required TResult Function(_ErrorCalendarState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCalendarState value)? initial,
    TResult? Function(_LoadingCalendarState value)? loading,
    TResult? Function(_LoadedCalendarState value)? loaded,
    TResult? Function(_ErrorCalendarState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCalendarState value)? initial,
    TResult Function(_LoadingCalendarState value)? loading,
    TResult Function(_LoadedCalendarState value)? loaded,
    TResult Function(_ErrorCalendarState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarStateCopyWith<CalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res, CalendarState>;
  @useResult
  $Res call({CalendarModel model});

  $CalendarModelCopyWith<$Res> get model;
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res, $Val extends CalendarState>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CalendarModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CalendarModelCopyWith<$Res> get model {
    return $CalendarModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCalendarStateCopyWith<$Res>
    implements $CalendarStateCopyWith<$Res> {
  factory _$$_InitialCalendarStateCopyWith(_$_InitialCalendarState value,
          $Res Function(_$_InitialCalendarState) then) =
      __$$_InitialCalendarStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CalendarModel model});

  @override
  $CalendarModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_InitialCalendarStateCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$_InitialCalendarState>
    implements _$$_InitialCalendarStateCopyWith<$Res> {
  __$$_InitialCalendarStateCopyWithImpl(_$_InitialCalendarState _value,
      $Res Function(_$_InitialCalendarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_InitialCalendarState(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CalendarModel,
    ));
  }
}

/// @nodoc

class _$_InitialCalendarState extends _InitialCalendarState {
  const _$_InitialCalendarState({required this.model}) : super._();

  @override
  final CalendarModel model;

  @override
  String toString() {
    return 'CalendarState.initial(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialCalendarState &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCalendarStateCopyWith<_$_InitialCalendarState> get copyWith =>
      __$$_InitialCalendarStateCopyWithImpl<_$_InitialCalendarState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CalendarModel model) initial,
    required TResult Function(CalendarModel model) loading,
    required TResult Function(CalendarModel model) loaded,
    required TResult Function(String message, CalendarModel model) error,
  }) {
    return initial(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CalendarModel model)? initial,
    TResult? Function(CalendarModel model)? loading,
    TResult? Function(CalendarModel model)? loaded,
    TResult? Function(String message, CalendarModel model)? error,
  }) {
    return initial?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CalendarModel model)? initial,
    TResult Function(CalendarModel model)? loading,
    TResult Function(CalendarModel model)? loaded,
    TResult Function(String message, CalendarModel model)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCalendarState value) initial,
    required TResult Function(_LoadingCalendarState value) loading,
    required TResult Function(_LoadedCalendarState value) loaded,
    required TResult Function(_ErrorCalendarState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCalendarState value)? initial,
    TResult? Function(_LoadingCalendarState value)? loading,
    TResult? Function(_LoadedCalendarState value)? loaded,
    TResult? Function(_ErrorCalendarState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCalendarState value)? initial,
    TResult Function(_LoadingCalendarState value)? loading,
    TResult Function(_LoadedCalendarState value)? loaded,
    TResult Function(_ErrorCalendarState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialCalendarState extends CalendarState {
  const factory _InitialCalendarState({required final CalendarModel model}) =
      _$_InitialCalendarState;
  const _InitialCalendarState._() : super._();

  @override
  CalendarModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCalendarStateCopyWith<_$_InitialCalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCalendarStateCopyWith<$Res>
    implements $CalendarStateCopyWith<$Res> {
  factory _$$_LoadingCalendarStateCopyWith(_$_LoadingCalendarState value,
          $Res Function(_$_LoadingCalendarState) then) =
      __$$_LoadingCalendarStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CalendarModel model});

  @override
  $CalendarModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_LoadingCalendarStateCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$_LoadingCalendarState>
    implements _$$_LoadingCalendarStateCopyWith<$Res> {
  __$$_LoadingCalendarStateCopyWithImpl(_$_LoadingCalendarState _value,
      $Res Function(_$_LoadingCalendarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_LoadingCalendarState(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CalendarModel,
    ));
  }
}

/// @nodoc

class _$_LoadingCalendarState extends _LoadingCalendarState {
  const _$_LoadingCalendarState({required this.model}) : super._();

  @override
  final CalendarModel model;

  @override
  String toString() {
    return 'CalendarState.loading(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingCalendarState &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCalendarStateCopyWith<_$_LoadingCalendarState> get copyWith =>
      __$$_LoadingCalendarStateCopyWithImpl<_$_LoadingCalendarState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CalendarModel model) initial,
    required TResult Function(CalendarModel model) loading,
    required TResult Function(CalendarModel model) loaded,
    required TResult Function(String message, CalendarModel model) error,
  }) {
    return loading(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CalendarModel model)? initial,
    TResult? Function(CalendarModel model)? loading,
    TResult? Function(CalendarModel model)? loaded,
    TResult? Function(String message, CalendarModel model)? error,
  }) {
    return loading?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CalendarModel model)? initial,
    TResult Function(CalendarModel model)? loading,
    TResult Function(CalendarModel model)? loaded,
    TResult Function(String message, CalendarModel model)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCalendarState value) initial,
    required TResult Function(_LoadingCalendarState value) loading,
    required TResult Function(_LoadedCalendarState value) loaded,
    required TResult Function(_ErrorCalendarState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCalendarState value)? initial,
    TResult? Function(_LoadingCalendarState value)? loading,
    TResult? Function(_LoadedCalendarState value)? loaded,
    TResult? Function(_ErrorCalendarState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCalendarState value)? initial,
    TResult Function(_LoadingCalendarState value)? loading,
    TResult Function(_LoadedCalendarState value)? loaded,
    TResult Function(_ErrorCalendarState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingCalendarState extends CalendarState {
  const factory _LoadingCalendarState({required final CalendarModel model}) =
      _$_LoadingCalendarState;
  const _LoadingCalendarState._() : super._();

  @override
  CalendarModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCalendarStateCopyWith<_$_LoadingCalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCalendarStateCopyWith<$Res>
    implements $CalendarStateCopyWith<$Res> {
  factory _$$_LoadedCalendarStateCopyWith(_$_LoadedCalendarState value,
          $Res Function(_$_LoadedCalendarState) then) =
      __$$_LoadedCalendarStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CalendarModel model});

  @override
  $CalendarModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_LoadedCalendarStateCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$_LoadedCalendarState>
    implements _$$_LoadedCalendarStateCopyWith<$Res> {
  __$$_LoadedCalendarStateCopyWithImpl(_$_LoadedCalendarState _value,
      $Res Function(_$_LoadedCalendarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_LoadedCalendarState(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CalendarModel,
    ));
  }
}

/// @nodoc

class _$_LoadedCalendarState extends _LoadedCalendarState {
  const _$_LoadedCalendarState({required this.model}) : super._();

  @override
  final CalendarModel model;

  @override
  String toString() {
    return 'CalendarState.loaded(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedCalendarState &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCalendarStateCopyWith<_$_LoadedCalendarState> get copyWith =>
      __$$_LoadedCalendarStateCopyWithImpl<_$_LoadedCalendarState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CalendarModel model) initial,
    required TResult Function(CalendarModel model) loading,
    required TResult Function(CalendarModel model) loaded,
    required TResult Function(String message, CalendarModel model) error,
  }) {
    return loaded(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CalendarModel model)? initial,
    TResult? Function(CalendarModel model)? loading,
    TResult? Function(CalendarModel model)? loaded,
    TResult? Function(String message, CalendarModel model)? error,
  }) {
    return loaded?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CalendarModel model)? initial,
    TResult Function(CalendarModel model)? loading,
    TResult Function(CalendarModel model)? loaded,
    TResult Function(String message, CalendarModel model)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCalendarState value) initial,
    required TResult Function(_LoadingCalendarState value) loading,
    required TResult Function(_LoadedCalendarState value) loaded,
    required TResult Function(_ErrorCalendarState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCalendarState value)? initial,
    TResult? Function(_LoadingCalendarState value)? loading,
    TResult? Function(_LoadedCalendarState value)? loaded,
    TResult? Function(_ErrorCalendarState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCalendarState value)? initial,
    TResult Function(_LoadingCalendarState value)? loading,
    TResult Function(_LoadedCalendarState value)? loaded,
    TResult Function(_ErrorCalendarState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedCalendarState extends CalendarState {
  const factory _LoadedCalendarState({required final CalendarModel model}) =
      _$_LoadedCalendarState;
  const _LoadedCalendarState._() : super._();

  @override
  CalendarModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_LoadedCalendarStateCopyWith<_$_LoadedCalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCalendarStateCopyWith<$Res>
    implements $CalendarStateCopyWith<$Res> {
  factory _$$_ErrorCalendarStateCopyWith(_$_ErrorCalendarState value,
          $Res Function(_$_ErrorCalendarState) then) =
      __$$_ErrorCalendarStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, CalendarModel model});

  @override
  $CalendarModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_ErrorCalendarStateCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$_ErrorCalendarState>
    implements _$$_ErrorCalendarStateCopyWith<$Res> {
  __$$_ErrorCalendarStateCopyWithImpl(
      _$_ErrorCalendarState _value, $Res Function(_$_ErrorCalendarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? model = null,
  }) {
    return _then(_$_ErrorCalendarState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CalendarModel,
    ));
  }
}

/// @nodoc

class _$_ErrorCalendarState extends _ErrorCalendarState {
  const _$_ErrorCalendarState(this.message, {required this.model}) : super._();

  @override
  final String message;
  @override
  final CalendarModel model;

  @override
  String toString() {
    return 'CalendarState.error(message: $message, model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorCalendarState &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCalendarStateCopyWith<_$_ErrorCalendarState> get copyWith =>
      __$$_ErrorCalendarStateCopyWithImpl<_$_ErrorCalendarState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CalendarModel model) initial,
    required TResult Function(CalendarModel model) loading,
    required TResult Function(CalendarModel model) loaded,
    required TResult Function(String message, CalendarModel model) error,
  }) {
    return error(message, model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CalendarModel model)? initial,
    TResult? Function(CalendarModel model)? loading,
    TResult? Function(CalendarModel model)? loaded,
    TResult? Function(String message, CalendarModel model)? error,
  }) {
    return error?.call(message, model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CalendarModel model)? initial,
    TResult Function(CalendarModel model)? loading,
    TResult Function(CalendarModel model)? loaded,
    TResult Function(String message, CalendarModel model)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCalendarState value) initial,
    required TResult Function(_LoadingCalendarState value) loading,
    required TResult Function(_LoadedCalendarState value) loaded,
    required TResult Function(_ErrorCalendarState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCalendarState value)? initial,
    TResult? Function(_LoadingCalendarState value)? loading,
    TResult? Function(_LoadedCalendarState value)? loaded,
    TResult? Function(_ErrorCalendarState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCalendarState value)? initial,
    TResult Function(_LoadingCalendarState value)? loading,
    TResult Function(_LoadedCalendarState value)? loaded,
    TResult Function(_ErrorCalendarState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorCalendarState extends CalendarState {
  const factory _ErrorCalendarState(final String message,
      {required final CalendarModel model}) = _$_ErrorCalendarState;
  const _ErrorCalendarState._() : super._();

  String get message;
  @override
  CalendarModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCalendarStateCopyWith<_$_ErrorCalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}
