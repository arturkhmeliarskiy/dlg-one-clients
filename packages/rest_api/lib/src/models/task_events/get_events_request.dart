import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/src/models/date_time_converter.dart';

part 'get_events_request.freezed.dart';
part 'get_events_request.g.dart';

@freezed
class GetEventsRequest with _$GetEventsRequest {
  factory GetEventsRequest({
    int? page,
    int? limit,
    // TODO config filter
    String? filter,
    @DateTimeConverter() @JsonKey(name: 'calendar_start_date') DateTime? calendarStartDate,
    @DateTimeConverter() @JsonKey(name: 'calendar_end_date') DateTime? calendarEndDate,
  }) = _GetEventsRequest;

  factory GetEventsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetEventsRequestFromJson(json);
}
