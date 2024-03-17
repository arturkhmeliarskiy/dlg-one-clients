import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

/// типы должны ПОЛНОСТЬЮ совпадать с типами в модели
class TimeOfDayConverter implements JsonConverter<DateTime, String> {
  const TimeOfDayConverter();

  static final _format = DateFormat(DateFormat.HOUR24_MINUTE);

  @override
  DateTime fromJson(String value) {
    return _format.parse(value);
  }

  @override
  String toJson(DateTime value) {
    return _format.format(value);
  }
}
