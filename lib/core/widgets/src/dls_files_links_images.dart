import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart';

/// иконка количество тип, можно нажать
class DlsFilesLinksImages extends StatelessWidget {
  ///
  const DlsFilesLinksImages({
    Key? key,
    this.attachmentsImage,
    this.attachmentsVideo,
    this.attachmentsAudio,
    this.attachmentsFile,
    this.attachmentsLink,
    this.onTapVideo,
    this.onTapImage,
    this.onTapAudio,
    this.onTapFile,
    this.onTapLink,
  }) : super(key: key);

  /// обработчик нажатия
  final Function? onTapImage;
  final Function? onTapVideo;
  final Function? onTapAudio;
  final Function? onTapFile;
  final Function? onTapLink;

  /// события
  final Map<String, Event>? attachmentsImage;
  final Map<String, Event>? attachmentsVideo;
  final Map<String, Event>? attachmentsAudio;
  final Map<String, Event>? attachmentsFile;
  final Map<String, Event>? attachmentsLink;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (attachmentsFile?.keys.toList().isNotEmpty ?? false)
          _Item(
            svgGenImage: Assets.icons.file1,
            text: (attachmentsFile?.length ?? 0).filePlural(),
            attachments: attachmentsFile,
            onTap: onTapFile,
          ),
        if (attachmentsLink?.keys.toList().isNotEmpty ?? false)
          _Item(
            svgGenImage: Assets.icons.linkH1,
            text: (attachmentsLink?.length ?? 0).linkPlural(),
            attachments: attachmentsLink,
            onTap: onTapLink,
          ),
        if (attachmentsImage?.keys.toList().isNotEmpty ?? false)
          _Item(
            svgGenImage: Assets.icons.imageV1,
            text: (attachmentsImage?.length ?? 0).photoPlural(),
            attachments: attachmentsImage,
            onTap: onTapImage,
          ),
        if (attachmentsVideo?.keys.toList().isNotEmpty ?? false)
          _Item(
            svgGenImage: Assets.icons.video1,
            text: (attachmentsVideo?.length ?? 0).videoPlural(),
            attachments: attachmentsVideo,
            onTap: onTapVideo,
          ),
        if (attachmentsAudio?.keys.toList().isNotEmpty ?? false)
          _Item(
            svgGenImage: Assets.icons.play1,
            text: (attachmentsAudio?.length ?? 0).audiofilePlural(),
            attachments: attachmentsAudio,
            onTap: onTapAudio,
          ),
      ],
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    Key? key,
    required this.svgGenImage,
    this.attachments,
    this.onTap,
    required this.text,
  }) : super(key: key);
  final SvgGenImage svgGenImage;
  final Map<String, Event>? attachments;
  final Function? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        svgGenImage.svg(color: context.c_text_grey, width: 18.w, height: 18.h),
        SizedBox(width: 12.w),
        Text(
          '${attachments?.keys.toList().length ?? 0} $text',
          style: context.ts_s14h22_4w400.copyWith(color: context.c_text_grey),
        ),
      ],
    ).paddingOnly(bottom: 12.h).gestureDetector(onTap: () => onTap != null ? onTap!(attachments) : null);
  }
}
