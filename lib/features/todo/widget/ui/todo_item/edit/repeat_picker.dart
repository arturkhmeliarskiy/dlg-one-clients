import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/todo/model/repeat.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

enum RepeatType {
  daily,
  weekly,
  monthly,
}

class RepeatPicker extends StatelessWidget {
  const RepeatPicker({
    required this.value,
    required this.onChanged,
    super.key,
  });

  final ValueChanged<Repeat?> onChanged;
  final Repeat? value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              DlsTitledSwitch(
                onChanged: (value) {
                  final Repeat? repeatModel;
                  if (value) {
                    repeatModel = const Repeat.daily();
                  } else {
                    repeatModel = null;
                  }

                  onChanged(repeatModel);
                },
                value: value != null,
                info: S.current.eventRepeat,
              ),
              SizedBox(width: 4.w),
              Expanded(
                child: _RepeatTypeButton(
                  repeat: value,
                  onChanged: onChanged,
                ),
              ),
            ],
          ),
        ),
        if (value != null) ...[
          value!.map(
            daily: (_) => const SizedBox(),
            weekly: (value) => Padding(
              padding: EdgeInsets.only(top: 16.h),
              child: WeekRepeatSetting(
                repeat: value,
                onChanged: onChanged,
              ),
            ),
            monthly: (value) => Padding(
              padding: EdgeInsets.only(top: 16.h),
              child: MonthRepeatSetting(
                repeat: value,
                onChanged: onChanged,
              ),
            ),
          ),
        ],
      ],
    );
  }
}

class _RepeatTypeButton extends StatelessWidget {
  const _RepeatTypeButton({
    required this.repeat,
    required this.onChanged,
  });

  static Repeat makeModel(RepeatType type) {
    switch (type) {
      case RepeatType.daily:
        return const Repeat.daily();

      case RepeatType.weekly:
        return const Repeat.weekly(dayNumbers: []);

      case RepeatType.monthly:
        return const Repeat.monthly(
          weekNumber: 1,
          dayNumber: 1,
        );
    }
  }

  final Repeat? repeat;
  final ValueChanged<Repeat> onChanged;

  @override
  Widget build(BuildContext context) {
    final repeatType = repeat?.type ?? RepeatType.daily;

    Widget result = DlsDropDownButton<RepeatType>(
      items: RepeatType.values,
      value: repeatType,
      onFormat: (type) => type?.title,
      onChanged: (type) {
        if (type == null || type == repeatType) {
          return;
        }

        onChanged(makeModel(type));
      },
      button: Row(
        children: [
          DlsPadding.only(
            right: 8.w,
            child: Text(
              repeatType.title,
              style: context.ts_s14h14w500.copyWith(
                color: repeat == null ? context.c_light_gray : context.c_blue,
              ),
            ),
          ),
          Assets.icons.angleDown1.svg(
            color: repeat == null ? context.c_light_gray : context.c_blue,
          ),
        ],
      ),
    );

    if (repeat == null) {
      result = IgnorePointer(
        child: result,
      );
    }

    return result;
  }
}

class WeekRepeatSetting extends StatelessWidget {
  const WeekRepeatSetting({
    required this.repeat,
    required this.onChanged,
    super.key,
  });

  final WeeklyRepeat repeat;
  final ValueChanged<WeeklyRepeat> onChanged;

  @override
  Widget build(BuildContext context) {
    return DlsWeekDaysView(
      onChanged: ({required int day, required bool value}) {
        final days = repeat.dayNumbers.toList();
        if (value) {
          days.add(day);
        } else {
          days.remove(day);
        }
        onChanged(WeeklyRepeat(dayNumbers: days));
      },
      checkedDays: repeat.dayNumbers,
    );
  }
}

class MonthRepeatSetting extends StatelessWidget {
  const MonthRepeatSetting({
    required this.repeat,
    required this.onChanged,
    super.key,
  });

  final MonthlyRepeat repeat;
  final ValueChanged<Repeat> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          S.current.weekOfMonth,
          style: context.ts_s14h22_4w400.apply(color: context.c_text_grey),
        ),
        SizedBox(height: 8.h),
        DlsDropDownButton<int>(
          value: repeat.weekNumber,
          items: const [1, 2, 3, 4],
          onChanged: (value) {
            if (value == null) {
              return;
            }

            onChanged(
              Repeat.monthly(
                weekNumber: value,
                dayNumber: repeat.dayNumber,
              ),
            );
          },
          onFormat: (value) => value?.weekNumberPlural() ?? '',
          button: DlsArrowPickButton(
            text: repeat.weekNumber.weekNumberPlural() ?? '',
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          S.current.dayOfWeek,
          style: context.ts_s14h22_4w400.apply(color: context.c_text_grey),
        ),
        SizedBox(height: 8.h),
        DlsDropDownButton<int>(
          value: repeat.dayNumber,
          items: [for (int i = 1; i <= 7; i++) i],
          onChanged: (value) {
            if (value == null) {
              return;
            }
            onChanged(
              Repeat.monthly(
                weekNumber: repeat.weekNumber,
                dayNumber: value,
              ),
            );
          },
          onFormat: (value) {
            if (value == null) {
              return '';
            }
            return txt(
              formatWeekNumber(value - 1),
              upperCaseFistSymbol: true,
            );
          },
          button: DlsArrowPickButton(
            text: txt(
              formatWeekNumber(repeat.dayNumber - 1),
              upperCaseFistSymbol: true,
            ),
          ),
        ),
      ],
    );
  }
}

extension on Repeat {
  RepeatType get type => map(
        daily: (_) => RepeatType.daily,
        weekly: (_) => RepeatType.weekly,
        monthly: (_) => RepeatType.monthly,
      );
}

extension on RepeatType {
  String get title {
    switch (this) {
      case RepeatType.daily:
        return S.current.everyday;
      case RepeatType.weekly:
        return S.current.everyWeek;
      case RepeatType.monthly:
        return S.current.everyMonth;
    }
  }
}
