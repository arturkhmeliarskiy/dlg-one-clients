import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/const/enums.dart';
import 'package:dls_one/web/tasks/view/mobile/task_list/filters/mobile_filter_files_content.dart';
import 'package:flutter/material.dart';

class MobileFilterFiles extends StatefulWidget {
  const MobileFilterFiles({
    required this.onChangeFiles,
    required this.filters,
    super.key,
  });

  final void Function(int) onChangeFiles;
  final Map<FilterTypes, Object> filters;

  @override
  State<MobileFilterFiles> createState() => _MobileFilterFilesState();
}

class _MobileFilterFilesState extends State<MobileFilterFiles> {
  String selectedItem = '';
  final notSelected = S.current.not_selected[0].toUpperCase() +
      S.current.not_selected.substring(1, 10);

  @override
  void initState() {
    selectedItem = notSelected;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant MobileFilterFiles oldWidget) {
    if (widget.filters.isEmpty) {
      selectedItem = notSelected;
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
          isScrollControlled: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          builder: (context) {
            return MobileFilerFilesContent(
              onChangeFiles: (value) {
                widget.onChangeFiles(value);
              },
              onChangeFilesTitle: (value) {
                setState(() {
                  selectedItem = value;
                });
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
                S.current.files_title,
                style: context.ts_s14h22_4w400,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: selectedItem != notSelected
                  ? Text(
                      selectedItem,
                      style: context.ts_s14h22_4w400,
                    )
                  : Text(
                      notSelected,
                      style: context.ts_s14h22_4w400.copyWith(
                        color: context.c_grey_calendar_task_isFinished,
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
