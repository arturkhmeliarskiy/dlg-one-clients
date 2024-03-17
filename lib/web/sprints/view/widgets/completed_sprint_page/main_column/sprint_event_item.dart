import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/user/user_short_horizontal_list.dart';
import 'package:dls_one/utils/src/formatters.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class SprintEventItem extends StatefulWidget {
  const SprintEventItem({
    required this.event,
    required this.onDelete,
    required this.onTap,
    super.key,
  });

  final TaskEventModel event;
  final VoidCallback onTap;
  final VoidCallback onDelete;

  @override
  State<SprintEventItem> createState() => _SprintEventItemState();
}

class _SprintEventItemState extends State<SprintEventItem> {
  late bool _focused = false;

  @override
  Widget build(BuildContext context) {
    final online = widget.event.type == TaskEventType.online;
    final typeColor = online ? context.c_purple : context.c_tiffany;
    final location = widget.event.location;
    final members = widget.event.members ?? [];
    return MouseRegion(
      onHover: (_) {
        _focused = true;
        setState(() {});
      },
      onExit: (_) {
        _focused = false;
        setState(() {});
      },
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          height: 40.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            border: Border.all(color: context.c_grey_stoke),
          ),
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Row(
            children: [
              SizedBox(width: 4.w),
              Tooltip(
                message: online ? S.current.onlineName : S.current.offlineName,
                child: CircleAvatar(
                  radius: 4.r,
                  backgroundColor: typeColor,
                ),
              ),
              SizedBox(width: 8.w),
              Text(
                widget.event.title,
                style: context.ts_s14h14w500,
              ),
              SizedBox(width: 12.w),
              Text(
                formatDateDdMM(widget.event.startAt ?? DateTime(0)),
                style:
                    context.ts_s14h14w400.copyWith(color: context.c_text_grey),
              ),
              SizedBox(width: 12.w),
              Text(
                '${formatTimeHHmm(widget.event.startAt ?? DateTime(0))}'
                ' - '
                '${formatTimeHHmm(widget.event.endAt ?? DateTime(0))}',
                style:
                    context.ts_s14h14w400.copyWith(color: context.c_text_grey),
              ),
              SizedBox(width: 12.w),
              if (location != null) ...[
                Assets.icons.location.svg(),
                SizedBox(width: 4.w),
                Expanded(
                  child: Tooltip(
                    message: location,
                    child: Text(
                      location,
                      style: context.ts_s14h14w400
                          .copyWith(color: context.c_text_grey),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ),
                SizedBox(width: 4.w),
              ] else
                const Spacer(),
              if (members.isNotEmpty) UserShortHorizontalList(users: members),
              if (_focused)
                DlsPadding.only(
                  left: 12.w,
                  child: Tooltip(
                    message: S.current.participate_not,
                    child: DlsRemoveButton(
                      onTap: widget.onDelete,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
