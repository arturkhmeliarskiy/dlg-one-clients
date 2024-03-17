import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/const/enums.dart';
import 'package:dls_one/web/tasks/view/mobile/task_list/filters/mobile_filter_priority_content.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class MobileFilterPriority extends StatefulWidget {
  const MobileFilterPriority({
    required this.onChangePriority,
    required this.filters,
    super.key,
  });

  final void Function(List<TaskPriorityType>) onChangePriority;
  final Map<FilterTypes, Object> filters;

  @override
  State<MobileFilterPriority> createState() => _MobileFilterPriorityState();
}

class _MobileFilterPriorityState extends State<MobileFilterPriority> {
  List<TaskPriorityType> _selectedTypes = [TaskPriorityType.unknown];

  Widget _priorityIcon(TaskPriorityType value) {
    switch (value) {
      case TaskPriorityType.unknown:
        return Assets.icons.webTaskPriorityCritical.svg();
      case TaskPriorityType.veryHigh:
        return Assets.icons.webTaskPriorityCritical.svg();
      case TaskPriorityType.high:
        return Assets.icons.webTaskPriorityHigh.svg();
      case TaskPriorityType.mid:
        return Assets.icons.webTaskPriorityStandart.svg();
      case TaskPriorityType.low:
        return Assets.icons.webTaskPriorityLow.svg();
      case TaskPriorityType.veryLow:
        return Assets.icons.webTaskPriorityMinor.svg();
    }
  }

  Color _backgroundColor(TaskPriorityType value) {
    switch (value) {
      case TaskPriorityType.unknown:
        return context.c_text_grey;
      case TaskPriorityType.veryHigh:
        return context.c_red.withOpacity(0.1);
      case TaskPriorityType.high:
        return context.c_orange_border;
      case TaskPriorityType.mid:
        return context.c_grey_grey;
      case TaskPriorityType.low:
        return context.c_grey_light;
      case TaskPriorityType.veryLow:
        return context.c_blue_container;
    }
  }

  @override
  void didUpdateWidget(covariant MobileFilterPriority oldWidget) {
    if (widget.filters.isEmpty) {
      _selectedTypes = [TaskPriorityType.unknown];
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await showModalBottomSheet<void>(
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(8.r),
            ),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          builder: (context) {
            return StatefulBuilder(
              builder: (BuildContext context, StateSetter setStat) {
                return MobileFilerPriorityContent(
                  onChangePriority: (value) {
                    _selectedTypes = [];
                    _selectedTypes = value;
                    widget.onChangePriority(value);
                  },
                );
              },
            );
          },
        );
      },
      child: SizedBox(
        height: 44.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Text(
                S.current.priority,
                style: context.ts_s14h22_4w400,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: !_selectedTypes.contains(TaskPriorityType.unknown)
                  ? Row(
                      children: _selectedTypes.map((item) {
                        return Container(
                          width: 24.w,
                          height: 24.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: _backgroundColor(item),
                          ),
                          margin: EdgeInsets.only(left: 6.w),
                          padding: const EdgeInsets.all(4),
                          child: _priorityIcon(item),
                        );
                      }).toList(),
                    )
                  : Text(
                      S.current.all[0].toUpperCase() +
                          S.current.all.substring(1, 3),
                      style: context.ts_s14h22_4w400,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
