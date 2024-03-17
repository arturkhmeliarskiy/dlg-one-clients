import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DlsSingleFilterSelector<T> extends StatefulWidget {
  const DlsSingleFilterSelector({
    required this.value,
    required this.items,
    required this.onFormat,
    required this.onChanged,
    this.icon,
    this.button,
    this.height,
    this.dropdownWidth,
    super.key,
  });

  final T? value;
  final List<T> items;
  final ValueChanged<T?> onChanged;

  final String Function(T?) onFormat;

  final Widget? icon;
  final Widget? button;
  final double? height;
  final double? dropdownWidth;

  @override
  State<DlsSingleFilterSelector<T>> createState() =>
      _DlsSingleFilterSelectorState<T>();
}

class _DlsSingleFilterSelectorState<T>
    extends State<DlsSingleFilterSelector<T>> {
  String _getText(T? item) => widget.onFormat.call(item);

  bool _isMenuOpened = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Theme(
      data: theme.copyWith(
        hoverColor: context.c_grey_grey,
      ),
      child: DropdownButton2<T>(
        value: widget.value,
        onChanged: widget.onChanged,
        onMenuStateChange: (value) {
          setState(() {
            _isMenuOpened = value;
          });
        },
        underline: const SizedBox(),
        customButton: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            color: widget.value != null
                ? context.c_grey_grey
                : context.c_white_background,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 5.w,
            vertical: 3.h,
          ),
          child: Row(
            children: [
              Text(
                widget.onFormat(widget.value),
                style: context.ts_s14h16_4w400.copyWith(
                  color: widget.value == null
                      ? context.c_text_grey
                      : context.c_text,
                ),
              ),
              SizedBox(width: 4.w),
              WebDropdownMenuIcon(
                isIconUp: true,
                isMenuOpen: !_isMenuOpened,
              ),
              if (widget.value != null) ...[
                InkWell(
                  onTap: () {
                    widget.onChanged(null);
                  },
                  borderRadius: BorderRadius.circular(5.r),
                  child: Assets.icons.close.svg(
                    color: context.c_text_grey,
                  ),
                ),
              ]
            ],
          ),
        ),
        buttonDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
        ),
        focusColor: context.c_white_background,
        itemPadding: EdgeInsets.zero,
        itemHeight: widget.height ?? 32.h,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(
            width: 1.r,
            color: context.c_grey_stoke,
          ),
        ),
        selectedItemHighlightColor: Colors.white,
        dropdownWidth: widget.dropdownWidth,
        items: widget.items.map((item) {
          return DropdownMenuItem<T>(
            value: item,
            enabled: false,
            child: DlsPadding.symmetric(
              horizontal: 4.w,
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    context.popRoute();
                    widget.onChanged.call(item);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    foregroundColor: context.c_text,
                  ),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text(
                      _getText(item),
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      style: context.ts_s14h14w400.copyWith(
                        color: context.c_text,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
