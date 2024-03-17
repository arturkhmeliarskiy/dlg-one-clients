import 'dart:async';

import 'package:common/common.dart';
import 'package:dls_one/app/di/app_di.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/notifications/firebase/firebase.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:logger/logger.dart';
import 'package:notifications_models/notifications_models.dart';
import 'package:rest_api/rest_api.dart';
import 'package:storage/storage.dart';

class DLSNotificationShower {
  /// проверить расписание уведомлений
  /// вернет
  /// true - показывать уведомление
  /// false - не показывать уведомление
  static Future<bool> allowedShowNotification() async {
    final now = DateTime.now();
    final store = AppDI.findRepository<KeyValueStore>();
    await store.init();
    final stringJson = await store.read(StoreKeys.settings);
    var settings = Settings.defaultData();
    if (stringJson != null) {
      settings = Settings.fromStringJson(stringJson);
    }

    var show = settings.notificationsSettings?.enabled ?? true;

    /// уведомления выключены полностью
    if (!show) {
      return false;
    }

    /// уведомления по расписанию
    if (settings.notificationsSettings?.scheduleEnabled ?? false) {
      show = (now.weekday == 1 &&
              (settings.notificationsSettings?.schedule?.monday ?? false)) ||
          (now.weekday == 2 &&
              (settings.notificationsSettings?.schedule?.tuesday ?? false)) ||
          (now.weekday == 3 &&
              (settings.notificationsSettings?.schedule?.wednesday ?? false)) ||
          (now.weekday == 4 &&
              (settings.notificationsSettings?.schedule?.thursday ?? false)) ||
          (now.weekday == 5 &&
              (settings.notificationsSettings?.schedule?.friday ?? false)) ||
          (now.weekday == 6 &&
              (settings.notificationsSettings?.schedule?.saturday ?? false)) ||
          (now.weekday == 7 &&
              (settings.notificationsSettings?.schedule?.sunday ?? false));
    }

    /// уведомления по интервалам
    if (settings.notificationsSettings?.intervals?.isNotEmpty ?? false) {
      final intervals = settings.notificationsSettings!.intervals!;
      for (var i = 0; i < intervals.length; ++i) {
        final tod = TimeOfDay.fromDateTime(now);
        final todDouble = tod.hour + tod.minute / 60.0;
        if (todDouble > intervals[i].startToDouble() &&
            todDouble < intervals[i].endToDouble()) {
          show = false;
          break;
        }
      }
    }
    return show;
  }

  /// отображение уведомления
  static Future<void> showPush(
    RemoteMessage message, {
    String? additional,
  }) async {
    DlsPlatformNotificationType? dlsPlatformNotificationType;
    if (message.data['data'] is String) {
      dlsPlatformNotificationType =
          DLSNotificationPlatformHelper.fromStringJson(
        message.data['data'] as String,
      ).platform;
    }
    if (dlsPlatformNotificationType != null &&
        dlsPlatformNotificationType !=
            DlsPlatformHelper.getRunningNotificationPlatform()) {
      return;
    }
    final show = await allowedShowNotification();

    /// принимаем решение показывать или нет на основании обработанных настроек
    if (!show) {
      return;
    }
    Logger().i(message.data['data']);
    switch (dlsPlatformNotificationType) {
      case DlsPlatformNotificationType.web:
        // вся обработка в js
        break;
      case DlsPlatformNotificationType.macOS:
        unawaited(_show(message));
        break;
      case DlsPlatformNotificationType.android:
        unawaited(_show(message));
        break;
      case DlsPlatformNotificationType.ios:
        unawaited(_show(message));
        break;
      case DlsPlatformNotificationType.socket:
        // для этих платформ шторки нет
        break;
      case null:
        break;
    }
  }

  static Future<void>? _show(RemoteMessage message) {
    return flutterLocalNotificationsPlugin.show(
      message.hashCode,
      message.notification?.title,
      message.notification?.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
          icon: 'ic_notification',
          importance: Importance.max,
          priority: Priority.max,
          sound: const RawResourceAndroidNotificationSound('bell_notification'),
        ),
        iOS: const DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
          sound: 'bell_notification.caf',
        ),
        macOS: const DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
          sound: 'bell_notification.caf',
        ),
      ),
    );
  }
}
