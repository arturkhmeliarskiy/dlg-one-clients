import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class WebAuthBackButton extends StatefulWidget {
  const WebAuthBackButton({
    super.key,
  });

  @override
  State<WebAuthBackButton> createState() => _WebAuthBackButtonState();
}

class _WebAuthBackButtonState extends State<WebAuthBackButton> {
  late final MaterialStatesController controller = MaterialStatesController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textButtonStyle = TextButtonTheme.of(context).style;
    final updatedStyle = textButtonStyle?.copyWith(
      foregroundColor: MaterialStatePropertyAll(context.c_text_grey),
    );
    final foregroundColor = updatedStyle?.foregroundColor;

    return TextButtonTheme(
      data: TextButtonThemeData(
        style: updatedStyle,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: TextButton(
          statesController: controller,
          onPressed: context.popRoute,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ValueListenableBuilder(
                valueListenable: controller,
                builder: (context, value, child) {
                  final color = foregroundColor?.resolve(value);

                  return Assets.icons.back.svg(
                    width: 18.w,
                    height: 18.h,
                    colorFilter: color != null
                        ? ColorFilter.mode(color, BlendMode.srcIn)
                        : null,
                  );
                },
              ),
              SizedBox(width: 4.w),
              Text(
                S.current.back,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  height: 1.09,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
