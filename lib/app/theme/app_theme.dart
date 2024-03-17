import 'package:common/common.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/dls_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

mixin AppTheme {
  static bool get _isMobile =>
      DlsPlatform.dlsPlatform == DlsPlatformType.mobile;

  static ThemeData light(BuildContext context) => ThemeData(
        disabledColor: context.c_grey_grey,
        brightness: Brightness.light,
        visualDensity: VisualDensity.standard,
        scaffoldBackgroundColor: context.c_appbar,
        canvasColor: context.c_appbar,
        appBarTheme: AppBarTheme(
          toolbarHeight: DLSAppBar.defaultToolbarHeight,
          backgroundColor: Colors.white,
          centerTitle: false,
          titleSpacing: 8,
          foregroundColor: Colors.black,
          titleTextStyle:
              (_isMobile ? context.ts_s14h16_4w500 : context.ts_s18h21w500)
                  .copyWith(
            color: context.c_text,
          ),
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          iconTheme: IconThemeData(
            color: context.c_text_grey,
          ),
          elevation: 0,
          shadowColor: context.c_grey_stoke,
          toolbarTextStyle: context.ts_s14h22_4w400,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: context.c_blue,
            disabledForegroundColor: context.c_placeholder,
            elevation: 0,
            shadowColor: Colors.transparent,
            textStyle: context.ts_s14h22_4w400,
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ).copyWith(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: context.c_blue_menu_button,
            backgroundColor: context.c_blue,
            disabledBackgroundColor: context.c_blue_disabled,
            elevation: 0,
            shadowColor: Colors.transparent,
            textStyle:
                context.ts_s14h18w400.copyWith(color: context.c_white_text),
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.r),
            ),
          ).copyWith(
            foregroundColor: MaterialStateProperty.all(context.c_white_text),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: context.c_blue,
            disabledForegroundColor: Colors.black.withOpacity(0.38),
            elevation: 0,
            shadowColor: Colors.transparent,
            textStyle: context.ts_s14h16_4w400.copyWith(color: context.c_blue),
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
            side: BorderSide(
              color: context.c_blue,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.r),
            ),
          ).copyWith(
            overlayColor: MaterialStateProperty.all(context.c_grey_stoke),
          ),
        ),
        hoverColor: context.c_grey_hover,
        tabBarTheme: _isMobile
            ? TabBarTheme(
                labelStyle: context.ts_s14h22_4w400,
                unselectedLabelStyle: context.ts_s14h22_4w400,
                labelColor: context.c_text,
                unselectedLabelColor: context.c_text_grey,
                labelPadding: EdgeInsets.symmetric(vertical: 8.h),
                indicatorSize: TabBarIndicatorSize.tab,
              )
            : TabBarTheme(
                labelStyle: context.ts_s14h22_4w400,
                unselectedLabelStyle: context.ts_s14h22_4w400,
                labelColor: context.c_text,
                unselectedLabelColor: context.c_text_grey,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  color: context.c_white_background,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: context.c_shadow_black_opacity_10,
                    )
                  ],
                ),
              ),
        timePickerTheme: TimePickerThemeData(
          helpTextStyle: context.ts_s14h16_4w500,
        ),
        dividerTheme: DividerThemeData(
          color: context.c_grey_stoke,
          space: 1.r,
          indent: 0,
          endIndent: 0,
          thickness: 1.r,
        ),
      );
}
