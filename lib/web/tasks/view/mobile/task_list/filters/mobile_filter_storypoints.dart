import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/const/enums.dart';
import 'package:dls_one/web/tasks/view/mobile/task_list/filters/mobile_filter_storypoints_content.dart';
import 'package:dls_one/web/tasks/view/storypoint_extension.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class MobileFilterStorypoints extends StatefulWidget {
  const MobileFilterStorypoints({
    required this.onChangeStorypoints,
    required this.filters,
    super.key,
  });

  final void Function(DlsStorypointsEnum) onChangeStorypoints;
  final Map<FilterTypes, Object> filters;

  @override
  State<MobileFilterStorypoints> createState() =>
      _MobileFilterStorypointsState();
}

class _MobileFilterStorypointsState extends State<MobileFilterStorypoints> {
  String _storypoints = '';

  @override
  void didUpdateWidget(covariant MobileFilterStorypoints oldWidget) {
    if (widget.filters.isEmpty) {
      _storypoints = '';
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    TaskRolesType.unknown.name;
    final notSelected = S.current.not_selected[0].toUpperCase() +
        S.current.not_selected.substring(1, 10);
    return InkWell(
      onTap: () async {
        await showModalBottomSheet<void>(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(8),
            ),
          ),
          isScrollControlled: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          builder: (context) {
            return StatefulBuilder(
              builder: (BuildContext context, StateSetter setStat) {
                return MobileFilerStorypointsContent(
                  onChangeStorypoints: (index) {
                    setState(() {
                      _storypoints =
                          DlsStorypointsEnum.values[index].localizeToUI();
                    });
                    widget
                        .onChangeStorypoints(DlsStorypointsEnum.values[index]);
                    Navigator.of(context).pop();
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
                S.current.story_points,
                style: context.ts_s14h22_4w400,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: notSelected != _storypoints && _storypoints.isNotEmpty
                  ? Text(
                      _storypoints,
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
