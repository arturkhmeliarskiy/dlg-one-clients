import 'package:dls_one/core/core.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';

class FileButton extends StatefulWidget {
  const FileButton({
    required this.onTapFileDoc,
    required this.draggingFiles,
    required this.onTapFile,
    super.key,
  });

  final VoidCallback onTapFile;
  final VoidCallback onTapFileDoc;
  final void Function(Uint8List, String) draggingFiles;

  @override
  State<FileButton> createState() => _FileButtonState();
}

class _FileButtonState extends State<FileButton> {
  late DropzoneViewController controller;
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24.h,
      alignment: Alignment.center,
      child: Stack(
        children: [
          if (kIsWeb)
            DropzoneView(
              onCreated: (value) => controller = value,
              onHover: () {
                // TODO config on Desktop
                setState(() {
                  isHover = true;
                });
              },
              onLeave: () {
                setState(() {
                  isHover = false;
                });
              },
              onDrop: (value) async {
                if (value != null) {
                  final file = await controller.getFileData(value);
                  widget.draggingFiles(
                    file,
                    value.name.toString(),
                  );
                }
              },
            ),
          InkWell(
            splashFactory: NoSplash.splashFactory,
            onTap: () {},
            onHover: (value) {
              if (!kIsWeb) {
                return;
              }
              setState(() {
                isHover = value;
              });
            },
            borderRadius: BorderRadius.circular(4.r),
            hoverColor: context.c_white_text,
            child: DottedBorder(
              strokeWidth: 2,
              color: isHover ? context.c_blue : context.c_white_text,
              dashPattern: const <double>[2, 2],
              padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.w),
              radius: Radius.circular(4.r),
              child: Container(
                margin: EdgeInsets.only(left: 14.11.w),
                height: 40.h,
                child: Row(
                  children: [
                    Expanded(
                      child: WebDlsLabelField(
                        icon: Assets.icons.calender3.path,
                        label: S.current.files_title,
                        actions: [
                          Tooltip(
                            message: S.current.add_file,
                            child: DlsCircleAddButton(onTap: widget.onTapFile),
                          ),
                          SizedBox(width: 8.w),
                          if (isHover)
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: widget.onTapFileDoc,
                                borderRadius: BorderRadius.circular(10.r),
                                hoverColor: context.c_grey_hover,
                                child: Tooltip(
                                  message: S.current.add_file_from_doc,
                                  child: Container(
                                    width: 24.w,
                                    height: 24.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.r),
                                      border: Border.all(
                                        color: context.c_grey_stoke,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 3.w, vertical: 3.w),
                                      child: Assets.icons.fileCheck1.svg(
                                        height: 11.67.h,
                                        color: context.c_text_grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    if (isHover)
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 12.w),
                        child: Text(
                          S.current.select_the_file_source,
                          style: context.ts_s12h14w400.copyWith(
                            color: context.c_blue,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
