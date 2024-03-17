import 'dart:async';

import 'package:common/common.dart';
import 'package:dls_one/app/app_environment.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  AppBlocObserver(DlsLogger logger) : _logger = logger;

  final DlsLogger _logger;

  @override
  void onEvent(Bloc<Object?, Object?> bloc, Object? event) {
    super.onEvent(bloc, event);
    _logger.infoPrinter('Event | ${bloc.runtimeType} | $event');
  }

  @override
  void onCreate(BlocBase<Object?> bloc) {
    super.onCreate(bloc);
    _logger.infoPrinter('Create | ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase<Object?> bloc, Change<Object?> change) {
    super.onChange(bloc, change);
    _logger.infoPrinter('Change | ${bloc.runtimeType} | $change');
  }

  @override
  void onTransition(
    Bloc<Object?, Object?> bloc,
    Transition<Object?, Object?> transition,
  ) {
    super.onTransition(bloc, transition);
    final event = transition.event;
    final currentState = transition.currentState;
    final nextState = transition.nextState;
    if (event == null || currentState == null || nextState == null) {
      return;
    }
    _logger.infoPrinter(
      'Transition | ${bloc.runtimeType} | ${event.runtimeType}: ${currentState.runtimeType}->${nextState.runtimeType}',
    );
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    _logger.errorPrinter('Error | ${bloc.runtimeType} | $error', stackTrace);
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase<Object?> bloc) {
    super.onClose(bloc);
    _logger.infoPrinter('Close | ${bloc.runtimeType}');
  }
}

Future<void> bootstrap({
  required AppEnvironment appEnvironment,
  required DlsLogger logger,
  required FutureOr<Widget> Function() builder,
}) async {
  FlutterError.onError = (details) {
    logger.errorPrinter(details.exceptionAsString(), details.stack);
  };

  if (appEnvironment.enableBlocLogs) {
    Bloc.observer = AppBlocObserver(logger);
  }

  await runZonedGuarded(
    () async => runApp(await builder()),
    (error, stackTrace) {
      final platform = DlsPlatform.dlsPlatform;
      if (platform == DlsPlatformType.mobile) {
        if (!kDebugMode) {
          FirebaseCrashlytics.instance.recordError(error, stackTrace);
        }
        logger.errorPrinter('Critical Error:\n${error.toString()}', stackTrace);
      }
    },
  );
}
