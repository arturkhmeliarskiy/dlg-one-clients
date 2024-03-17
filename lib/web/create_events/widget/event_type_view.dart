import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/web/create_events/create_events.dart';
import 'package:flutter/material.dart';

class EventTypeView extends StatelessWidget {
  const EventTypeView({
    required this.online,
    required this.onChanged,
    super.key,
  });

  final bool online;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return DLSPageBuilder(
      wide: DlsPadding.symmetric(
        horizontal: 20.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.current.eventType,
              style: context.ts_s14h14w400.copyWith(color: context.c_text_grey),
            ),
            SizedBox(height: 8.h),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 208.w),
              child: Row(
                children: [
                  Expanded(
                    child: EventTypeButton(
                      text: S.current.onlineName,
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(4.r)),
                      checked: online,
                      onPressed: () => onChanged(true),
                    ),
                  ),
                  Expanded(
                    child: EventTypeButton(
                      text: S.current.offlineName,
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(4.r)),
                      backgroundColor: context.c_tiffany_background,
                      borderColor: context.c_tiffany,
                      textColor: context.c_tiffany,
                      checked: !online,
                      onPressed: () => onChanged(false),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      narrow: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 148.w),
        child: Row(
          children: [
            Expanded(
              child: EventTypeButton(
                text: S.current.onlineName,
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(4.r)),
                checked: online,
                onPressed: () => onChanged(true),
              ),
            ),
            Expanded(
              child: EventTypeButton(
                text: S.current.offlineName,
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(4.r)),
                backgroundColor: context.c_tiffany_background,
                borderColor: context.c_tiffany,
                textColor: context.c_tiffany,
                checked: !online,
                onPressed: () => onChanged(false),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
