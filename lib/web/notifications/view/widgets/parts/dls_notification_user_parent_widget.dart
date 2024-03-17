import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// сообщение
class DLSNotificationUserParentWidget extends StatelessWidget {
  const DLSNotificationUserParentWidget({
    required this.username,
    required this.subAvatarType,
    required this.onTap,
    this.actions,
    this.isShadowEnabled = true,
    this.child,
    this.userAvatar,
    this.dataLevel1,
    this.dataLevel2,
    this.timestamp,
    super.key,
  });

  /// действия в правом верхнем углу
  final Widget? actions;

  /// содержимое уведомления
  final Widget? child;

  /// необходима ли тень для уведомления
  final bool isShadowEnabled;

  /// Дейенерис Таргариен
  final String username;

  /// ссылка на аватарку
  final String? userAvatar;

  /// какой значок нарисовать на аватарке
  final DLSNotificationSubAvatarType subAvatarType;

  /// данные первого уровня
  /// например, изменила дату мероприятия
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
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            /// аватарка
                            Container(
                              width: 52.r,
                              height: 52.r,
                              alignment: Alignment.center,
                              child: DLSAvatar(
                                username: username,
                                size: 48.r,
                                imageUrl: userAvatar ?? '',
                              ),
                            ),

                            /// значок над аватаркой
                            DLSNotificationSubAvatarTypeWidget(
                              subAvatarType: subAvatarType,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 12.w),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.w),
                            child: Row(
                              children: [
                                /// Дейенерис Таргариен
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 4.w),
                                    child: DLSBody.s12(
                                      username,
                                      maxLines: 1,
                                      overflow: true,
                                    ),
                                  ),
                                ),

                                /// изменила дату мероприятия
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
