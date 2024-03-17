import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final Color backgroundColor;
  final Color colorDetails;
  final String title;
  final double marginTop;
  // TODO [DlsTableHeader] has same functionality, but more flexible
  const InfoWidget({
    super.key,
    required this.backgroundColor,
    required this.colorDetails,
    required this.title,
    required this.marginTop,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: marginTop,
        left: 20,
        right: 20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4),
                bottomLeft: Radius.circular(4),
                topRight: Radius.circular(4),
              ),
            ),
            height: 32,
            child: Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(
                    3,
                  ),
                  child: Assets.icons.angleDown1.svg(
                    height: 12.h,
                    color: colorDetails,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  color: backgroundColor,
                  padding: const EdgeInsets.only(right: 12),
                  child: Transform.translate(
                    offset: const Offset(
                      0,
                      -3,
                    ),
                    child: Text(
                      title,
                      style: context.ts_s14h24_4w400.copyWith(
                        color: colorDetails,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: backgroundColor,
              height: 4,
            ),
          )
        ],
      ),
    );
  }
}
