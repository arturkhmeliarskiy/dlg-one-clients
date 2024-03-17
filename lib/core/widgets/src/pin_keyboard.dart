import 'package:dls_one/common/gen/localization/l10n.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class PinKeyboard extends StatelessWidget {
  const PinKeyboard({
    super.key,
    required this.onTapCallback,
    required this.onBackspace,
    this.onExit,
  });
  final Function onTapCallback;
  final VoidCallback onBackspace;
  final Function? onExit;

  DLSButtonText btn(int val, BuildContext context) {
    return DLSButtonText(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      text: val.toString(),
      textStyle: context.ts_s32h37_5w400.copyWith(color: context.c_text),
      onTap: () => onTapCallback(val),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    btn(1, context),
                    SizedBox(width: 25.w),
                    btn(2, context),
                    SizedBox(width: 25.w),
                    btn(3, context),
                  ],
                ),
                SizedBox(height: 22.h),
                Row(
                  children: [
                    btn(4, context),
                    SizedBox(width: 25.w),
                    btn(5, context),
                    SizedBox(width: 25.w),
                    btn(6, context),
                  ],
                ),
                SizedBox(height: 22.h),
                Row(
                  children: [
                    btn(7, context),
                    SizedBox(width: 25.w),
                    btn(8, context),
                    SizedBox(width: 25.w),
                    btn(9, context),
                  ],
                ),
                SizedBox(height: 22.h),
                Row(
                  children: [
                    if (onExit != null)
                      DLSButtonText(
                        text: S.current.exit,
                        textStyle: context.ts_s14h22_4w400
                            .copyWith(color: context.c_text_grey),
                      ).gestureDetector(onTap: () => onExit!())
                    else
                      DLSButtonText(
                        text: S.current.exit,
                        textStyle: context.ts_s14h22_4w400
                            .copyWith(color: Colors.transparent),
                      ),
                    SizedBox(width: 25.w),
                    btn(0, context),
                    SizedBox(width: 25.w),
                    // context.read<LoginBloc>().bio == true && widget.code.text.isEmpty
                    //     ? Assets.icons.biometrySmall
                    //         .svg(
                    //           color: context.c_text_grey,
                    //           width: 40.w,
                    //           height: 40.h,
                    //         )
                    //         .gestureDetector(onTap: auth)
                    //     :
                    Assets.icons.cancel1
                        .svg(
                          color: context.c_text_grey,
                          width: 40.w,
                          height: 40.h,
                        )
                        .gestureDetector(onTap: onBackspace)
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
