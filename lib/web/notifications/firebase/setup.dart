import 'dart:async';

import 'package:common/common.dart';
import 'package:dls_one/utils/src/dls_platform_helper.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rest_api/rest_api.dart';

/// todo спрятать в класс
late AndroidNotificationChannel channel;
late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
bool isFlutterLocalNotificationsInitialized = false;
bool _isNotificationsInitialized = false;

Future<void> initNotifications({
  required DlsRestApi restApi,
  required DlsLogger logger,
}) async {
  if (_isNotificationsInitialized) {
    logger.i(
      '[initNotifications] FirebaseMessaging is already initialized.',
    );
    return;
  }

  /// нам нужны доступы к уведомлениям!
  final messaging = FirebaseMessaging.instance;
  await messaging.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  final settings = await messaging.requestPermission();
  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    final fcmToken = await messaging.getToken();
    if (fcmToken != null) {
      logger.i('User fcmToken: $fcmToken');
      try {
        await restApi.notificationsApi.pushToken(
          PushToken(
            token: fcmToken,
            active: true,
            platformType: DlsPlatformHelper.getRunningNotificationPlatform(),
          ),
        );
        _isNotificationsInitialized = true;
        logger.i(
          'FirebaseMessaging initialized success',
        );
      } catch (error) {
        _isNotificationsInitialized = false;
      }
    } else {
      _isNotificationsInitialized = false;
    }
  } else {
    _isNotificationsInitialized = false;
    logger.w(
      'FirebaseMessaging is NOT authorized or permission for notification is NOT granted. Notification disabled.',
    );
  }
}

/// настройка канала уведомлений
Future<void> setupFlutterNotifications() async {
  if (isFlutterLocalNotificationsInitialized) {
    return;
  }
  channel = const AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    description: 'This channel is used for important notifications.',
    // description
    importance: Importance.max,
    sound: RawResourceAndroidNotificationSound('bell_notification'),
  );

  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  switch (DlsPlatformHelper.getRunningSubPlatform()) {
    case DlsPlatformSubType.macOS:
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              MacOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            sound: true,
            alert: true,
            badge: true,
            critical: true,
          );
      break;
    case DlsPlatformSubType.android:
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(channel);
      break;
    case DlsPlatformSubType.ios:
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );
      break;
    default:
    // TODO config
  }
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  isFlutterLocalNotificationsInitialized = true;
}
