part of 'chat_input_files_previews.dart';

class _ImagePreview extends StatelessWidget {
  const _ImagePreview({
    required this.images,
    required this.onRemoveTap,
    required this.onOpenTap,
  });

  final List<DLSFile> images;
  final ValueChanged<String> onRemoveTap;
  final ValueChanged<String> onOpenTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Row(
        children: List.generate(
          images.length,
          (index) {
            return DlsPadding.only(
              right: 4.w,
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      onOpenTap(images[index].key);
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.r),
                      child: ExtendedImage.memory(
                        images[index].data,
                        height: 44.r,
                        width: 44.r,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 2.r,
                    top: 2.r,
                    child: GestureDetector(
                      onTap: () {
                        onRemoveTap(images[index].key);
                      },
                      child: Container(
                        height: 18.r,
                        width: 18.r,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.w),
                          color: context.c_calls_background,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.close,
                            color: context.c_white_text,
                            size: 12.r,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
