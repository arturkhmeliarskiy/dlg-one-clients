import 'package:common/common.dart';
import 'package:dls_one/app/di/app_di.dart';
import 'package:dls_one/const/enums.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsButtonFileIcon extends StatefulWidget {
  const DlsButtonFileIcon({
    Key? key,
    required this.selectAttachmentType,
  }) : super(key: key);

  final Function(AttachmentType) selectAttachmentType;

  @override
  State<DlsButtonFileIcon> createState() => _DlsButtonFileIconState();
}

class _DlsButtonFileIconState extends State<DlsButtonFileIcon> {
  OverlayEntry? overlayEntry;
  bool buttonSelected = false;

  late final FocusNode focusNode;

  @override
  void initState() {
    focusNode = FocusNode()..addListener(focusListener);
    super.initState();
  }

  @override
  void dispose() {
    focusNode
      ..removeListener(focusListener)
      ..dispose();
    overlayEntry?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      autofocus: false,
      onFocusChange: (val) {
        AppDI.findRepository<DlsLogger>().infoPrinter('CHANGE FOCUS: $val');
      },
      focusNode: focusNode,
      child: Container(
        width: 28.h,
        height: 28.h,
        decoration: BoxDecoration(
          color: buttonSelected ? context.c_grey_hover : Colors.transparent,
          borderRadius: BorderRadius.circular(5.w),
        ),
        child: Center(
          child: Assets.icons.paperclip1
              .svg(
                width: 18.w,
                height: 18.h,
                color: context.c_text_grey,
              )
              .gestureDetector(onTap: onTap),
        ),
      ),
    );
  }

  void onTap() {
    _showOverlay(context);
  }

  void _showOverlay(BuildContext context) async {
    // Declaring and Initializing OverlayState
    // and OverlayEntry objects
    OverlayState? overlayState = Overlay.of(context);

    overlayEntry = OverlayEntry(builder: (context) {
      // You can return any widget you like here
      // to be displayed on the Overlay
      return Positioned(
        bottom: 70.h,
        right: 52.w,
        child: Material(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.w),
                color: context.c_white_text,
                boxShadow: [
                  BoxShadow(
                    color: context.c_text.withOpacity(0.12),
                    blurRadius: 13.w,
                    offset: Offset(0, 4.w), // changes position of shadow
                  ),
                ],
              ),
              // width: 124.w,
              // height: 100.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectAttachmentTypeItem(
                    attachmentType: AttachmentType.image,
                    selectAttacment: () =>
                        selectAttachment(AttachmentType.image, overlayEntry),
                  ).paddingOnly(bottom: 16.w),
                  SelectAttachmentTypeItem(
                    attachmentType: AttachmentType.doc,
                    selectAttacment: () =>
                        selectAttachment(AttachmentType.doc, overlayEntry),
                  ),
                ],
              ).paddingAll(16.w),
            ),
          ),
        ),
      );
    });

    // Inserting the OverlayEntry into the Overlay
    if (!focusNode.hasFocus && overlayEntry != null) {
      overlayState.insert(overlayEntry!);
      focusNode.requestFocus();
    }
  }

  void selectAttachment(
    AttachmentType attachmentType,
    OverlayEntry? overlayEntry,
  ) {
    focusNode.unfocus();
    widget.selectAttachmentType(attachmentType);
  }

  void focusListener() {
    AppDI.findRepository<DlsLogger>()
        .infoPrinter('FOCUS: ${focusNode.hasFocus}');
    if (!focusNode.hasFocus && overlayEntry != null) {
      overlayEntry?.remove();
      setState(() {
        buttonSelected = false;
      });
    }

    if (focusNode.hasFocus) {
      setState(() {
        buttonSelected = true;
      });
    }
  }
}
