part of '../web_settings_notifications_page.dart';

class _NotificationEnabledWidget extends StatelessWidget {
  const _NotificationEnabledWidget({
    required this.notificationsEnabled,
    required this.onTap,
  });

  final bool notificationsEnabled;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DLSButtonFlat(
          icon: !notificationsEnabled
              ? Row(
            crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        DlsSwitchPartBackground(color: context.c_blue),
                        const DlsSwitchPartCircle()
                            .paddingSymmetric(horizontal: 2.w),
                      ],
                    ),
                    SizedBox(width: 12.w),
                    Assets.icons.volumeMute1.svg(
                      height: 15.r,
                      width: 15.r,
                      color: context.c_text_grey,
                    ),
                    SizedBox(width: 4.w)
                  ],
                )
              : Row(
            crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        DlsSwitchPartBackground(
                          color: context.c_grey_hover,
                        ),
                        const DlsSwitchPartCircle()
                            .paddingSymmetric(horizontal: 2.w),
                      ],
                    ),
                    SizedBox(width: 12.w),
                    Assets.icons.volumeMute1.svg(
                      height: 15.r,
                      width: 15.r,
                      color: context.c_text_grey,
                    ),
                    SizedBox(width: 4.w)
                  ],
                ),
          text: S.current.mute_sound_notifications,
          height: 16.h,
          textStyle: context.ts_s14h14w500.copyWith(color: context.c_text),
          crossAxisAlignment: CrossAxisAlignment.end,
          // ignore: unnecessary_lambdas
          onTap: () => onTap(),
          border: Border.all(color: context.c_white_text, width: 0),
        ),
      ],
    );
  }
}
