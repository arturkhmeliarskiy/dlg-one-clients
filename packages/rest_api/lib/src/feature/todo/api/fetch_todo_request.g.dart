// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_todo_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FetchTodoRequest _$$_FetchTodoRequestFromJson(Map<String, dynamic> json) =>
    _$_FetchTodoRequest(
      page: json['page'] as int?,
      hasNotDate: json['filter[no_dates]'] as bool?,
      datesRange: (json['filter[dates_between]'] as List<dynamic>?)
          ?.map((e) => const DateTimeConverter().fromJson(e as String))
          .toList(),
      sortByCreate: $enumDecodeNullable(
          _$TodoCreateSortTypeEnumMap, json['order_create']),
      sortByStart:
          $enumDecodeNullable(_$TodoStartSortTypeEnumMap, json['sort']),
      filteredStatus:
          $enumDecodeNullable(_$TodoStatusEnumMap, json['filter[status]']),
    );

Map<String, dynamic> _$$_FetchTodoRequestToJson(_$_FetchTodoRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('page', instance.page);
  writeNotNull('filter[no_dates]', instance.hasNotDate);
  writeNotNull('filter[dates_between]',
      FetchTodoRequest.joinedDates(instance.datesRange));
  writeNotNull(
      'order_create', _$TodoCreateSortTypeEnumMap[instance.sortByCreate]);
  writeNotNull('sort', _$TodoStartSortTypeEnumMap[instance.sortByStart]);
  writeNotNull('filter[status]', _$TodoStatusEnumMap[instance.filteredStatus]);
  return val;
}

const _$TodoCreateSortTypeEnumMap = {
  TodoCreateSortType.createIncrease: 'asc',
  TodoCreateSortType.createDecrease: 'desc',
};

const _$TodoStartSortTypeEnumMap = {
  TodoStartSortType.startIncrease: 'start_at',
  TodoStartSortType.startDecrease: '-start_at',
};

const _$TodoStatusEnumMap = {
  TodoStatus.processing: 1,
  TodoStatus.completed: 0,
};
