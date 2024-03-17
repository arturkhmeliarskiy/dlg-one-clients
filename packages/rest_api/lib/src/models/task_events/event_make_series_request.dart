import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'event_make_series_request.freezed.dart';

part 'event_make_series_request.g.dart';

@freezed
class EventMakeSeriesRequest with _$EventMakeSeriesRequest {
  const factory EventMakeSeriesRequest({required RepeatEventModel repeat}) =
      _EventMakeSeriesRequest;

  factory EventMakeSeriesRequest.fromJson(Map<String, dynamic> json) =>
      _$EventMakeSeriesRequestFromJson(json);
}
