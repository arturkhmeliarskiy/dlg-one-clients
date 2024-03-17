import 'package:freezed_annotation/freezed_annotation.dart';

part 'repeat.freezed.dart';

@freezed
class Repeat with _$Repeat {
  const factory Repeat.daily() = DailyRepeat;

  const factory Repeat.weekly({
    required List<int> dayNumbers,
  }) = WeeklyRepeat;

  const factory Repeat.monthly({
    required int weekNumber,
    required int dayNumber,
  }) = MonthlyRepeat;

  const Repeat._();
}
