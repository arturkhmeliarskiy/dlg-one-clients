import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:rest_api/src/feature/todo/model/todo_model_dto.dart';
import 'package:rest_api/src/models/date_time_converter.dart';

part 'fetch_todo_request.freezed.dart';
part 'fetch_todo_request.g.dart';

// ignore_for_file: invalid_annotation_target

enum TodoStartSortType {
  @JsonValue('start_at')
  startIncrease,
  @JsonValue('-start_at')
  startDecrease,
}

enum TodoCreateSortType {
  @JsonValue('asc')
  createIncrease,
  @JsonValue('desc')
  createDecrease,
}

@freezed
class FetchTodoRequest with _$FetchTodoRequest {
  @JsonSerializable(includeIfNull: false)
  const factory FetchTodoRequest({
    int? page,
    @JsonKey(name: 'filter[no_dates]')
        bool? hasNotDate,
    @DateTimeConverter()
    @JsonKey(
      name: 'filter[dates_between]',
      toJson: FetchTodoRequest.joinedDates,
    )
        List<DateTime>? datesRange,
    @JsonKey(name: 'order_create')
        TodoCreateSortType? sortByCreate,
    @JsonKey(name: 'sort')
        TodoStartSortType? sortByStart,
    @JsonKey(name: 'filter[status]')
        TodoStatus? filteredStatus,
  }) = _FetchTodoRequest;

  factory FetchTodoRequest.fromJson(Map<String, dynamic> json) =>
      _$FetchTodoRequestFromJson(json);

  static String? joinedDates(List<DateTime>? dates) =>
      joinedItems(dates?.map((e) => DateFormat('yyyy-MM-dd').format(e)));

  static String? joinedItems(Iterable<Object>? items) => items?.join(',');
}
