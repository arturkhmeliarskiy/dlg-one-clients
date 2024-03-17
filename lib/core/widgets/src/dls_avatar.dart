import 'package:dls_one/core/core.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

/// TODO remove this or anotother Dublicate [DlsAvatar]
class DLSAvatar extends StatelessWidget {
  const DLSAvatar({
    this.size,
    this.imageUrl = '',
    this.username,
    super.key,
  });

  final double? size;
  final String imageUrl;
  final String? username;

  @override
  Widget build(BuildContext context) {
    final image =
        imageUrl.isNotEmpty ? ExtendedImage.network(imageUrl).image : null;
    final username = this.username?.isEmpty ?? true ? ' ' : this.username!;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: size?.r ?? 20.r,
          height: size?.r ?? 20.r,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.c_white_text,
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: size?.r ?? 20.r - 1.r,
          height: size?.r ?? 20.r - 1.r,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.c_blue,
            image: image != null
                ? DecorationImage(
                    image: image,
                    fit: BoxFit.cover,
                  )
                : null,
          ),
          child: image == null
              ? Text(
                  username[0].toUpperCase(),
                  style: context.ts_s13h15w500
                      .copyWith(color: context.c_white_text),
                  textAlign: TextAlign.center,
                )
              : null,
        ),
      ],
    );
  }
}
