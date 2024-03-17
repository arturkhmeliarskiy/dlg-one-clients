import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DLSFormInput extends StatelessWidget {
  const DLSFormInput({
    this.controller,
    this.hintText,
    this.validator,
    super.key,
  });

  final TextEditingController? controller;
  final String? hintText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    // TODO: судя по дизайн системе, должен быть фон в зависимости от
    // MaterialState. TextFormField из коробки так не умееет.
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      cursorColor: context.c_text,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: context.ts_s14h16_4w400.copyWith(
          color: context.c_placeholder,
        ),
        labelStyle: context.ts_s14h16_4w400,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 13.h,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: BorderSide(
            width: 1.r,
            color: context.c_grey_stoke,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: BorderSide(
            width: 1.r,
            color: context.c_grey_stoke,
          ),
        ),
        hoverColor: context.c_placeholder,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: BorderSide(
            width: 1.r,
            color: context.c_placeholder,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: BorderSide(
            width: 1.r,
            color: context.c_red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: BorderSide(
            width: 1.r,
            color: context.c_red,
          ),
        ),
      ),
    );
  }
}
