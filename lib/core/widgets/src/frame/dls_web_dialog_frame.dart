import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsWebDialogFrame extends StatelessWidget {
  const DlsWebDialogFrame({
    super.key,
    this.title = '',
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      alignment: Alignment.center,
      insetPadding: EdgeInsets.all(12.r),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
      ),
      child: Container(
        constraints: BoxConstraints(
          minWidth: 800.w,
          minHeight: 400.h,
          // TODO config resizing
          maxWidth: 840.w,
          maxHeight: 500.h,
        ),
        child: Column(
          children: [
            SizedBox(height: 16.h),
            DlsPadding.symmetric(
              horizontal: 20.w,
              child: Row(
                children: [
                  DLSHeaders.h1(title),
                  const Spacer(),
                  SizedBox(
                    height: 18,
                    width: 18,
                    child: DlsCloseButton(
                      onClose: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}
