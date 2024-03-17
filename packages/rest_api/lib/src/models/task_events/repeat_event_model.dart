import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';
import 'package:rest_api/src/models/date_time_converter.dart';

part 'repeat_event_model.freezed.dart';

part 'repeat_event_model.g.dart';

@freezed
class RepeatEventModel with _$RepeatEventModel {
  @JsonSerializable(includeIfNull: false)
  const factory RepeatEventModel({
    @JsonKey(name: 'repeat_type', unknownEnumValue: EventRepeatType.unknown)
        required EventRepeatType repeatType,
    @JsonKey(name: 'calendar_id') int? calendarId,
    @DateTimeConverter() @JsonKey(name: 'repeat_till') DateTime? repeatTill,
    List<int>? days,
    @JsonKey(name: 'week_of_month') int? weekOfMonth,
  }) = _RepeatEventModel;

  factory RepeatEventModel.fromJson(Map<String, dynamic> json) =>
      _$RepeatEventModelFromJson(json);
}
