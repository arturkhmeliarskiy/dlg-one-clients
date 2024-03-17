import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

/// сообщение
class DLSNotificationSystemParentWidget extends StatelessWidget {
  const DLSNotificationSystemParentWidget({
    required this.onTap,
    super.key,
    this.actions,
    this.isShadowEnabled = true,
    this.child,
    this.avatar,
    this.dataLevel1,
    this.timestamp,
    this.dataLevel2,
  });

  final Widget? actions;
  final Widget? avatar;
  final Widget? child;
  final bool isShadowEnabled;

  /// данные первого уровня
  /// например, надо бежать в бой
  final String? dataLevel1;

  /// данные второго уровня
  /// например, Согласование правок
  final String? dataLevel2;

  /// дата уведомления
  final DateTime? timestamp;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DLSCard(
        isShadowEnabled: isShadowEnabled,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (avatar != null)
                      Padding(
                        padding: EdgeInsets.only(right: 12.w),
                        child: Container(
                          width: 52.r,
                          height: 52.r,
                          alignment: Alignment.center,
                          child: avatar,
                        ),
                      ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.w),
                            child: Row(
                              children: [
                                /// что-то произошно в
                                if (dataLevel1 != null)
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 4.w),
                                      child: DLSBody.smallest(
                                        dataLevel1,
                                        maxLines: 1,
                                        overflow: true,
                                      ),
                                    ),
                                  ),

                                /// Согласование правок
                                if (dataLevel2 != null)
                                  Flexible(
                                    child: DLSBody.s12(
                                      dataLevel2,
                                      maxLines: 1,
                                      overflow: true,
                                    ),
                                  ),
                              ],
                            ),
                          ),

                          /// содержимое уведомления (разные для разных типов)
                          if (child != null) child!,

                          if (timestamp != null)
                            Padding(
                              padding: EdgeInsets.only(top: 12.h),
                              child: Text(
                                formatTimeWhen(timestamp!),
                                style: context.ts_s12h14w400
                                    .copyWith(color: context.c_text_grey),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (actions != null) actions!,
            ],
          ),
        ),
      ),
    );
  }
}
