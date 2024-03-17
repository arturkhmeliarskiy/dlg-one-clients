import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

@Deprecated('Use DlsAppBar instead')
class OldDlsAppBar extends StatelessWidget implements PreferredSizeWidget {
  @Deprecated('Use DlsAppBar instead')
  const OldDlsAppBar({
    super.key,
    this.menu,
    this.titleIconLeft,
    this.title,
    this.titleStyle,
    this.onTitleTap,
    this.onSubtitleTap,
    this.overrideBackTap,
    this.onRightButtonTap,
    this.rightButtonIcon,
    this.titleIconRight,
    this.background,
    this.titleTextAlign,
    this.disableDivider,
    this.height,
    this.topInformationBar,
    this.bottomInformationBar,
    this.hideBackButton,
    this.subtitleWidget,
    this.titleWidget,
  });

  @override
  Size get preferredSize => Size.fromHeight(height ?? 60.h);

  final GestureTapCallback? onTitleTap;
  final GestureTapCallback? onSubtitleTap;
  final GestureTapCallback? overrideBackTap;
  final GestureTapCallback? onRightButtonTap;
  final PopupMenuEntry<int>? menu;
  final Widget? titleIconLeft;
  final Widget? titleIconRight;
  final Widget? rightButtonIcon;
  final String? title;
  final TextStyle? titleStyle;
  final Color? background;
  final Alignment? titleTextAlign;
  final bool? disableDivider;
  final double? height;
  final Widget? topInformationBar;
  final Widget? bottomInformationBar;
  final bool? hideBackButton;
  final Widget? subtitleWidget;
  final Widget? titleWidget;

  static double get borderWidth => 1.h;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        height: preferredSize.height,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          color: background ?? context.c_appbar,
          border: (disableDivider ?? false)
              ? null
              : Border(
                  bottom: BorderSide(
                    width: borderWidth,
                    color: context.c_grey_stoke,
                  ),
                ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            topInformationBar ?? Container(),
            CustomMultiChildLayout(
              delegate: DlsAppBarChildLayoutDelegate(
                Size(
                  preferredSize.width,
                  60.h - borderWidth,
                ),
              ),
              children: [
                if (!(hideBackButton ?? false))
                  LayoutId(
                    id: 1,
                    child: DlsBackButton(
                      onTap: () => overrideBackTap != null
                          ? overrideBackTap!()
                          : AutoRouter.of(context).pop(),
                    ),
                  ),
                if (titleIconLeft != null)
                  LayoutId(
                    id: 6,
                    child: SizedBox(
                      width: 18.w,
                      height: 18.h,
                      child: titleIconLeft,
                    ),
                  ),
                LayoutId(
                  id: 2,
                  child: titleWidget != null
                      ? titleWidget!
                      : Container(
                          alignment: titleTextAlign,
                          child: Text(
                            txt(title),
                            style: titleStyle ??
                                context.ts_s14h16_4w500
                                    .copyWith(color: context.c_text),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textHeightBehavior: const TextHeightBehavior(
                              applyHeightToFirstAscent: false,
                            ),
                          ).gestureDetector(onTap: onTitleTap),
                        ),
                ),
                if (titleIconRight != null)
                  LayoutId(
                    id: 7,
                    child: SizedBox(
                      width: 18.w,
                      height: 18.h,
                      child: titleIconRight,
                    ),
                  ),
                if (subtitleWidget != null)
                  LayoutId(
                    id: 3,
                    child:
                        subtitleWidget!.gestureDetector(onTap: onSubtitleTap),
                  ),
                if (rightButtonIcon != null)
                  LayoutId(
                    id: 4,
                    child: rightButtonIcon!
                        .gestureDetector(onTap: onRightButtonTap),
                  ),
                if (menu != null)
                  LayoutId(
                    id: 5,
                    child: DlsMenuButton(menu: menu!),
                  ),
              ],
            ).paddingSymmetric(horizontal: 16.w),
            bottomInformationBar ?? Container(),
          ],
        ),
      ),
    );
  }
}

class DlsAppBarChildLayoutDelegate extends MultiChildLayoutDelegate {
  DlsAppBarChildLayoutDelegate(this.preferredSize);
  final Size preferredSize;

  @override
  Size getSize(BoxConstraints constraints) => preferredSize;

  @override
  void performLayout(Size size) {
    var l1 = Size.zero;
    var l6 = Size.zero;
    var l7 = Size.zero;
    var l4 = Size.zero;
    var l5 = Size.zero;
    if (hasChild(5)) {
      l5 = layoutChild(5, BoxConstraints.loose(size));
      positionChild(
        5,
        Offset(size.width - l5.width, size.height / 2 - l5.height / 2),
      );
    }
    if (hasChild(1)) {
      l1 = layoutChild(1, BoxConstraints.loose(size));
      positionChild(1, Offset(0, size.height / 2 - l1.height / 2));
    }
    if (hasChild(6)) {
      l6 = layoutChild(6, BoxConstraints.loose(size));
      positionChild(6, Offset(l1.width + 8.w, size.height / 2 - l6.height));
    }
    if (hasChild(4)) {
      l4 = layoutChild(4, BoxConstraints.loose(size));
      positionChild(
        4,
        Offset(
          size.width - l4.width - l5.width - (l5.width > 0 ? 4.w : 0),
          size.height / 2 - l4.height / 2,
        ),
      );
    }
    final l2 = layoutChild(
      2,
      BoxConstraints.loose(
        Size(
          size.width -
              (l1.width > 0 ? (l1.width + 8.w) : 0) -
              (l4.width > 0 ? (l4.width + 8.w) : 0) -
              // 8.w
              // -
              (l5.width > 0 ? (l5.width + 8.w) : 0) -
              (l6.width > 0 ? (l6.width + 8.w) : 0) -
              (l7.width > 0 ? (l7.width + 8.w) : 0) -
              16.w,
          size.height,
        ),
      ),
    );
    if (hasChild(7)) {
      l7 = layoutChild(7, BoxConstraints.loose(size));
      positionChild(
        7,
        Offset(
          (l1.width > 0 ? (l1.width + 8.w) : 0) +
              (l6.width > 0 ? (l6.width + 8.w) : 0) +
              l2.width +
              8.w,
          size.height / 2 - l7.height,
        ),
      );
    }
    if (hasChild(3)) {
      layoutChild(
        3,
        BoxConstraints.loose(
          Size(
            size.width - l1.width - l4.width - l5.width - 16.w,
            size.height,
          ),
        ),
      );
    }
    if (hasChild(3)) {
      /// верх
      positionChild(
        2,
        Offset(
          (l1.width > 0 ? (l1.width + 8.w) : 0) +
              (l6.width > 0 ? (l6.width + 8.w) : 0),
          size.height / 2 - l2.height,
        ),
      );

      /// низ
      positionChild(
        3,
        Offset(l1.width > 0 ? (l1.width + 8.w) : 0, size.height / 2),
      );
    } else {
      /// по середине

      positionChild(
        2,
        Offset(
          (l1.width > 0 ? (l1.width + 8.w) : 0) +
              (l6.width > 0 ? (l6.width + 8.w) : 0),
          size.height / 2 - l2.height / 2,
        ),
      );
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return oldDelegate != this;
  }
}
