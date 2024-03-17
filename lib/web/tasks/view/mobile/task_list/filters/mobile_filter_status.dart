import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/const/enums.dart';
import 'package:dls_one/web/tasks/view/mobile/task_list/filters/mobile_filter_status_content.dart';
import 'package:dls_one/web/tasks/view/web/filters/models/filter_status_item.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class MobileFilterStatus extends StatefulWidget {
  const MobileFilterStatus({
    required this.onChangeStatus,
    required this.filters,
    super.key,
  });

  final void Function(List<TaskStatusType>) onChangeStatus;
  final Map<FilterTypes, Object> filters;

  @override
  State<MobileFilterStatus> createState() => _MobileFilterStatusState();
}

class _MobileFilterStatusState extends State<MobileFilterStatus> {
  List<TaskStatusType> _selectedTypes = [TaskStatusType.unknown];
  List<StatusItem> _selectedItems = [];

  Color backgroundColor(TaskStatusType value) {
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

  Color textColor(TaskStatusType value) {
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

  @override
  void didUpdateWidget(covariant MobileFilterStatus oldWidget) {
    if (widget.filters.isEmpty) {
      _selectedTypes = [TaskStatusType.unknown];
      _selectedItems = [];
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
                return MobileFilerStatusContent(
                  onChangeStatus: (value) {
                    _selectedTypes = [];
                    _selectedTypes = value;
                    widget.onChangeStatus(value);
                  },
                  onChangeStatusItem: (value) {
                    _selectedItems = value;
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
                S.current.status,
                style: context.ts_s14h22_4w400,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: !_selectedTypes.contains(TaskStatusType.unknown)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(_selectedTypes.length, (index) {
                        return Container(
                          margin: EdgeInsets.only(
                            left: 6.w,
                          ),
                          height: 24.h,
                          decoration:
                              _selectedTypes[index] != TaskStatusType.unknown
                                  ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: backgroundColor(
                                        _selectedTypes[index],
                                      ),
                                    )
                                  : const BoxDecoration(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (_selectedTypes[index] !=
                                  TaskStatusType.unknown)
                                Container(
                                  width: 24.w,
                                  height: 24.h,
                                  padding: EdgeInsets.all(4.r),
                                  child: _selectedItems[index].icon ??
                                      const SizedBox(),
                                ),
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 8.w,
                                ),
                                child: Text(
                                  _selectedItems[index].title,
                                  textAlign: TextAlign.center,
                                  style: context.ts_s14h22_4w400.copyWith(
                                    color: textColor(
                                      _selectedItems[index].status ??
                                          TaskStatusType.unknown,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
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
