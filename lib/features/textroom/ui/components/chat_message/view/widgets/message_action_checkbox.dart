import 'package:common/common.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class MessageActionCheckbox extends StatelessWidget {
  const MessageActionCheckbox({
    required this.value,
    required this.onChanged,
    super.key,
  });

  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      hitTestBehavior: HitTestBehavior.translucent,
      child: GestureDetector(
        onTap: () {
          onChanged(!value);
        },
        child: Container(
          width:
              DlsPlatform.dlsPlatform == DlsPlatformType.mobile ? 16.w : 20.w,
          height:
              DlsPlatform.dlsPlatform == DlsPlatformType.mobile ? 16.w : 20.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            border: Border.all(
              color: value ? context.c_blue : context.c_grey_stoke,
            ),
            color: value ? context.c_blue : context.c_white_text,
          ),
          child: value
              ? Assets.icons.star9.svg(
                  width: DlsPlatform.dlsPlatform == DlsPlatformType.mobile
                      ? 14.w
                      : 18.w,
                  height: DlsPlatform.dlsPlatform == DlsPlatformType.mobile
                      ? 14.w
                      : 18.w,
                  color: context.c_white_text,
                )
              : null,
        ),
      ),
    );
  }
}
