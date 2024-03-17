import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/dls_app_bar.dart';
import 'package:dls_one/core/widgets/src/list_picker.dart';
import 'package:dls_one/features/todo/model/repeat.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/edit/repeat_picker.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

Future<Repeat?> showRepeatModalSheet({
  required BuildContext context,
  Repeat? initialValue,
}) {
  return showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
    ),
    isScrollControlled: true,
    clipBehavior: Clip.hardEdge,
    builder: (_) => _RepeatPickerSheet(
      initialValue: initialValue,
    ),
  );
}

class _RepeatPickerSheet extends StatefulWidget {
  const _RepeatPickerSheet({
    required this.initialValue,
  });

  final Repeat? initialValue;

  @override
  State<_RepeatPickerSheet> createState() => _RepeatPickerSheetState();
}

class _RepeatPickerSheetState extends State<_RepeatPickerSheet> {
  late Repeat? _model = widget.initialValue;

  void _updateModel(Repeat? value) {
    setState(() {
      _model = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.of(context).pop(widget.initialValue);
        return Future.value(false);
      },
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DLSAppBar(
              title: Text(S.current.repeat),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(_model);
                  },
                  child: Text(S.current.save),
                ),
              ],
            ),
            Divider(
              height: 1.h,
            ),
            _RepeatTile(
              onUpdate: _updateModel,
              value: _model,
              stubValue: null,
              body: null,
            ),
            Divider(
              height: 1.h,
            ),
            _RepeatTile(
              onUpdate: _updateModel,
              value: _model,
              stubValue: const Repeat.daily(),
              body: null,
            ),
            Divider(
              height: 1.h,
            ),
            _RepeatTile(
              onUpdate: _updateModel,
              value: _model,
              stubValue: const Repeat.weekly(dayNumbers: []),
              body: null,
            ),
            Divider(
              height: 1.h,
            ),
            _RepeatTile(
              onUpdate: _updateModel,
              value: _model,
              stubValue: const Repeat.monthly(weekNumber: 1, dayNumber: 1),
              body: null,
            ),
          ],
        ),
      ),
    );
  }
}

class _RepeatTile extends StatelessWidget {
  const _RepeatTile({
    required this.onUpdate,
    required this.value,
    required this.stubValue,
    required this.body,
  });

  final ValueSetter<Repeat?> onUpdate;
  final Repeat? value;
  final Repeat? stubValue;
  final Widget? body;

  String get title =>
      stubValue?.map(
        daily: (_) => S.current.daily,
        weekly: (_) => S.current.weekly,
        monthly: (_) => S.current.monthly,
      ) ??
      S.current.unrepeatable;

  @override
  Widget build(BuildContext context) {
    // Нужно лишь знать, что это тот же тип [Repeat].
    final isSameType =
        value?.runtimeType == stubValue.runtimeType || value == stubValue;

    final body = value?.map(
      daily: (_) => null,
      weekly: (value) => WeekRepeatSetting(
        onChanged: onUpdate,
        repeat: value,
      ),
      monthly: (value) => Padding(
        padding: EdgeInsets.only(top: 16.h),
        child: _MonthRepeatSetting(
          repeat: value,
          onChanged: onUpdate,
        ),
      ),
    );

    return InkWell(
      onTap: isSameType
          ? null
          : () {
              if (isSameType) {
                return;
              }

              onUpdate(stubValue);
            },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 11.h,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: context.ts_s14h22_4w400,
                  ),
                ),
                if (isSameType)
                  Icon(
                    Icons.check,
                    color: context.c_blue,
                  )
              ],
            ),
            if (isSameType && body != null) body,
          ],
        ),
      ),
    );
  }
}

class _MonthRepeatSetting extends StatelessWidget {
  const _MonthRepeatSetting({
    required this.repeat,
    required this.onChanged,
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
        DlsArrowPickButton(
          text: repeat.weekNumber.weekNumberPlural() ?? '',
          onTap: () async {
            final selectedWeek = await ListPicker.show(
              context,
              labels: List.generate(
                4,
                (index) => (index + 1).weekNumberPlural() ?? '',
              ),
              selectedIndex: repeat.weekNumber - 1,
            );

            if (selectedWeek == null) {
              return;
            }

            onChanged(
              repeat.copyWith(weekNumber: selectedWeek + 1),
            );
          },
        ),
        SizedBox(height: 12.h),
        Text(
          S.current.dayOfWeek,
          style: context.ts_s14h22_4w400.apply(color: context.c_text_grey),
        ),
        SizedBox(height: 8.h),
        DlsArrowPickButton(
          text: txt(
            formatWeekNumber(repeat.dayNumber - 1),
            upperCaseFistSymbol: true,
          ),
          onTap: () async {
            final selectedDay = await ListPicker.show(
              context,
              labels: List.generate(
                7,
                (index) => txt(
                  formatWeekNumber(index),
                  upperCaseFistSymbol: true,
                ),
              ),
              selectedIndex: repeat.dayNumber - 1,
            );

            if (selectedDay == null) {
              return;
            }

            onChanged(
              repeat.copyWith(dayNumber: selectedDay + 1),
            );
          },
        ),
      ],
    );
  }
}
