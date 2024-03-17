import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/media/presentation/ui/widgets/gallery_app_bar_delegate.dart';
import 'package:dls_one/models/dls_file.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SimpleImagePreviewPage extends StatelessWidget {
  const SimpleImagePreviewPage({
    required this.image,
    super.key,
  });

  final DLSFile image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.c_calls_background,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Center(
              child: FutureBuilder<ImageProvider>(
                builder: (_, data) {
                  if (!data.hasData) {
                    return const SizedBox();
                  }
                  return ExtendedImage(
                    image: data.data!,
                    fit: BoxFit.scaleDown,
                    mode: ExtendedImageMode.gesture,
                    initGestureConfigHandler: (ExtendedImageState state) {
                      return GestureConfig(
                        inPageView: true,
                        animationMaxScale: 6,
                      );
                    },
                  );
                },
              ),
            ).gestureDetector(
              onVerticalDragEnd: (details) => context.navigateBack(),
            ),
            Container(
              height: 58.h,
              alignment: Alignment.center,
              color: context.c_calls_background.withOpacity(0.8),
              child: CustomMultiChildLayout(
                delegate: GalleryAppBarDelegate(),
                children: [
                  LayoutId(
                    id: 1,
                    child: DlsBackButton(onTap: () => context.navigateBack()),
                  ),
                  LayoutId(
                    id: 2,
                    child: Text(
                      image.fileName ?? '',
                      style: context.ts_s14h14w500
                          .copyWith(color: context.c_white_text),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ).paddingSymmetric(horizontal: 16.w, vertical: 18.h),
            )
          ],
        ),
      ),
    );
  }
}

@RoutePage()
class SimpleImageUrlViewerPage extends StatelessWidget {
  const SimpleImageUrlViewerPage({
    required this.url,
    super.key,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.c_calls_background,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Center(
              child: ExtendedImage.network(
                url,
                fit: BoxFit.scaleDown,
                mode: ExtendedImageMode.gesture,
                initGestureConfigHandler: (ExtendedImageState state) {
                  return GestureConfig(
                    inPageView: true,
                    animationMaxScale: 6,
                  );
                },
              ),
            ).gestureDetector(
              onVerticalDragEnd: (details) => context.navigateBack(),
            ),
            Container(
              height: 58.h,
              alignment: Alignment.center,
              color: context.c_calls_background.withOpacity(0.8),
              child: CustomMultiChildLayout(
                delegate: GalleryAppBarDelegate(),
                children: [
                  LayoutId(
                    id: 1,
                    child: DlsBackButton(onTap: () => context.navigateBack()),
                  ),
                  LayoutId(
                    id: 2,
                    child: Text(
                      url.split('/').last,
                      style: context.ts_s14h14w500
                          .copyWith(color: context.c_white_text),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ).paddingSymmetric(horizontal: 16.w, vertical: 18.h),
            )
          ],
        ),
      ),
    );
  }
}
