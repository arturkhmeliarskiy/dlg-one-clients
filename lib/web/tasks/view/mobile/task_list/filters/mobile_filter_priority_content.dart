import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/view/web/filters/models/filter_priority_item.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class MobileFilerPriorityContent extends StatefulWidget {
  const MobileFilerPriorityContent({
    required this.onChangePriority,
    super.key,
  });

  final void Function(List<TaskPriorityType>) onChangePriority;

  @override
  State<MobileFilerPriorityContent> createState() =>
      _MobileFilerPriorityContentState();
}

class _MobileFilerPriorityContentState
    extends State<MobileFilerPriorityContent> {
  final List<PriorityItem> _items = [
    PriorityItem(
      title: S.current.all[0].toUpperCase() + S.current.all.substring(1, 3),
      priority: TaskPriorityType.unknown,
    ),
    PriorityItem(
      title: S.current.task_priority_critical,
      icon: Assets.icons.webTaskPriorityCritical.svg(),
      priority: TaskPriorityType.veryHigh,
    ),
    PriorityItem(
      title: S.current.task_priority_high,
      icon: Assets.icons.webTaskPriorityHigh.svg(),
      priority: TaskPriorityType.high,
    ),
    PriorityItem(
      title: S.current.task_priority_standart,
      icon: Assets.icons.webTaskPriorityStandart.svg(),
      priority: TaskPriorityType.mid,
    ),
    PriorityItem(
      title: S.current.task_priority_low,
      icon: Assets.icons.webTaskPriorityLow.svg(),
      priority: TaskPriorityType.low,
    ),
    PriorityItem(
      title: S.current.task_priority_minor,
      icon: Assets.icons.webTaskPriorityMinor.svg(),
      priority: TaskPriorityType.veryLow,
    ),
  ];

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

  Color _textColor(TaskPriorityType value) {
    switch (value) {
      case TaskPriorityType.unknown:
        return context.c_text;
      case TaskPriorityType.veryHigh:
        return context.c_red;
      case TaskPriorityType.high:
        return context.c_orange;
      case TaskPriorityType.mid:
        return context.c_text_grey;
      case TaskPriorityType.low:
        return context.c_green;
      case TaskPriorityType.veryLow:
        return context.c_blue;
    }
  }

  List<String> _selectedItems = [];
  List<TaskPriorityType> _selectedTypes = [];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      height: height * 0.5,
      child: Column(
        children: [
          SizedBox(
            height: 52.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 16.w,
                      ),
                      Assets.icons.angleLeft.svg(
                        color: context.c_text_grey,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        S.current.priority,
                        style: context.ts_s14h16_4w500,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16.w),
                  child: GestureDetector(
                    onTap: () {
                      if (_selectedTypes.length > 4) {
                        _selectedTypes = [TaskPriorityType.unknown];
                        _selectedItems = [_items[0].title];
                      }
                      widget.onChangePriority(_selectedTypes);

                      Navigator.of(context).pop();
                    },
                    child: Text(
                      S.current.apply,
                      style: context.ts_s14h22_4w400.copyWith(
                        color: context.c_blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.5 - 67,
            child: ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) {
                final selected = _selectedItems.contains(_items[index].title);
                return InkWell(
                  onTap: () {
                    setState(() {
                      if (selected) {
                        _selectedItems.remove(_items[index].title);
                        _selectedTypes.remove(
                            _items[index].priority ?? TaskPriorityType.unknown);
                      } else {
                        if (index == 0) {
                          _selectedTypes = [TaskPriorityType.unknown];
                          _selectedItems = [_items[0].title];
                        } else {
                          _selectedTypes.remove(TaskPriorityType.unknown);
                          _selectedItems.remove(_items[0].title);
                        }

                        if (index != 0) {
                          _selectedTypes.add(_items[index].priority ??
                              TaskPriorityType.unknown);
                          _selectedItems.add(_items[index].title);
                        }
                      }
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 6.h),
                    height: 44.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.w,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (_items[index].priority !=
                                  TaskPriorityType.unknown)
                                Container(
                                  width: 24.w,
                                  height: 24.h,
                                  padding: EdgeInsets.all(4.r),
                                  margin: EdgeInsets.only(right: 6.w),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.r),
                                    color: _backgroundColor(
                                      _items[index].priority ??
                                          TaskPriorityType.unknown,
                                    ),
                                  ),
                                  child: _items[index].icon ?? const SizedBox(),
                                ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 5.h),
                                child: Text(
                                  _items[index].title,
                                  textAlign: TextAlign.center,
                                  style: context.ts_s14h22_4w400.copyWith(
                                    color: _textColor(
                                      _items[index].priority ??
                                          TaskPriorityType.unknown,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (selected)
                          Padding(
                            padding: EdgeInsets.only(
                              right: 16.w,
                            ),
                            child: Assets.icons.check.svg(
                              color: context.c_blue,
                            ),
                          )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
