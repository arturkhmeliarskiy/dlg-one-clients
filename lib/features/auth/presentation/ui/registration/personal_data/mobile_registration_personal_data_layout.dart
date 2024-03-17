import 'dart:async';
import 'dart:typed_data';

import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/dls_app_bar.dart';
import 'package:dls_one/models/dls_file.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MobileRegistrationPersonalDataLayout extends StatefulWidget {
  const MobileRegistrationPersonalDataLayout({
    required this.onSelectAvatar,
    required this.deleteAvatar,
    required this.onDone,
    required this.avatar,
    required this.updateName,
    required this.updateSurname,
    super.key,
  });

  final ValueSetter<DLSFile> onSelectAvatar;
  final VoidCallback deleteAvatar;
  final VoidCallback? onDone;
  final ValueSetter<String> updateName;
  final ValueSetter<String> updateSurname;
  final DLSFile? avatar;

  @override
  State<MobileRegistrationPersonalDataLayout> createState() =>
      _MobileRegistrationPersonalDataLayoutState();
}

class _MobileRegistrationPersonalDataLayoutState
    extends State<MobileRegistrationPersonalDataLayout> {
  final _picker = ImagePicker();

  Uint8List? _avatarData;

  @override
  void initState() {
    super.initState();

    _avatarData = widget.avatar?.data;
  }

  @override
  void didUpdateWidget(MobileRegistrationPersonalDataLayout oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.avatar != oldWidget.avatar) {
      _avatarData = widget.avatar?.data;
    }
  }

  Future<void> _avatarPickerMenu() async {
    // TODO: в отдельный виджет
    return showModalBottomSheet<void>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.r),
      ),
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DLSButtonFlat(
              icon: Assets.icons.imageV1
                  .svg(
                    width: 18.w,
                    height: 18.h,
                    color: context.c_text_grey,
                  )
                  .paddingOnly(right: 8.w),
              border: Border.all(color: context.c_white_text),
              text: S.current.pick_from_gallery,
              textStyle:
                  context.ts_s14h14w400.copyWith(color: context.c_text_grey),
              height: 48.h,
              onTap: () => _onPickAvatar(context)
                  .then((value) => Navigator.pop(context)),
            ),
            DLSButtonFlat(
              icon: Assets.icons.camera
                  .svg(
                    width: 18.w,
                    height: 18.h,
                    color: context.c_text_grey,
                  )
                  .paddingOnly(right: 8.w),
              border: Border.all(color: context.c_white_text),
              text: S.current.take_shot,
              textStyle:
                  context.ts_s14h14w400.copyWith(color: context.c_text_grey),
              height: 48.h,
              onTap: () => _onPickAvatar(context, source: ImageSource.camera)
                  .then((value) => Navigator.pop(context)),
            ),
            if (_avatarData != null)
              DLSButtonFlat(
                icon: Assets.icons.trashAlt1
                    .svg(
                      width: 18.w,
                      height: 18.h,
                      color: context.c_text_grey,
                    )
                    .paddingOnly(right: 8.w),
                border: Border.all(color: context.c_white_text),
                text: S.current.delete,
                textStyle:
                    context.ts_s14h14w400.copyWith(color: context.c_text_grey),
                height: 48.h,
                onTap: () {
                  widget.deleteAvatar();
                  Navigator.pop(context);
                },
              ),
          ],
        );
      },
    );
  }

  Future<void> _onPickAvatar(
    BuildContext context, {
    ImageSource source = ImageSource.gallery,
  }) async {
    final xFile = await _picker.pickImage(source: source);
    if (xFile == null) {
      return;
    }
    final file = await DLSFile.fromXFile(xFile);
    widget.onSelectAvatar(file);
  }

  @override
  Widget build(BuildContext context) {
    return Unfocuser(
      child: Scaffold(
        backgroundColor: context.c_white_text,
        appBar: DLSAppBar(
          title: Text(S.current.enter_data),
          actions: [
            TextButton(
              onPressed: widget.onDone,
              child: Text(S.current.done),
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              if (_avatarData == null)
                CircleAvatar(
                  backgroundColor: context.c_grey_hover,
                  radius: 50.r,
                  child: Assets.icons.cameraPlus
                      .svg(
                        width: 48.w,
                        height: 48.h,
                        color: context.c_placeholder,
                      )
                      .paddingOnly(left: 4.w),
                ).gestureDetector(
                  onTap: () async {
                    await _avatarPickerMenu();
                  },
                )
              else
                Stack(
                  children: [
                    Container(
                      width: 116.r,
                      alignment: Alignment.center,
                      child: (_avatarData != null)
                          ? CircleAvatar(
                              backgroundImage: Image.memory(_avatarData!).image,
                              radius: 50.r,
                            )
                          : const SizedBox(),
                    ),
                    GestureDetector(
                      onTap: () {
                        unawaited(_avatarPickerMenu());
                      },
                      child: Container(
                        width: 116.r,
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          backgroundColor: context.c_grey_grey,
                          radius: 16.r,
                          child: Assets.icons.pen1.svg(
                            height: 18.h,
                            width: 18.w,
                            color: context.c_text_grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 20.h),
              DLSInput(
                label: S.current.name,
                hint: S.current.hint_name,
                onChanged: widget.updateName,
              ),
              SizedBox(height: 20.h),
              DLSInput(
                label: S.current.surname,
                hint: S.current.hint_surname,
                onChanged: widget.updateSurname,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
