import 'dart:async';

import 'package:dls_one/web/notifications/firebase/firebase.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

/// фоновая служба для работы с уведомлениями
@pragma('vm:entry-point')
Future<void> shadow(RemoteMessage message) async {
  /// инициализация Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  /// настройка уведомлений
  await setupFlutterNotifications();

  /// отображение уведомления
  await DLSNotificationShower.showPush(message);
}
