part of 'chat_input_files_previews.dart';

class _DocPreview extends StatelessWidget {
  const _DocPreview({
    required this.docs,
    required this.onDeattachTap,
    required this.onOpenTap,
  });

  final List<DLSFile> docs;
  final ValueChanged<String> onDeattachTap;
  final ValueChanged<String> onOpenTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Row(
        children: List.generate(
          docs.length,
          (i) {
            return DlsPadding.only(
              right: 4.w,
              child: GestureDetector(
                onTap: () {
                  onOpenTap(docs[i].key);
                },
                child: Container(
                  width: 200.w,
                  height: 44.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    border: Border.all(
                      color: context.c_grey_stoke,
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                    child: Row(
                      children: [
                        Container(
                          height: 36.r,
                          width: 36.r,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: fileColor[docs[i].extension],
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            (docs[i].extension ?? '').toUpperCase(),
                            style: context.ts_s10h11_7w700
                                .copyWith(color: context.c_white_text),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        SizedBox(
                          width: 112.w,
                          child: Text(
                            txt(docs[i].fileName),
                            overflow: TextOverflow.ellipsis,
                            style: context.ts_s14h14w400,
                          ),
                        ),
                        const Spacer(),
                        DLSButtonIcon(
                          icon: Assets.icons.times1.svg(
                            width: 18.r,
                            height: 18.r,
                            color: context.c_text_grey,
                          ),
                          onTap: () {
                            onDeattachTap(docs[i].key);
                          },
                          color: Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
