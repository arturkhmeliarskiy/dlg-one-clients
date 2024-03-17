import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/todo/widget/ui/todo_time_config_picker/repeat_picker.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/create_events/create_events.dart';
import 'package:dls_one/web/create_events/model/src/event_repeat_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class NarrowCreateEventRepeatView extends StatelessWidget {
  const NarrowCreateEventRepeatView({required this.model, super.key});

  final CreateEventsModel model;

  String? _title() {
    final repeat = model.repeat;
    if (repeat == null) {
      return null;
    }
    if (repeat.type == EventRepeatType.day) {
      return S.current.everyday;
    }
    if (repeat.type == EventRepeatType.week) {
      return repeat.repeatDays.map((day) {
        final date = DateTime(1970, 1, 4);
        return formatWeekDay(date.add(Duration(days: day)));
      }).join(',');
    }
    if (repeat.type == EventRepeatType.month) {
      final date = DateTime(1970, 1, 4);
      final weekDay = formatWeekDay(date.add(Duration(days: repeat.weekDay)));
      return S.current.everyWeekDayInMonth(weekDay, repeat.weekNumber);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CreateEventsBloc>();
    return SizedBox(
      height: 32.h,
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
          side: BorderSide(
            color: context.c_blue,
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.w),
        ),
        onPressed: () async {
          final result = await showRepeatModalSheet(
            context: context,
            initialValue: model.repeat?.toRepeat(),
          );
          bloc.add(CreateEventsEvent.setRepeat(result?.toRepeatModel()));
        },
        child: Row(
          children: [
            Assets.icons.sync1.svg(colorFilter: context.c_blue_color_filter),
            SizedBox(width: 8.w),
            Text(
              _title() ?? S.current.add,
              style: context.ts_s14h22_4w400.copyWith(height: 1),
            ),
          ],
        ),
      ),
    );
  }
}
