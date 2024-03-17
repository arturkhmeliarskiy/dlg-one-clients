// TODO(Stas): дождаться реализации фичи дел и переделать
// import 'package:dls_calendar/dls_calendar.dart';
// import 'package:dls_one/core/core.dart';
// import 'package:dls_one/utils/utils.dart';
// import 'package:dls_one/web/calendar/bloc/calendar_bloc.dart';
// import 'package:dls_one/web/calendar/widget/common/on_hover_background_container.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class DraggableOrNotSeparatedDayCalendarTask extends StatelessWidget {
//   const DraggableOrNotSeparatedDayCalendarTask({
//     required this.uiCalendarItem,
//     super.key,
//   });
//
//   final UICalendarItem uiCalendarItem;
//
//   @override
//   Widget build(BuildContext context) {
//     final separatedDayCalendarTask = SeparatedDayCalendarTask(
//       uiCalendarItem: uiCalendarItem,
//       key: ValueKey(
//         '${uiCalendarItem.isFinished} ${uiCalendarItem.id}',
//       ),
//     );
//
//     if (uiCalendarItem.calendarItemScheduleType ==
//         CalendarItemScheduleType.unscheduled) {
//       return Draggable<UICalendarItem>(
//         data: uiCalendarItem,
//         feedback: separatedDayCalendarTask,
//         child: separatedDayCalendarTask,
//       );
//     } else {
//       return separatedDayCalendarTask;
//     }
//   }
// }
//
// class SeparatedDayCalendarTask extends StatefulWidget {
//   const SeparatedDayCalendarTask({
//     required this.uiCalendarItem,
//     super.key,
//   });
//
//   final UICalendarItem uiCalendarItem;
//
//   @override
//   State<SeparatedDayCalendarTask> createState() =>
//       _SeparatedDayCalendarTaskState();
// }
//
// // TODO(Stas): прижать таску к левому краю
// class _SeparatedDayCalendarTaskState extends State<SeparatedDayCalendarTask> {
//   final DateTime _dateTimeNow = DateTime.now();
//   late final bool _isOverDue = _dateTimeNow.isAfter(widget.uiCalendarItem.end);
//   late final bool _isFinished = widget.uiCalendarItem.isFinished ?? false;
//   bool _onHover = false;
//
//   @override
//   Widget build(BuildContext context) {
//     final bloc = context.read<CalendarBloc>();
//     return MouseRegion(
//       onEnter: (_) => setState(() => _onHover = true),
//       onExit: (_) => setState(() => _onHover = false),
//       child: Container(
//         margin: EdgeInsets.fromLTRB(12.w, 0.h, 12.w, 0.h),
//         height: 27.h,
//         // TODO(Stas): взять реальную ширину
//         width: MediaQuery.of(context).size.width * 0.245,
//         decoration: BoxDecoration(
//           color: _onHover ? context.c_grey_hover : context.c_white_background,
//           borderRadius: BorderRadius.circular(4),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 Checkbox(
//
//                   materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                   activeColor: context.c_blue,
//                   checkColor: context.c_white_text,
//                   side: BorderSide(color: context.c_grey_hover, width: 1.r),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(3.r),
//                     ),
//                   ),
//                   value: _isFinished,
//                   onChanged: (value) {
//                     bloc.add(
//                       CalendarEvent.changeTask(
//                         widget.uiCalendarItem.id!,
//                         value!,
//                       ),
//                     );
//                   },
//                 ),
//                 if (widget.uiCalendarItem.calendarItemScheduleType ==
//                     CalendarItemScheduleType.scheduled)
//                   Row(
//                     children: [
//                       Text(
//                         '${formatTimeHHmm(widget.uiCalendarItem.start)} - ${formatTimeHHmm(
//                           widget.uiCalendarItem.end,
//                         )}',
//                         style: context.ts_s14h14w400.apply(
//                           color: _isOverDue
//                               ? _isFinished
//                                   ? context.c_grey_calendar_task_isFinished
//                                   : context.c_red.withOpacity(0.5)
//                               : _isFinished
//                                   ? context.c_grey_calendar_task_isFinished
//                                   : context.c_text,
//                         ),
//                       ),
//                       SizedBox(
//                         width: 4.w,
//                       ),
//                     ],
//                   ),
//                 if (widget.uiCalendarItem.isRecurring == true)
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 5),
//                     child: WebButtonIconWithTooltip(
//                       icon: Assets.icons.recurred.path,
//                       height: 12.h,
//                       width: 12.w,
//                     ),
//                   ),
//                 Text(
//                   widget.uiCalendarItem.title ?? '',
//                   style: context.ts_s14h14w400.apply(
//                     color: _isOverDue
//                         ? _isFinished
//                             ? context.c_grey_calendar_task_isFinished
//                             : context.c_red.withOpacity(0.5)
//                         : _isFinished
//                             ? context.c_grey_calendar_task_isFinished
//                             : context.c_text,
//                   ),
//                 ),
//                 if (_onHover) ...[
//                   SizedBox(
//                     width: 7.w,
//                   ),
//                   OnHoverBackgroundTappableContainer(
//                     onTap: (_) {},
//                     backgroundColor: context.c_text.withOpacity(0.1),
//                     padding: const EdgeInsets.all(5),
//                     borderRadius: BorderRadius.circular(5),
//                     child: Assets.icons.ellipsisV1
//                         .svg(color: context.c_grey_calendar_time),
//                   ),
//                   SizedBox(
//                     width: 2.w,
//                   ),
//                   OnHoverBackgroundTappableContainer(
//                     onTap: (_) {},
//                     backgroundColor: context.c_text.withOpacity(0.1),
//                     padding: const EdgeInsets.all(5),
//                     borderRadius: BorderRadius.circular(5),
//                     child: Assets.icons.pen1
//                         .svg(color: context.c_grey_calendar_time),
//                   ),
//                   SizedBox(
//                     width: 4.w,
//                   ),
//                   OnHoverBackgroundTappableContainer(
//                     onTap: (_) {},
//                     backgroundColor: context.c_text.withOpacity(0.1),
//                     padding: const EdgeInsets.all(5),
//                     borderRadius: BorderRadius.circular(5),
//                     child: Assets.icons.trashAlt1
//                         .svg(color: context.c_grey_calendar_time),
//                   )
//                 ],
//               ],
//             ),
//             if (widget.uiCalendarItem.calendarItemScheduleType ==
//                 CalendarItemScheduleType.unscheduled)
//               Assets.icons.drag.svg()
//           ],
//         ),
//       ),
//     );
//   }
// }
