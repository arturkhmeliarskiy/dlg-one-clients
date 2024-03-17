import 'package:dls_one/const/enums.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectAttachmentTypeItem extends StatelessWidget {
  const SelectAttachmentTypeItem({
    super.key,
    required this.attachmentType,
    required this.selectAttacment,
  });

  final AttachmentType attachmentType;
  final VoidCallback selectAttacment;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          attachmentType == AttachmentType.image
              ? Assets.icons.imageV1.path
              : Assets.icons.file1.path,
          width: 18.w,
          height: 18.h,
          color: context.c_text_grey,
        ),
        SizedBox(width: 8.w),
        Text(
          attachmentType == AttachmentType.image
              ? S.current.photo
              : S.current.document,
          style: context.ts_s14h14w400,
        ),
      ],
    ).gestureDetector(onTap: selectAttacment);
  }
}
