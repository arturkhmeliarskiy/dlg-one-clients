import 'package:common/common.dart';
import 'package:dls_one/const/enums.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/custom_full_button.dart';
import 'package:dls_one/utils/src/dls_platform_helper.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class StatusButton extends StatefulWidget {
  const StatusButton({
    required this.status,
    required this.onTapStatus,
    this.height = 32,
    this.isIcon = true,
    this.enabled = true,
    this.border = false,
    super.key,
  });

  final TaskStatusType status;
  final double height;
  final bool isIcon;
  final void Function(TaskStatusType) onTapStatus;
  final bool enabled;
  final bool border;

  @override
  State<StatusButton> createState() => _StatusButtonState();
}

class _StatusButtonState extends State<StatusButton> {
  bool isMenuOpen = false;
  bool isHovered = false;
  final dropdownKey = GlobalKey<DropdownButton2State>();
  late TaskStatusType selectedValue;
  List<TaskStatusType> listStatusType = <TaskStatusType>[];

  @override
  void initState() {
    selectedValue = widget.status;
    listStatusType = [
      TaskStatusType.draft,
      TaskStatusType.inTheQueue,
      TaskStatusType.atWork,
      TaskStatusType.completed,
    ];
    super.initState();
  }

  @override
  void didUpdateWidget(covariant StatusButton oldWidget) {
    selectedValue = widget.status;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height.h,
      width: width(selectedValue),
      child: DropdownButtonHideUnderline(
        // TODO refactor to [DlsDropDownButton<TaskStatusType>]
        child: DropdownButton2<TaskStatusType>(
          key: dropdownKey,
          customButton: CustomFullButton(
            isIcon: widget.isIcon,
            borderColor: !widget.enabled
                ? context.c_grey_grey
                : borderColor(selectedValue),
            icon: asset(selectedValue),
            onCallTap: () {
              dropdownKey.currentState!.callTap();
            },
            onHover: (value) {
              setState(() {
                isHovered = value;
              });
            },
            text: text(selectedValue),
            textColor: !widget.enabled
                ? context.c_placeholder
                : textColor(selectedValue),
            backgroundColor: !widget.enabled
                ? context.c_grey_grey
                : backgroundColor(selectedValue),
            width: width(selectedValue),
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
          dropdownWidth: 125.w,
          itemPadding: EdgeInsets.zero,
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            border: Border.all(
              color: context.c_grey_stoke,
            ),
          ),
          items: !widget.enabled
              ? null
              : List.generate(
                  listStatusType.length,
                  (index) => DropdownMenuItem<TaskStatusType>(
                    value: listStatusType[index],
                    onTap: () {
                      widget.onTapStatus(listStatusType[index]);
                    },
                    child: DlsPadding.only(
                      left: 6.w,
                      right: 8.w,
                      child: SizedBox(
                        height: 24.w,
                        child: Row(
                          children: [
                            asset(listStatusType[index]),
                            SizedBox(width: 4.w),
                            Text(
                              text(listStatusType[index]),
                              style: context.ts_s12h14w400.copyWith(
                                color: textColor(listStatusType[index]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ).toList(),
          value: listStatusType.contains(selectedValue) ? selectedValue : null,
          onChanged: (value) {
            setState(() {
              selectedValue = value ?? TaskStatusType.draft;
            });
          },
        ),
      ),
    );
  }

  double width(TaskStatusType value) {
    switch (value) {
      case TaskStatusType.draft:
        return widget.isIcon ? 127.w : 100.w;
      case TaskStatusType.inTheQueue:
        return widget.isIcon ? 127.w : 100.w;
      case TaskStatusType.atWork:
        return widget.isIcon ? 118.w : 89.w;
      case TaskStatusType.completed:
        return widget.isIcon ? 132.w : 105.w;
      // ignore: no_default_cases
      default:
        return widget.isIcon ? 127.w : 100.w;
    }
  }

  Color borderColor(TaskStatusType value) {
    if(widget.border) {
      return textColor(value);
    }
    if (isHovered) {
      return textColor(value).withOpacity(0.4);
    } else if (isMenuOpen) {
      return textColor(value);
    } else {
      return Colors.transparent;
    }
  }

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

  Widget asset(TaskStatusType value) {
    switch (value) {
      case TaskStatusType.draft:
        return !widget.enabled
            ? Assets.icons.webTaskDone.svg(
                color: context.c_placeholder,
              )
            : Assets.icons.webTaskDone.svg(
                color: context.c_text_grey,
              );
      case TaskStatusType.inTheQueue:
        return !widget.enabled
            ? Assets.icons.webTaskPlus.svg(
                color: context.c_placeholder,
              )
            : Assets.icons.webTaskPlus.svg();
      case TaskStatusType.atWork:
        return !widget.enabled
            ? Assets.icons.webTaskPlay.svg(
                color: context.c_placeholder,
              )
            : Assets.icons.webTaskPlay.svg();
      case TaskStatusType.completed:
        return !widget.enabled
            ? Assets.icons.webTaskDone.svg(
                color: context.c_placeholder,
              )
            : Assets.icons.webTaskDone.svg();
      // ignore: no_default_cases
      default:
        return const SizedBox();
    }
  }

  String text(TaskStatusType value) {
    switch (value) {
      case TaskStatusType.draft:
        return S.current.draft;
      case TaskStatusType.inTheQueue:
        return S.current.status_todo;
      case TaskStatusType.atWork:
        return S.current.status_in_progress;
      case TaskStatusType.completed:
        return S.current.status_done;
      // ignore: no_default_cases
      default:
        return S.current.status_todo;
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
        return context.c_blue;
    }
  }
}
