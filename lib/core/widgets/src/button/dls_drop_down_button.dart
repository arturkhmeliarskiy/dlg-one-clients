import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DlsDropDownButton<T> extends StatelessWidget {
  const DlsDropDownButton({
    required this.button,
    required this.items,
    this.value,
    this.onChanged,
    this.onFormat,
    this.icon,
    this.height,
    this.itemBuilder,
    this.dropdownWidth,
    this.onMenuStateChange,
    super.key,
  });

  final T? value;
  final List<T> items;
  final ValueChanged<T?>? onChanged;
  final Widget? Function(T)? itemBuilder;

  /// onFormat will not be called if itemBuilder is not null
  final String? Function(T?)? onFormat;
  final Widget button;
  final Widget? icon;
  final double? height;
  final double? dropdownWidth;
  final ValueChanged<bool>? onMenuStateChange;

  String _getText(T? item) => onFormat?.call(item) ?? item?.toString() ?? '';

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => DropdownButton2<T>(
        value: value,
        onChanged: onChanged,
        onMenuStateChange: onMenuStateChange,
        underline: const SizedBox(),
        icon: icon ?? const SizedBox(),
        customButton: button,
        itemPadding: EdgeInsets.zero,
        itemHeight: this.height ?? 32.h,
        dropdownDecoration:
            BoxDecoration(borderRadius: BorderRadius.circular(5.r)),
        dropdownWidth: dropdownWidth,
        items: items.map((item) {
          final checked = item == value;
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
                    onChanged?.call(item);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: checked ? context.c_grey_grey : null,
                    padding: EdgeInsets.zero,
                    foregroundColor: context.c_text,
                  ),
                  child: itemBuilder?.call(item) ??
                      Container(
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
