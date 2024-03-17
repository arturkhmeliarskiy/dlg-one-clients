import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:collection/collection.dart';
import 'package:common/common.dart';
import 'package:dls_one/app/di/app_di.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/const/enums.dart';
import 'package:dls_one/const/mime_type.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/media/presentation/ui/widgets/dls_dots_gallery_button.dart';
import 'package:dls_one/features/media/presentation/ui/widgets/gallery_app_bar_delegate.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class GalleryPage extends StatefulWidget {
  const GalleryPage({
    @pathParam required this.initImageIndex,
    required this.urls,
    required this.names,
    required this.ids,
    required this.roomId,
    super.key,
  });
  final int initImageIndex;
  final List<String> urls;
  final List<String> names;
  final List<String> ids;
  final String roomId;

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> with NotificationsMixin {
  late ExtendedPageController controller;

  @override
  void initState() {
    controller = ExtendedPageController(
      initialPage: widget.initImageIndex,
    );
    selectedImage = widget.initImageIndex;
    super.initState();
  }

  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.c_calls_background,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            ExtendedImageGesturePageView.builder(
              controller: controller,
              onPageChanged: (i) {
                selectedImage = i;
                setState(() {});
              },
              itemCount: widget.urls.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: FutureBuilder<ImageProvider>(
                    future: _getImage(widget.urls[index]),
                    builder: (_, data) {
                      if (data.hasData) {
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
                      }
                      return const SizedBox();
                    },
                  ),
                ).gestureDetector(
                  onVerticalDragEnd: (details) => context.popRoute(),
                ); // TODO
              },
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
                    child: DlsBackButton(onTap: () => context.popRoute()),
                  ),
                  LayoutId(
                    id: 2,
                    child: Text(
                      txt(widget.names[selectedImage]),
                      style: context.ts_s14h14w500
                          .copyWith(color: context.c_white_text),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  LayoutId(
                    id: 3,
                    child: Text(
                      '${selectedImage + 1} ${S.current.from} ${widget.urls.length}',
                      style: context.ts_s14h14w500
                          .copyWith(color: context.c_placeholder),
                    ),
                  ),
                  LayoutId(
                    id: 4,
                    child: Assets.icons.share1
                        .svg(
                      width: 18.w,
                      height: 18.h,
                      color: context.c_placeholder,
                    )
                        .gestureDetector(
                      onTap: () {
                        final params = <String, String>{
                          'chatId': widget.roomId.split(':').first,
                          'server': widget.roomId.split(':').last,
                        };
                        context.pushRoute(
                          ForwardMessageRoute(
                            roomId: widget.roomId,
                            eventId: widget.ids[selectedImage],
                            dependentsIds: const [],
                          ),
                        );
                      },
                    ),
                  ),
                  LayoutId(
                    id: 5,
                    child: DlsDotsGalleryButton(
                      onMenuItemSelected: (PopupMenuItems selected) {
                        if (PopupMenuItems.saveToGallery == selected) {
                          _saveNetworkImage(
                            widget.urls[selectedImage],
                            widget.names[selectedImage],
                            context.read(),
                          );
                        }
                        if (PopupMenuItems.delete == selected) {
                          AppDI.findRepository<DlsLogger>()
                              .todoPrinter('delete');
                        }
                      },
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

  Future<ImageProvider> _getImage(String path) async {
    final isUrl = path.contains('https://') || path.contains('http://');

    if (isUrl || kIsWeb) {
      return Future.value(Image.network(path).image);
    } else {
      final file = XFile(path);
      final fileData = await file.readAsBytes();
      return Image.memory(fileData).image;
    }
  }

  Future<void> _saveNetworkImage(
    String url,
    String nameWithExtension,
    FileManager fileManager,
  ) async {
    try {
      /// nameAndExtensionSplitted.first -> name
      /// nameAndExtensionSplitted.last -> extension
      final nameAndExtensionSplitted = nameWithExtension.split('.');

      final mimeType = MimeType.fromString(
        nameAndExtensionSplitted.last,
        defaultType: MimeType.jpeg,
      );

      await fileManager
          .saveFileSpecifically(
        nameAndExtensionSplitted.first,
        Uri.parse(url),
        mimeType: mimeType,
      )
          .then<void>((bool? success) {
        if (success ?? false) {
          showDLSSnackBar(context, S.current.image_saved_to_gallery);
        } else {
          showDLSSnackBar(context, S.current.error_image_saving_to_gallery);
        }
      }).onError((error, stackTrace) {
        showDLSSnackBar(context, S.current.error_image_saving_to_gallery);
      });

      return;
    } catch (e) {
      showDLSSnackBar(context, S.current.error_image_saving_to_gallery);
      rethrow;
    }
  }
}
