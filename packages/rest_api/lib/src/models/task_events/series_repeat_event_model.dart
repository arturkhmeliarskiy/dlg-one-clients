import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'series_repeat_event_model.freezed.dart';

part 'series_repeat_event_model.g.dart';

@freezed
class SeriesRepeatEventModel with _$SeriesRepeatEventModel {
  const factory SeriesRepeatEventModel({
    required int id,
    required RepeatEventModel data,
  }) = _SeriesRepeatEventModel;

  factory SeriesRepeatEventModel.fromJson(Map<String, dynamic> json) =>
      _$SeriesRepeatEventModelFromJson(json);
}
