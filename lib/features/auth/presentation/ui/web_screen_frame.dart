import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/features/auth/presentation/ui/web_back_button.dart';
import 'package:flutter/material.dart';

class WebScreenFrame extends StatelessWidget {
  const WebScreenFrame({
    required this.child,
    super.key,
  });

  static const _frameWidthIndex = 448 / 1440;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    final effectiveWidth = min(
      screenSize.width - 20.w,
      max((_frameWidthIndex * screenSize.width).w, 448.w),
    );
    return Stack(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Assets.auth.webBackground.provider(),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: effectiveWidth),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.r)),
                child: DLSLoaderScope(
                  child: Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    padding: EdgeInsets.symmetric(
                      vertical: 54.h,
                      horizontal: 64.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Assets.auth.dlsOneLogo.svg(),
                        ),
                        SizedBox(height: 36.h),
                        if (context.router.canPop()) ...[
                          const WebAuthBackButton(),
                          SizedBox(height: 8.h),
                        ],
                        Material(child: child),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
