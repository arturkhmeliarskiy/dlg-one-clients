import 'package:flutter/material.dart';

extension TimeOfDayExtension on TimeOfDay {
  DateTime toDateTime() => DateTime(1970, 1, 1, hour, minute);

  Duration toDuration() => Duration(hours: hour, minutes: minute);
}
