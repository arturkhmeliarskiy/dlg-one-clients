part of '../web_settings_notifications_page.dart';

class _ScheduleEnabledWidget extends StatelessWidget {
  const _ScheduleEnabledWidget({
    required this.scheduleEnabled,
    required this.onTap,
  });

  final bool scheduleEnabled;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLSButtonFlat(
          icon: scheduleEnabled
              ? Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    DlsSwitchPartBackground(color: context.c_blue),
                    const DlsSwitchPartCircle()
                        .paddingSymmetric(horizontal: 2.w),
                  ],
                ).paddingOnly(right: 12.w)
              : Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    DlsSwitchPartBackground(
                      color: context.c_grey_hover,
                    ),
                    const DlsSwitchPartCircle()
                        .paddingSymmetric(horizontal: 2.w),
                  ],
                ).paddingOnly(right: 12.w),
          text: S.current.notifications_schedule,
          height: 16.h,
          isBordered: false,
          textStyle: context.ts_s14h14w500.copyWith(color: context.c_text),
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          horizontalPadding: 0,
          // ignore: unnecessary_lambdas
          onTap: () => onTap(),
        ),
      ],
    );
  }
}
