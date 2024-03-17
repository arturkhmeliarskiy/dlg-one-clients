import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

/// тип ответа диалога
enum DLSDialogAnswer {
  cancel(value: false),
  confirm(value: true);

  const DLSDialogAnswer({required this.value});

  final bool value;
}

/// такой диалог предлагает дизайнер
Future<DLSDialogAnswer?> showDLSDialog(
  BuildContext context,
  String? title,
  String? content, {
  TextStyle? titleTextStyle,
  TextStyle? contentTextStyle,
  double? width,
  bool onlyYesButton = false,
  String? yesButtonLabel,
  String? cancelButtonLabel,
}) {
  return showDialog<DLSDialogAnswer>(
    context: context,
    builder: (BuildContext context) => Dialog(
      elevation: 0,
      alignment: Alignment.center,
      insetPadding: EdgeInsets.all(12.r),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
      ),
      child: SizedBox(
        width: width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null)
              Text(
                title,
                style: titleTextStyle ??
                    context.ts_s14h14w400.copyWith(color: context.c_text),
              ).paddingOnly(bottom: 20.r),
            if (content != null)
              Text(
                content,
                style: contentTextStyle ??
                    context.ts_s14h22_4w400.copyWith(color: context.c_text_grey),
              ).paddingOnly(bottom: 20.r),
            Row(
              children: [
                if (!onlyYesButton)
                  DLSButtonText(
                    onTap: () => Navigator.pop(context, DLSDialogAnswer.cancel),
                    text: cancelButtonLabel ?? S.current.no,
                    textStyle:
                        context.ts_s14h14w400.copyWith(color: context.c_text_grey),
                  ),
                if (!onlyYesButton) const Spacer(),
                DLSButtonText(
                  onTap: () => Navigator.pop(context, DLSDialogAnswer.confirm),
                  text: yesButtonLabel ?? S.current.yes,
                ),
              ],
            )
          ],
        ).paddingAll(20.r),
      ),
    ),
  );
}

Future<DLSDialogAnswer?> showDLSDialog2(
  BuildContext context,
  String? title,
  String? content, {
  double? width,
  bool onlyYesButton = false,
  String? yesButtonLabel,
  String? cancelButtonLabel,
}) {
  return showDialog<DLSDialogAnswer>(
    context: context,
    builder: (BuildContext context) => Dialog(
      elevation: 0,
      alignment: Alignment.center,
      insetPadding: EdgeInsets.all(12.r),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
      ),
      child: SizedBox(
        width: width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DLSHeaders.h3(title).expanded(),
                  DLSButtonIcon(
                    color: Colors.transparent,
                    onTap: () => Navigator.pop(context),
                    icon: Assets.icons.times1.svg(
                      height: 18.r,
                      width: 18.r,
                      colorFilter: context.c_text_grey_color_filter,
                    ),
                  ),
                ],
              ),
            if (content != null && title != null)
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12.h),
                child: const DLSDivider(),
              )
            else
              SizedBox(height: 12.h),
            if (content != null) DLSBody.s1421(content),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  DLSButton(
                    height: 32.h,
                    onTap: () =>
                        Navigator.pop(context, DLSDialogAnswer.confirm),
                    text: yesButtonLabel ?? S.current.yes,
                    isShadowEnabled: false,
                    color: context.c_blue,
                    textColor: context.c_white_text,
                  ),
                  const Spacer(),
                  if (!onlyYesButton)
                    DLSButton(
                      height: 32.h,
                      onTap: () =>
                          Navigator.pop(context, DLSDialogAnswer.cancel),
                      text: cancelButtonLabel ?? S.current.no,
                      isShadowEnabled: false,
                      border: Border.all(color: context.c_grey_stoke),
                    ),
                ],
              ),
            ),
          ],
        ).paddingAll(12.r),
      ),
    ),
  );
}
