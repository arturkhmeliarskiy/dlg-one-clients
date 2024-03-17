import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class ListPicker extends StatelessWidget {
  const ListPicker._({
    required this.labels,
    required this.selectedIndex,
  });

  static Future<int?> show(
    BuildContext context, {
    required List<String> labels,
    required int selectedIndex,
  }) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
      ),
      clipBehavior: Clip.hardEdge,
      builder: (context) {
        return ListPicker._(
          labels: labels,
          selectedIndex: selectedIndex,
        );
      },
    );
  }

  final List<String> labels;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10.h),
          ...List.generate(
            labels.length,
            (index) {
              return InkWell(
                onTap: () {
                  Navigator.pop(context, index);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.h,
                    horizontal: 16.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        labels[index],
                        style: context.ts_s14h22_4w400,
                      ),
                      if (selectedIndex == index)
                        Icon(
                          Icons.check,
                          color: context.c_blue,
                        )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
