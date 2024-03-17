import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/sprints/view/sprint_extensions.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class SprintDropDownButton extends StatelessWidget {
  final List<DlsSprintModel> sprints;
  final DlsSprintModel currentSprint;
  final ValueChanged<DlsSprintModel?> onChanged;

  const SprintDropDownButton({
    required this.currentSprint,
    required this.onChanged,
    this.sprints = const [],
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DlsDropDownButton<DlsSprintModel>(
      items: sprints,
      value: currentSprint,
      onChanged: onChanged,
      button: Row(
        children: [
          Assets.icons.sprint.svg(color: context.c_orange_light),
          SizedBox(width: 8.w),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 120.w),
            child: Text(
              currentSprint.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.ts_s18h21w500.copyWith(color: context.c_text),
            ),
          ),
          SizedBox(width: 4.w),
          Assets.icons.angleDown1.svg(
            height: 18.h,
            width: 18.w,
            color: context.c_text_grey,
          ),
        ],
      ),
      dropdownWidth: 256.w,
      itemBuilder: (item) {
        return DlsPadding.symmetric(
          horizontal: 12.w,
          child: Row(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 148.w),
                child: Text(
                  item.title,
                  style:
                      context.ts_s14h22_4w400.copyWith(color: context.c_text),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  item.status.text(),
                  style: context.ts_s14h22_4w400.copyWith(
                    color: item.status.iconColor(context),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
