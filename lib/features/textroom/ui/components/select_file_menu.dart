import 'package:dls_one/const/enums.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

/// Выпадающее меню для выбора файлов
class SelectFileMenu extends PopupMenuEntry<int> {
  const SelectFileMenu({
    required this.id,
    required this.name,
    required this.selectAttachmentType,
    Key? key,
  }) : super(key: key);
  final String id;
  final String name;
  final Function(AttachmentType) selectAttachmentType;

  @override
  SelectFileMenuState createState() => SelectFileMenuState();

  @override
  double get height => throw UnimplementedError();

  @override
  bool represents(int? value) {
    throw UnimplementedError();
  }
}

class SelectFileMenuState extends State<SelectFileMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: context.shadow,
        color: context.c_white_text,
        borderRadius: BorderRadius.all(
          Radius.circular(5.r),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SelectAttachmentTypeItem(
            attachmentType: AttachmentType.image,
            selectAttacment: () => selectAttachment(AttachmentType.image),
          ).paddingOnly(bottom: 16.h),
          SelectAttachmentTypeItem(
            attachmentType: AttachmentType.doc,
            selectAttacment: () => selectAttachment(AttachmentType.doc),
          ),
        ],
      ).paddingSymmetric(horizontal: 16.w, vertical: 16.h),
    );
  }

  void selectAttachment(
    AttachmentType attachmentType,
  ) {
    Navigator.of(context).pop();
    widget.selectAttachmentType(attachmentType);
  }
}
