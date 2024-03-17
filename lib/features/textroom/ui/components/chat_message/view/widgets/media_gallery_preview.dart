import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/ui/components/components.dart';
import 'package:flutter/material.dart';

class MediaGalleryPreview extends StatefulWidget {
  /// Constrictor
  const MediaGalleryPreview({
    required this.files,
    required this.onOpenVideo,
    required this.onOpenImage,
    super.key,
  });

  final List<DlsChatMessageAttachment> files;
  final ValueChanged<DlsChatMessageAttachment> onOpenVideo;
  final void Function(int index, Map<String, dynamic> extra) onOpenImage;

  @override
  State<MediaGalleryPreview> createState() => _MediaGalleryPreviewState();
}

class _MediaGalleryPreviewState extends State<MediaGalleryPreview> {
  @override
  Widget build(BuildContext context) {
    final videoFiles = widget.files
        .where((video) => video.type == DlsChatMessageType.video)
        .toList();
    final imageFiles = widget.files
        .where((image) => image.type == DlsChatMessageType.image)
        .toList();
    if (videoFiles.isEmpty && imageFiles.isEmpty) {
      return const SizedBox();
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (videoFiles.isNotEmpty)
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600, maxHeight: 400),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: videoFiles.length,
              itemBuilder: (_, index) {
                return GalleryVideoListItemWrapper(
                  attachment: videoFiles[index],
                  onOpenVideo: widget.onOpenVideo,
                );
              },
            ),
          ),
        if (imageFiles.isNotEmpty)
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600, maxHeight: 400),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: imageFiles.length,
              itemBuilder: (_, index) {
                return GalleryImageListItemWrapper(
                  attachment: imageFiles[index],
                  onImageTap: () {
                    _onImageTap(imageFiles, index);
                  },
                );
              },
            ),
          ),
      ],
    );
  }

  void _onImageTap(
    List<DlsChatMessageAttachment> images,
    int index,
  ) {
    final urls = <String>[];
    final names = <String>[];
    final ids = <String>[];
    String? roomId;
    for (final img in images) {
      roomId = img.roomId;
      ids.add(img.eventId);
      urls.add(img.url.toString());
      names.add(img.fileName);
    }

    widget.onOpenImage(
      index,
      {
        'urls': urls,
        'names': names,
        'ids': ids,
        'roomId': roomId,
      },
    );
  }
}
