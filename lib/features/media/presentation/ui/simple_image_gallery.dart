import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class SimpleImageGallery extends StatelessWidget {
  const SimpleImageGallery({
    super.key,
    required this.images,
  });

  final List<DlsChatMessageAttachment> images;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 4.r,
        runSpacing: 4.r,
        children: List.generate(
          images.length,
          (index) => Builder(
            builder: (context) {
              final url = images[index].url;
              return Container(
                height: 92.h,
                width: 92.w,
                decoration: BoxDecoration(
                  color: context.c_grey_stoke,
                  borderRadius: BorderRadius.all(Radius.circular(5.r)),
                  image: DecorationImage(
                    image: ExtendedImage.network(url.toString()).image,
                    fit: BoxFit.cover,
                  ),
                ),
              ).gestureDetector(
                onTap: () => context
                    .navigateTo(SimpleImageUrlViewerRoute(url: url.toString())),
              );
            },
          ),
        ),
      ),
    );
  }
}
