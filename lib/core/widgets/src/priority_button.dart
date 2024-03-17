import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/custom_full_button.dart';
import 'package:dls_one/core/widgets/src/custom_short_button.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class PriorityButton extends StatefulWidget {
  const PriorityButton({
    required this.onTapPriority,
    required this.priority,
    this.isFullButton = true,
    this.isBackgroundColor = false,
    this.width,
    this.enabled = true,
    this.border = false,
    this.margin,
    super.key,
  });

  final TaskPriorityType priority;
  final bool isFullButton;
  final bool isBackgroundColor;
  final ValueChanged<TaskPriorityType> onTapPriority;
  final double? width;
  final bool enabled;
  final bool border;
  // Now affects only on Short widget
  final EdgeInsets? margin;

  @override
  State<PriorityButton> createState() => _PriorityButtonState();
}

class _PriorityButtonState extends State<PriorityButton> {
  bool isMenuOpen = false;
  bool isHover = false;
  final dropdownKey = GlobalKey<DropdownButton2State>();
  late TaskPriorityType selectedValue;
  List<TaskPriorityType> listPriorityType = <TaskPriorityType>[];

  @override
  void initState() {
    selectedValue = widget.priority;
    listPriorityType = [
      TaskPriorityType.veryHigh,
      TaskPriorityType.high,
      TaskPriorityType.mid,
      TaskPriorityType.low,
      TaskPriorityType.veryLow,
    ];
    super.initState();
  }

  @override
  void didUpdateWidget(covariant PriorityButton oldWidget) {
    selectedValue = widget.priority;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32.h,
      width: widget.width ?? width(selectedValue),
      child: DropdownButtonHideUnderline(
        // TODO refactor to [DlsDropdownButton]
        child: DropdownButton2<TaskPriorityType>(
          key: dropdownKey,
          customButton: widget.isFullButton
              ? CustomFullButton(
                  borderColor: borderColor(selectedValue),
                  icon: _priorityIcon(selectedValue),
                  onCallTap: () {
                    dropdownKey.currentState!.callTap();
                  },
                  onHover: (value) {
                    setState(() {
                      isHover = value;
                    });
                  },
                  text: text(selectedValue),
                  textColor: textColor(selectedValue),
                  width: width(selectedValue),
                  backgroundColor: backgroundColor(selectedValue),
                )
              : CustomShortButton(
                  icon: _priorityIcon(selectedValue),
                  onCallTap: () {
                    dropdownKey.currentState!.callTap();
                  },
                  isBackgroundColor: widget.isBackgroundColor,
                  borderColor: borderColor(selectedValue),
                  backgroundColor: backgroundColor(selectedValue),
                  margin: widget.margin,
                  onHover: (value) {
                    setState(() {
                      isHover = value;
                    });
                  },
                ),
          buttonOverlayColor: MaterialStateProperty.resolveWith(getColor),
          dropdownElevation: 0,
          dropdownScrollPadding: EdgeInsets.only(
            left: 8.w,
            right: 8.w,
          ),
          buttonPadding: EdgeInsets.only(
            top: 8.h,
            bottom: 8.h,
          ),
          scrollbarRadius: Radius.circular(5.r),
          itemSplashColor: Colors.transparent,
          itemHighlightColor: Colors.transparent,
          selectedItemHighlightColor: Colors.transparent,
          buttonHeight: 28.h,
          itemHeight: 40.h,
          isExpanded: true,
          dropdownWidth: 171.h,
          itemPadding: EdgeInsets.zero,
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            border: Border.all(
              color: context.c_grey_stoke,
            ),
          ),
          items: !widget.enabled
              ? null
              : listPriorityType
                  .map(
                    (item) => DropdownMenuItem(
                      value: item,
                      onTap: () {
                        widget.onTapPriority(item);
                      },
                      child: SizedBox(
                        height: 24.h,
                        child: Row(
                          children: [
                            _priorityIcon(item),
                            SizedBox(width: 4.w),
                            Text(
                              text(item),
                              style: context.ts_s12h14w400.copyWith(
                                color: textColor(item),
                              ),
                            ),
                          ],
                        ),
                      ).paddingOnly(left: 6.w, right: 8.w),
                    ),
                  )
                  .toList(),
          value: selectedValue,
          onChanged: (value) {
            if (value == null) return;
            setState(() {
              selectedValue = value;
            });
          },
        ),
      ),
    );
  }

  double width(TaskPriorityType value) {
    switch (value) {
      case TaskPriorityType.unknown:
        return 128.w;
      case TaskPriorityType.veryHigh:
        return 128.w;
      case TaskPriorityType.high:
        return 122.w;
      case TaskPriorityType.mid:
        return 122.w;
      case TaskPriorityType.low:
        return 118.w;
      case TaskPriorityType.veryLow:
        return 171.w;
    }
  }

  Color borderColor(TaskPriorityType value) {
    if (widget.border) {
      return textColor(value);
    }
    if (isHover) {
      return textColor(value).withOpacity(0.4);
    } else if (isMenuOpen) {
      return textColor(value);
    } else {
      return Colors.transparent;
    }
  }

  Color backgroundColor(TaskPriorityType value) {
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

  String text(TaskPriorityType value) {
    switch (value) {
      case TaskPriorityType.unknown:
        return S.current.task_priority_critical;
      case TaskPriorityType.veryHigh:
        return S.current.task_priority_critical;
      case TaskPriorityType.high:
        return S.current.task_priority_high;
      case TaskPriorityType.mid:
        return S.current.task_priority_standart;
      case TaskPriorityType.low:
        return S.current.task_priority_low;
      case TaskPriorityType.veryLow:
        return S.current.task_priority_minor;
    }
  }

  Color textColor(TaskPriorityType value) {
    switch (value) {
      case TaskPriorityType.unknown:
        return context.c_red;
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

  Color getColor(Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) {
      return context.c_grey_grey;
    } else if (states.contains(MaterialState.pressed)) {
      return context.c_grey_hover;
    } else if (states.contains(MaterialState.selected)) {
      return context.c_grey_grey;
    } else if (states.contains(MaterialState.focused)) {
      return context.c_grey_grey;
    }
    return context.c_white_text;
  }
}
