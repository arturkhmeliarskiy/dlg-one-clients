import 'dart:async';

import 'package:common/common.dart';
import 'package:dls_one/app/app_environment.dart';
import 'package:dls_one/app/di/app_di.dart';
import 'package:dls_one/app/runners/app_runner.dart';
import 'package:dls_one/const/supported_locales.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/initializer/stub_initializer.dart'
    if (dart.library.io) 'package:dls_one/initializer/io_initializer.dart'
    if (dart.library.html) 'package:dls_one/initializer/html_initializer.dart'
    as initializer;
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:wakelock/wakelock.dart';

late Stream<RemoteMessage> onBackgroundMessage;
late Stream<RemoteMessage> onMessage;

class Runner {
  static Future<void> run(AppEnvironment appEnvironment) async {
    initializer.initialize();

    WidgetsFlutterBinding.ensureInitialized();

    /// инициализация
    await _initializeFlutterPluginsAndDependencies(
      appEnvironment: appEnvironment,
    );
    return appRunner(appEnvironment);
  }

  static Future<void> _initializeFlutterPluginsAndDependencies({
    required AppEnvironment appEnvironment,
  }) async {
    /// Установка локализации timeago для всех платформ
    /// Для корректной работы перевода со временем
    _setTimeagoLocales();

    final platform = DlsPlatform.dlsPlatform;
    if (platform == DlsPlatformType.web) {
      await _initializePlatformWeb(appEnvironment);
    } else if (platform == DlsPlatformType.mobile) {
      await _initializePlatformMobile(appEnvironment);
    } else if (platform == DlsPlatformType.desktop) {
      await _initializePlatformDesktop(appEnvironment);
    } else {
      throw Exception('Unsupported platform!');
    }
  }

  static Future<void> _initializePlatformMobile(
    AppEnvironment appEnvironment,
  ) async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    ///установка точки входа в фоновый процесс управления уведомлениями
    // TODO проверить работает ли onBackgroundMessage на ios
    FirebaseMessaging.onBackgroundMessage(shadow);
    onMessage = FirebaseMessaging.onMessage;
    onMessage.listen(DLSNotificationShower.showPush);
    await setupFlutterNotifications();
    if (kDebugMode) {
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
    } else {
      FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    }
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await Wakelock.enable();
    await AppDI.init(appEnvironment);
  }

  static Future<void> _initializePlatformWeb(
    AppEnvironment appEnvironment,
  ) async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await AppDI.init(appEnvironment);
  }

  static Future<void> _initializePlatformDesktop(
    AppEnvironment appEnvironment,
  ) async {
    if (DlsPlatformHelper.getRunningNotificationPlatform() ==
        DlsPlatformNotificationType.macOS) {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      await setupFlutterNotifications();

      ///установка точки входа в фоновый процесс управления уведомлениями
      FirebaseMessaging.onBackgroundMessage(DLSNotificationShower.showPush);
    }
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await AppDI.init(appEnvironment);
  }

  static void _setTimeagoLocales() {
    for (final locale in S.delegate.supportedLocales) {
      timeago.setLocaleMessages(
        locale.languageCode,
        _lookupMessages(locale.languageCode),
      );
    }

    timeago.setDefaultLocale('ru');
  }

  // TODO(Dimov): пока что оставляем такой вариант
  // В дальнейшем нужно будет решить, будем ли переписывать timeago или нет
  static timeago.LookupMessages _lookupMessages(String locale) {
    switch (locale) {
      // case SupportedLocales.some_locale: // Раскомментировать при добавлении нового языка
      case SupportedLocales.ru:
        return timeago.RuMessages();
      default:
        return timeago.EnMessages();
    }
  }
}
