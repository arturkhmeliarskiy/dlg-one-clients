import 'package:dls_one/web/calendar/model/calendar_item_model.dart';
import 'package:dls_one/web/calendar/model/calendar_view_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_model.freezed.dart';

@freezed
class CalendarModel with _$CalendarModel {
  const factory CalendarModel({
    required DateTime date,
    @Default(CalendarViewType.day) CalendarViewType viewType,
    @Default([]) List<CalendarItemModel> items,
    DateTime? dragDate,
  }) = _CalendarModel;
}