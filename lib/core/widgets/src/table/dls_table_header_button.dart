import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_layout_item_builder.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:flutter/material.dart';

class DlsTableHeaderButton extends StatelessWidget {
  const DlsTableHeaderButton({
    required this.text,
    required this.color,
    required this.iconColor,
    required this.onPressed,
    this.open = false,
    super.key,
  });

  final String text;
  final Color color;
  final Color iconColor;
  final bool open;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final radius = Radius.circular(4.r);
    return SizedBox(
      height: 32.h,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: radius,
              topRight: radius,
              bottomLeft: radius,
              bottomRight: DLSLayoutItemBuilder<Radius>.values(
                wide: Radius.zero,
                narrow: radius,
              ).call(),
            ),
          ),
        ),
        child: DLSPageBuilder(
          wide: Row(
            children: [
              SizedBox(width: 12.w),
              _buildIcon(context),
              SizedBox(width: 8.w),
              Text(
                text,
                style: context.ts_s14h14w400.copyWith(color: iconColor),
              ),
              SizedBox(width: 12.w),
            ],
          ),
          narrow: Row(
            children: [
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  text,
                  style: context.ts_s14h14w400.copyWith(color: iconColor),
                ),
              ),
              SizedBox(width: 8.w),
              _buildIcon(context),
              SizedBox(width: 8.w),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIcon(BuildContext context) {
    var asset = Assets.icons.angleRight;
    if (open) {
      asset = Assets.icons.angleDown;
    }
    return asset.svg(
      height: 18.h,
      width: 18.w,
      color: iconColor,
    );
  }
}
