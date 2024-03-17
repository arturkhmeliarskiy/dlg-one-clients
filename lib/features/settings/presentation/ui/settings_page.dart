import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/settings/presentation/ui/pin_validator_page.dart';
import 'package:dls_one/features/settings/presentation/ui/settings_bio_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.c_appbar,
      appBar: OldDlsAppBar(
        title: S.current.settings,
        titleStyle: context.ts_s18h21w500,
        height: 60.h,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            DLSButtonFlat(
              icon: Assets.icons.user
                  .svg(
                    colorFilter: ColorFilter.mode(
                      context.c_text_grey,
                      BlendMode.srcIn,
                    ),
                  )
                  .paddingOnly(right: 8.w, left: 12),
              text: S.current.personal_data,
              height: 50.h,
              border: Border.all(color: context.c_grey_stoke),
              textStyle: context.ts_s14h14w500.copyWith(color: context.c_text),
              onTap: onTapProfile,
              contentAlignment: Alignment.centerLeft,
            ),
            SizedBox(height: 20.h),
            DLSButtonFlat(
              icon: Assets.icons.bell1
                  .svg(
                    colorFilter: ColorFilter.mode(
                      context.c_text_grey,
                      BlendMode.srcIn,
                    ),
                  )
                  .paddingOnly(right: 8.w, left: 12),
              text: S.current.notifications,
              height: 50.h,
              border: Border.all(color: context.c_grey_stoke),
              textStyle: context.ts_s14h14w500.copyWith(color: context.c_text),
              onTap: onTapNotifications,
              contentAlignment: Alignment.centerLeft,
            ),
            SizedBox(height: 20.h),
            DLSButtonFlat(
              icon: Assets.icons.padlock1
                  .svg(
                    colorFilter: ColorFilter.mode(
                      context.c_text_grey,
                      BlendMode.srcIn,
                    ),
                  )
                  .paddingOnly(right: 8.w, left: 12),
              text: S.current.change_password,
              height: 50.h,
              border: Border.all(color: context.c_grey_stoke),
              textStyle: context.ts_s14h14w500.copyWith(color: context.c_text),
              onTap: onTapPassword,
              contentAlignment: Alignment.centerLeft,
            ),
            SizedBox(height: 20.h),
            SettingsBioButton.withProvider(),
            SizedBox(height: 20.h),
            DLSButtonFlat(
              icon: Assets.icons.dialpadAlt
                  .svg(
                    colorFilter: ColorFilter.mode(
                      context.c_text_grey,
                      BlendMode.srcIn,
                    ),
                  )
                  .paddingOnly(right: 8.w, left: 12),
              text: S.current.change_pin,
              height: 50.h,
              border: Border.all(color: context.c_grey_stoke),
              textStyle: context.ts_s14h14w500.copyWith(color: context.c_text),
              onTap: onTapPin,
              contentAlignment: Alignment.centerLeft,
            ),
          ],
        ),
      ),
    );
  }

  void onTapProfile() {
    context.navigateTo(const SettingsProfileRootRoute());
  }

  void onTapNotifications() {
    context.navigateTo(const SettingsNotificationsRoute());
  }

  void onTapPassword() {
    context.navigateTo(const SettingsPasswordRoute());
  }

  void onTapPin() {
    Navigator.push<String>(
      context,
      MaterialPageRoute(
        builder: (context) => PinValidatorPage.route(),
      ),
    ).then(
      (pinHash) {
        if (pinHash != null) {
          context.pushRoute(
            SettingsPinRoute(
              pinHash: pinHash,
            ),
          );
        }
      },
    );
  }
}
