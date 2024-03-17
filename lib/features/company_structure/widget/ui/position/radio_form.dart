import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

// TODO(phatom): поработать над кастомизацией и вынести в общие виджеты.
class RadioForm<T> extends StatelessWidget {
  const RadioForm({
    required this.title,
    required this.value,
    required this.items,
    required this.labelBuilder,
    required this.onChanged,
    super.key,
  });

  final String title;
  final T value;
  final List<T> items;
  final String Function(T) labelBuilder;
  final ValueChanged<T?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 13.h),
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Text(
            title,
            style: context.ts_s14h16_4w500,
          ),
        ),
        SizedBox(height: 12.h),
        ...items.map(
          (item) => Row(
            children: [
              _CustomRadio(
                value: item,
                groupValue: value,
                onChanged: onChanged,
              ),
              SizedBox(width: 1.w),
              Text(
                labelBuilder(item),
                style: context.ts_s14h14w400,
              ),
            ],
          ),
        ),
        SizedBox(height: 6.h),
        const Divider(),
      ],
    );
  }
}

class _CustomRadio<T> extends StatelessWidget {
  const _CustomRadio({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    super.key,
  });

  final T value;
  final T groupValue;
  final ValueChanged<T?> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: () {
        onChanged(value);
      },
      child: Padding(
        padding: EdgeInsets.all(7.r),
        child: Icon(
          value == groupValue
              ? Icons.radio_button_checked_rounded
              : Icons.radio_button_unchecked_rounded,
          color: value == groupValue ? context.c_blue : context.c_grey_stoke,
        ),
      ),
    );
  }
}
