import 'package:dls_one/common/gen/localization/l10n.dart';
import 'package:dls_one/const/enums.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsDotsGalleryButton extends StatelessWidget {
  const DlsDotsGalleryButton({Key? key, required this.onMenuItemSelected})
      : super(key: key);
  final Function onMenuItemSelected;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupMenuItems>(
      onSelected: (PopupMenuItems item) => onMenuItemSelected(item),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupMenuItems>>[
        PopupMenuItem<PopupMenuItems>(
          value: PopupMenuItems.saveToGallery,
          child: Text(S.current.save_to_gallery,
              style: context.ts_s14h14w400.copyWith(color: context.c_text)),
        ),
        PopupMenuItem<PopupMenuItems>(
          value: PopupMenuItems.delete,
          child: Text(S.current.delete,
              style: context.ts_s14h14w400.copyWith(color: context.c_red)),
        ),
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5.r),
        ),
      ),
      elevation: 10,
      child: Container(
        color: Colors.transparent,
        child: Assets.icons.ellipsisV1
            .svg(width: 18.w, height: 18.h, color: context.c_text_grey),
      ),
    );
  }
}
