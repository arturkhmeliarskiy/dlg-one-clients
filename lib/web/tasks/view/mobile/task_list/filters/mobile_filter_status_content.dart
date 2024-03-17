import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/view/web/filters/models/filter_status_item.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class MobileFilerStatusContent extends StatefulWidget {
  const MobileFilerStatusContent({
    required this.onChangeStatus,
    required this.onChangeStatusItem,
    super.key,
  });

  final ValueChanged<List<TaskStatusType>> onChangeStatus;
  final ValueChanged<List<StatusItem>> onChangeStatusItem;

  @override
  State<MobileFilerStatusContent> createState() =>
      _MobileFilerStatusContentState();
}

class _MobileFilerStatusContentState extends State<MobileFilerStatusContent> {
  final List<StatusItem> _items = [
    StatusItem(
      title: S.current.all[0].toUpperCase() + S.current.all.substring(1, 3),
      status: TaskStatusType.unknown,
    ),
    StatusItem(
      title: S.current.status_todo[0].toUpperCase() +
          S.current.status_todo.substring(1, 9),
      icon: Assets.icons.webTaskPlus.svg(),
      status: TaskStatusType.inTheQueue,
    ),
    StatusItem(
      title: S.current.status_in_progress[0].toUpperCase() +
          S.current.status_in_progress.substring(1, 8),
      icon: Assets.icons.webTaskPlay.svg(),
      status: TaskStatusType.atWork,
    ),
    StatusItem(
      title: S.current.status_done[0].toUpperCase() +
          S.current.status_done.substring(1, 9),
      icon: Assets.icons.webTaskDone.svg(),
      status: TaskStatusType.completed,
    ),
  ];

  Color _backgroundColor(TaskStatusType value) {
    switch (value) {
      case TaskStatusType.draft:
        return context.c_text_grey.withOpacity(0.1);
      case TaskStatusType.inTheQueue:
        return context.c_blue_container;
      case TaskStatusType.atWork:
        return context.c_orange_border;
      case TaskStatusType.completed:
        return context.c_grey_light;
      // ignore: no_default_cases
      default:
        return context.c_blue_container;
    }
  }

  Color _textColor(TaskStatusType value) {
    switch (value) {
      case TaskStatusType.draft:
        return context.c_text_grey;
      case TaskStatusType.inTheQueue:
        return context.c_blue;
      case TaskStatusType.atWork:
        return context.c_orange;
      case TaskStatusType.completed:
        return context.c_green;
      // ignore: no_default_cases
      default:
        return context.c_text;
    }
  }

  List<StatusItem> _selectedItems = [];
  List<TaskStatusType> _selectedTypes = [];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      height: height * 0.35,
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
                        S.current.status,
                        style: context.ts_s14h16_4w500,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16.w),
                  child: GestureDetector(
                    onTap: () {
                      if (_selectedItems.length > 2) {
                        _selectedTypes = [TaskStatusType.unknown];
                        _selectedItems = [_items[0]];
                      }
                      widget.onChangeStatus(_selectedTypes);
                      widget.onChangeStatusItem(_selectedItems);
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
            height: height * 0.35 - 67,
            child: ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) {
                final selected = _selectedItems.contains(_items[index]);
                return InkWell(
                  onTap: () {
                    setState(() {
                      if (selected) {
                        _selectedItems.remove(_items[index]);
                        _selectedTypes.remove(
                          _items[index].status ?? TaskStatusType.unknown,
                        );
                      } else {
                        if (index == 0) {
                          _selectedTypes = [TaskStatusType.unknown];
                          _selectedItems = [_items[0]];
                        } else {
                          _selectedTypes.remove(TaskStatusType.unknown);
                          _selectedItems.remove(_items[0]);
                        }

                        if (index != 0) {
                          _selectedTypes.add(
                            _items[index].status ?? TaskStatusType.unknown,
                          );
                          _selectedItems.add(_items[index]);
                        }
                      }
                    });
                  },
                  child: SizedBox(
                    height: 40.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 16.w,
                          ),
                          height: 24.h,
                          decoration:
                              _items[index].status != TaskStatusType.unknown
                                  ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: _backgroundColor(
                                        _items[index].status ??
                                            TaskStatusType.unknown,
                                      ),
                                    )
                                  : const BoxDecoration(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (_items[index].status !=
                                  TaskStatusType.unknown)
                                Container(
                                  width: 24.w,
                                  height: 24.h,
                                  padding: EdgeInsets.all(4.r),
                                  child: _items[index].icon ?? const SizedBox(),
                                ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 6.h,
                                  right: 8.w,
                                ),
                                child: Text(
                                  _items[index].title,
                                  textAlign: TextAlign.center,
                                  style: context.ts_s14h14w400.copyWith(
                                    color: _textColor(
                                      _items[index].status ??
                                          TaskStatusType.unknown,
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
