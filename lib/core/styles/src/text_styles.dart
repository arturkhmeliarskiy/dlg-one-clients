// ignore_for_file: non_constant_identifier_names

import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

extension TextStylesContext on BuildContext {
  T dynamicAnyStyle<T>({required T light, required T dark}) {
    return (Theme.of(this).brightness == Brightness.light) ? light : dark;
  }

  // --- Text themes --- //
  TextStyle get ts_s32h37_5w400 => dynamicAnyStyle(
        light: TextStyle(
          fontSize: 32.sp,
          height: 37.5 / 32,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto',
        ),
        dark: TextStyle(
          fontSize: 32.sp,
          height: 37.5 / 32,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto',
        ),
      );

  TextStyle get ts_s18h21w500 => dynamicAnyStyle(
        light: TextStyle(
          fontSize: 18.sp,
          height: 21.09 / 18,
          fontWeight: FontWeight.w500,
          fontFamily: 'Roboto',
        ),
        dark: TextStyle(
          fontSize: 18.sp,
          height: 21.09 / 18,
          fontWeight: FontWeight.w500,
          fontFamily: 'Roboto',
        ),
      );

  TextStyle get ts_s18h21w400 => dynamicAnyStyle(
        light: TextStyle(
          fontSize: 18.sp,
          height: 21.09 / 18,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto',
        ),
        dark: TextStyle(
          fontSize: 18.sp,
          height: 21.09 / 18,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto',
        ),
      );

  TextStyle get ts_s24h28w400 => TextStyle(
        fontSize: 24.sp,
        height: 28.1 / 24,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      );

  TextStyle get ts_s14h22_4w400 => TextStyle(
        fontSize: 14.sp,
        height: 22.4 / 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      );

  TextStyle get ts_s14h24_4w400 => TextStyle(
        fontSize: 14.sp,
        height: 24 / 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      );

  TextStyle get ts_s14h14w400 => TextStyle(
        fontSize: 14.sp,
        height: 1,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      );

  TextStyle get ts_s14h14w500 => TextStyle(
        fontSize: 14.sp,
        height: 1,
        fontWeight: FontWeight.w500,
        fontFamily: 'Roboto',
      );

  TextStyle get ts_s14h16_4w400 => TextStyle(
        fontSize: 14.sp,
        height: 16.41 / 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      );
  TextStyle get ts_s14h16w400 => TextStyle(
        fontSize: 14.sp,
        height: 16 / 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      );
  TextStyle get ts_s14h18w400 => TextStyle(
        fontSize: 14.sp,
        height: 18 / 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      );

  TextStyle get ts_s14h16_4w500 => TextStyle(
        fontSize: 14.sp,
        height: 16.41 / 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'Roboto',
      );

  TextStyle get ts_s12h22_4w400 => TextStyle(
        fontSize: 12.sp,
        height: 22.4 / 12,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      );

  TextStyle get ts_s12h14w400 => TextStyle(
        fontSize: 12.sp,
        height: 14.04 / 12,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      );

  TextStyle get ts_s12h12w400 => TextStyle(
        fontSize: 12.sp,
        height: 1,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      );

  TextStyle get ts_s12h12w500 => TextStyle(
        fontSize: 12.sp,
        height: 1,
        fontWeight: FontWeight.w500,
        fontFamily: 'Roboto',
      );

  TextStyle get ts_s12h14w500 => TextStyle(
        fontSize: 12.sp,
        height: 14.04 / 12,
        fontWeight: FontWeight.w500,
        fontFamily: 'Roboto',
      );

  TextStyle get ts_s13h15w500 => TextStyle(
        fontSize: 13.sp,
        height: 15.23 / 13,
        fontWeight: FontWeight.w500,
        fontFamily: 'Roboto',
      );

  TextStyle get ts_s10h11_7w400 => TextStyle(
        fontSize: 10.sp,
        height: 11.72 / 10,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      );

  TextStyle get ts_s10h11_7w700 => TextStyle(
        fontSize: 10.sp,
        height: 11.72 / 10,
        fontWeight: FontWeight.w700,
        fontFamily: 'Roboto',
      );

  TextStyle get ts_s10h11_7w600 => TextStyle(
        fontSize: 10.sp,
        height: 11.72 / 10,
        fontWeight: FontWeight.w600,
        fontFamily: 'Roboto',
      );

  TextStyle get ts_s10h12w400 => TextStyle(
        fontSize: 10.sp,
        height: 12 / 10,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      );

  TextStyle get ts_s10h12w600 => TextStyle(
        fontSize: 10.sp,
        height: 12 / 10,
        fontWeight: FontWeight.w600,
        fontFamily: 'Roboto',
      );

  TextStyle get ts_s30h30w500 => TextStyle(
        fontSize: 30.sp,
        height: 1,
        fontWeight: FontWeight.w500,
        fontFamily: 'Roboto',
      );

  List<BoxShadow> get shadow => [
        BoxShadow(
          color: const Color.fromRGBO(0, 0, 0, 0.12),
          blurRadius: 13.r,
          offset: Offset(4.w, 0),
        ),
      ];
}
