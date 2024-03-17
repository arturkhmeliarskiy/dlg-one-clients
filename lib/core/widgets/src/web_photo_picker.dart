import 'package:common/common.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/models/dls_file.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:image_picker/image_picker.dart';

/// выбор фотки для профиля пользователя
class WebPhotoPicker extends StatelessWidget {
  /// конструктор
  WebPhotoPicker({
    required this.onChangedPhoto,
    required this.onDeletePhoto,
    this.image,
    super.key,
  });

  /// фото для отображения/выбранное фото
  final ImageProvider? image;

  /// обработчик изменения фото
  final ValueChanged<DLSFile> onChangedPhoto;

  /// обработчик удаления фото
  final VoidCallback onDeletePhoto;

  /// контроллер зоны перетаскивания
  /// TODO на Linux не работает
  late DropzoneViewController _controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: image == null ? _onPickAvatar : null,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            S.current.photo,
            style: context.ts_s14h16_4w500.copyWith(color: context.c_text),
          ),
          SizedBox(height: 16.h),
          if (image == null)
            SizedBox(
              height: 40.h,
              child: DottedBorder(
                borderType: BorderType.RRect,
                color: context.c_blue,
                radius: Radius.circular(5.r),
                child:

                    /// TODO не тестировал, на Linux не работает
                    // if (DlsPlatformSubType.linux != DlsPlatform.dlsSubPlatform)
                    //   DropzoneView(
                    //     operation: DragOperation.copy,
                    //     cursor: CursorType.grab,
                    //     onCreated: (DropzoneViewController ctrl) =>
                    //         _controller = ctrl,
                    //     onLoaded: () => print('Zone loaded'),
                    //     onError: (String? ev) => print('Error: $ev'),
                    //     onHover: () => print('Zone hovered'),
                    //     onDrop: (dynamic ev) => print('Drop: $ev'),
                    //     onDropMultiple: (ev) => print('Drop multiple: $ev'),
                    //     onLeave: () => print('Zone left'),
                    //   ),
                    Center(
                  child: Text(
                    S.current.press_or_drag_to_pick,
                    style:
                        context.ts_s12h12w400.copyWith(color: context.c_blue),
                  ),
                ),
              ),
            )
          else
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 48.r,
                  width: 48.r,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: context.c_blue,
                    image: DecorationImage(image: image!, fit: BoxFit.cover),
                  ),
                ),
                SizedBox(width: 20.w),
                DLSButtonFlat(
                  text: S.current.change,
                  horizontalPadding: 12.w,
                  onTap: _onPickAvatar,
                ),
                SizedBox(width: 12.w),
                DLSButtonFlat(
                  text: S.current.delete,
                  textStyle:
                      context.ts_s14h16_4w400.copyWith(color: context.c_text),
                  border: Border.all(color: context.c_grey_stoke),
                  horizontalPadding: 12.w,
                  onTap: onDeletePhoto,
                )
              ],
            ),
        ],
      ),
    );
  }

  void _onPickAvatar() {
    if (DlsPlatform.dlsPlatform == DlsPlatformType.mobile ||
        DlsPlatform.dlsPlatform == DlsPlatformType.web) {
      ImagePicker().pickImage(source: ImageSource.gallery).then((xFile) async {
        if (xFile == null) {
          return;
        }
        final file = await DLSFile.fromXFile(xFile);
        onChangedPhoto(file);
      });
    } else {
      FilePickerService()
          .selectXFileSingle(fileType: FileType.image)
          .then((xFile) async {
        if (xFile == null) {
          return;
        }
        final file = await DLSFile.fromXFile(xFile);
        onChangedPhoto(file);
      });
    }
  }
}
