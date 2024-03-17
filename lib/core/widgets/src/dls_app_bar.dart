import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Обычный враппер над [AppBar]. Полностью дублирует его функционал, за
/// исключением следующих поментов:
/// - Добавляет BackButton если [AutoRouter] может пройти назад через pop.
/// - Подставляет отступы в начале и конце при необходимости, раный
/// [_appBarHorizontalSpacing] согласно дизайну.
class DLSAppBar extends StatelessWidget implements PreferredSizeWidget {
  DLSAppBar({
    super.key,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.automaticallyImplyClose = true,
    this.title,
    this.actions,
    this.flexibleSpace,
    this.bottom,
    this.elevation,
    this.scrolledUnderElevation,
    this.notificationPredicate = defaultScrollNotificationPredicate,
    this.shadowColor,
    this.surfaceTintColor,
    this.shape,
    this.backgroundColor,
    this.foregroundColor,
    this.iconTheme,
    this.actionsIconTheme,
    this.primary = true,
    this.centerTitle,
    this.excludeHeaderSemantics = false,
    this.titleSpacing,
    this.toolbarOpacity = 1.0,
    this.bottomOpacity = 1.0,
    this.toolbarHeight,
    this.leadingWidth,
    this.toolbarTextStyle,
    this.titleTextStyle,
    this.systemOverlayStyle,
  }) : preferredSize = Size.fromHeight(
          (toolbarHeight ?? defaultToolbarHeight) +
              (bottom?.preferredSize.height ?? 0.0) +
              _dividerSize,
        );

  static bool get _isMobile =>
      DlsPlatform.dlsPlatform == DlsPlatformType.mobile;

  static double defaultToolbarHeight = _isMobile ? 56.h : 53.h;

  static const double _appBarHorizontalSpacing = 16;
  static const double _dividerSize = 1;

  /// {@macro flutter.material.appbar.leading}
  final Widget? leading;

  /// {@macro flutter.material.appbar.automaticallyImplyLeading}
  final bool automaticallyImplyLeading;

  /// Контролирует необходимость показа кнопки закрытия fullScreenDialog
  /// экрана.
  ///
  /// Если true и у роута, на котором расположен [DLSAppBar], fullScreenDialog
  /// равен true - добавит в [actions] кнопку закрытия экрана.
  final bool automaticallyImplyClose;

  /// {@macro flutter.material.appbar.title}
  final Widget? title;

  /// {@macro flutter.material.appbar.actions}
  final List<Widget>? actions;

  /// {@macro flutter.material.appbar.flexibleSpace}
  final Widget? flexibleSpace;

  /// {@macro flutter.material.appbar.bottom}
  final PreferredSizeWidget? bottom;

  /// {@macro flutter.material.appbar.elevation}
  final double? elevation;

  /// {@macro flutter.material.appbar.scrolledUnderElevation}
  final double? scrolledUnderElevation;

  /// {@macro flutter.material.appbar.notificationPredicate}
  final ScrollNotificationPredicate notificationPredicate;

  /// {@macro flutter.material.appbar.shadowColor}
  final Color? shadowColor;

  /// {@macro flutter.material.appbar.surfaceTintColor}
  final Color? surfaceTintColor;

  /// {@macro flutter.material.appbar.shape}
  final ShapeBorder? shape;

  /// {@macro flutter.material.appbar.backgroundColor}
  final Color? backgroundColor;

  /// {@macro flutter.material.appbar.foregroundColor}
  final Color? foregroundColor;

  /// {@macro flutter.material.appbar.iconTheme}
  final IconThemeData? iconTheme;

  /// {@macro flutter.material.appbar.actionsIconTheme}
  final IconThemeData? actionsIconTheme;

  /// {@macro flutter.material.appbar.primary}
  final bool primary;

  /// {@macro flutter.material.appbar.centerTitle}
  final bool? centerTitle;

  /// {@macro flutter.material.appbar.excludeHeaderSemantics}
  final bool excludeHeaderSemantics;

  /// {@macro flutter.material.appbar.titleSpacing}
  final double? titleSpacing;

  /// {@macro flutter.material.appbar.toolbarOpacity}
  final double toolbarOpacity;

  /// {@macro flutter.material.appbar.bottomOpacity}
  final double bottomOpacity;

  /// {@macro flutter.material.appbar.preferredSize}
  @override
  final Size preferredSize;

  /// {@macro flutter.material.appbar.toolbarHeight}
  final double? toolbarHeight;

  /// {@macro flutter.material.appbar.leadingWidth}
  final double? leadingWidth;

  /// {@macro flutter.material.appbar.toolbarTextStyle}
  final TextStyle? toolbarTextStyle;

  /// {@macro flutter.material.appbar.titleTextStyle}
  final TextStyle? titleTextStyle;

  /// {@macro flutter.material.appbar.systemOverlayStyle}
  final SystemUiOverlayStyle? systemOverlayStyle;

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);
    final appBarTheme = AppBarTheme.of(context);

    var leading = this.leading;

    var actions = this.actions?.toList();

    final isFullScreen = router.current.route.fullscreenDialog;

    if (router.canPop()) {
      final color = appBarTheme.iconTheme?.color;
      if (leading == null && automaticallyImplyLeading && !isFullScreen) {
        leading = IconButton(
          icon: Assets.icons.back.svg(
            width: 18.r,
            height: 18.r,
            colorFilter:
                color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
          ),
          color: appBarTheme.iconTheme?.color,
          tooltip: S.current.back,
          onPressed: router.pop,
        );
      } else if (automaticallyImplyClose && isFullScreen) {
        (actions ??= []).add(
          IconButton(
            icon: Icon(
              Icons.close_rounded,
              color: color,
            ),
            onPressed: context.router.pop,
            padding: EdgeInsets.zero,
            iconSize: 18.r,
            splashRadius: 18.r,
          ),
        );
      }
    }

    // Отступ справа для всего апп бара.
    if (actions != null && actions.isNotEmpty) {
      actions.add(
        const SizedBox(
          width: _appBarHorizontalSpacing,
        ),
      );
    }

    // Отступ слева для всего апп бара если его не выставит leading.
    final titleSpacing = leading == null ? _appBarHorizontalSpacing : null;

    return Column(
      children: [
        Expanded(
          child: AppBar(
            leading: leading,
            automaticallyImplyLeading: false,
            title: title,
            actions: actions,
            flexibleSpace: flexibleSpace,
            bottom: bottom,
            elevation: elevation,
            scrolledUnderElevation: scrolledUnderElevation,
            notificationPredicate: notificationPredicate,
            shadowColor: shadowColor,
            surfaceTintColor: surfaceTintColor,
            shape: shape,
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            iconTheme: iconTheme,
            actionsIconTheme: actionsIconTheme,
            primary: primary,
            centerTitle: centerTitle,
            excludeHeaderSemantics: excludeHeaderSemantics,
            titleSpacing: titleSpacing,
            toolbarOpacity: toolbarOpacity,
            bottomOpacity: bottomOpacity,
            toolbarHeight: toolbarHeight,
            leadingWidth: leadingWidth,
            toolbarTextStyle: toolbarTextStyle,
            titleTextStyle: titleTextStyle,
            systemOverlayStyle: systemOverlayStyle,
          ),
        ),
        ColoredBox(
          color: appBarTheme.shadowColor ?? context.c_grey_stoke,
          child: const SizedBox(
            height: _dividerSize,
            width: double.infinity,
          ),
        )
      ],
    );
  }
}
