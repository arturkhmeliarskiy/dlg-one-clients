import 'package:dls_one/common/gen/localization/l10n.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class AuthAppBar extends PreferredSize {
  const AuthAppBar({
    this.onTapRightButton,
    this.onTapBack,
    this.rightButtonText,
    this.isRightButtonEnabled,
    super.key,
    required super.child,
    required super.preferredSize,
  });

  final GestureTapCallback? onTapBack;
  final GestureTapCallback? onTapRightButton;
  final String? rightButtonText;
  final bool? isRightButtonEnabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: preferredSize.height,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: context.c_grey_stoke,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (onTapBack != null)
            DlsBackButton(
              onTap: onTapBack,
            ).paddingOnly(
              right: 12.w,
            ),
          child.expanded(),
          if (onTapRightButton != null)
            DLSButtonText(
              onTap: onTapRightButton,
              text: rightButtonText ?? S.current.registration,
              isDisabled: !(isRightButtonEnabled ?? true),
            ).paddingOnly(left: 12.w)
        ],
      ).paddingOnly(top: 19.5.h, left: 16.w, right: 16.w),
    );
  }
}
