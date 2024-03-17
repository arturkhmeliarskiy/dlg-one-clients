import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/app_environment.dart';
import 'package:dls_one/app/bootstrap.dart';
import 'package:dls_one/app/di/app_di.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/app/router/auth_redirect.dart';
import 'package:dls_one/app/router/observer.dart';
import 'package:dls_one/app/theme/app_theme.dart';
import 'package:dls_one/common/gen/localization/l10n.dart';
import 'package:dls_one/core/auth/stream_auth_scope.dart';
import 'package:dls_one/core/users/presentation/bloc/users_bloc.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/core/widgets/dls_loader/square_progress_indicator.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:dls_one/features/auth/presentation/bloc/locker_bloc.dart';
import 'package:dls_one/features/auth/registration.dart';
import 'package:dls_one/features/home/presentation/bloc/global_chat_bloc.dart';
import 'package:dls_one/features/media/media_player/media_player_scope.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rest_api/rest_api.dart';
import 'package:services_watcher/services_watcher.dart';
import 'package:sip_repository/sip_repository.dart';
import 'package:storage/storage.dart';
import 'package:web_socket_client/web_socket_client.dart' as ws;

Future<void> appRunner(AppEnvironment appEnvironment) async {
  final keyValueStore = AppDI.findRepository<KeyValueStore>();
  final restApi = AppDI.findRepository<DlsRestApi>();
  final matrixClient = AppDI.findRepository<DlsMatrixClient>();
  final sipRepository = AppDI.findRepository<SipRepository>();
  final socketApi = AppDI.findRepository<ws.WebSocket>();
  final logger = AppDI.findRepository<DlsLogger>();
  final authBloc = AuthBloc(restApi: restApi);
  final regBloc = RegBloc(restApi: restApi, authBloc: authBloc);
  final lockerBloc = LockerBloc(store: keyValueStore, restApi: restApi);
  final globalChatBloc = GlobalChatBloc(matrixClient: matrixClient);
  final usersBloc = UsersBloc(matrixClient: matrixClient, restApi: restApi);
  final sip = SipBloc(
    globalChatBloc: globalChatBloc,
    usersBloc: usersBloc,
    socketApi: socketApi,
    sipRepository: sipRepository,
    restApi: restApi,
    logger: logger,
  );
  final push = NotificationsPushBloc(
    rest: restApi,
    logger: logger,
    socketApi: socketApi,
  );
  final pushCounter = NotificationsCounterBloc();
  final platform = DlsPlatform.dlsPlatform;
  final connectivity = Connectivity();
  final cr = await connectivity.checkConnectivity();
  final servicesWatcher = ServicesWatcherBloc(
    ServicesWatcherState(
      isSocketAlive: socketApi.connection.state is ws.Connected,
      isMatrixAlive: matrixClient.isLoggedIn,
      isRestAlive: false,
      isSipAlive: sipRepository.isConnected,
      isNetworkAlive: [
        ConnectivityResult.wifi,
        ConnectivityResult.ethernet,
        ConnectivityResult.mobile
      ].contains(cr),
    ),
    connectivity: connectivity,
    sipRepository: sipRepository,
    socketApi: socketApi,
    restApi: restApi,
    matrixClient: matrixClient,
  );

  return bootstrap(
    appEnvironment: appEnvironment,
    logger: AppDI.findRepository<DlsLogger>(),
    builder: () {
      final child = StreamAuthScope(
        notificationsPushBloc: push,
        logger: logger,
        users: usersBloc,
        lockerBloc: lockerBloc,
        matrixClient: matrixClient,
        restApi: restApi,
        secureStore: keyValueStore,
        sipRepository: sipRepository,
        socketApi: socketApi,
        child: MultiRepositoryProvider(
          providers: AppDI.buildRepositoryProviders(),
          child: MultiBlocProvider(
            providers: [
              BlocProvider.value(value: authBloc),
              BlocProvider.value(value: regBloc),
              BlocProvider.value(value: lockerBloc),
              BlocProvider.value(value: globalChatBloc),
              BlocProvider.value(value: usersBloc),
              BlocProvider.value(value: sip),
              BlocProvider.value(value: servicesWatcher),
              BlocProvider.value(value: push),
              BlocProvider.value(value: pushCounter),
            ],
            child: const _App(),
          ),
        ),
      );
      if (platform == DlsPlatformType.mobile) {
        return ScreenUtilInit(
          designSize: const Size(320, 640),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, __) => child,
        );
      } else {
        return child;
      }
    },
  );
}

class _App extends StatefulWidget {
  const _App();

  @override
  State<_App> createState() => _AppState();
}

class _AppState extends State<_App> {
  DLSUser? user;

  DlsPlatformType get platform => DlsPlatform.dlsPlatform;

  late final RootStackRouter appRouter = AppRouter(
    authGuard: AuthGuard(
      authBloc: context.read(),
      lockerBloc: context.read(),
      authScope: StreamAuthScope.of(context),
      store: AppDI.findRepository(),
    ),
    isMobile: platform == DlsPlatformType.mobile,
  );

  late final AutoRouterDelegate delegate = AutoRouterDelegate(
    appRouter,
    navigatorObservers: () => [
      AppNavigationObserver(AppDI.findRepository<DlsLogger>()),
    ],
  );

  // TODO(DLS-310): быстрое решение для подгрузки юзера в вебе.
  late final Future<void> _loadUser = () async {
    if (DlsPlatform.dlsPlatform == DlsPlatformType.mobile) {
      return;
    }

    return StreamAuthScope.of(context).trySignIn();
  }();

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.light,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.light,
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final newUser = StreamAuthScope.of(context).currentUser;
    if (user != newUser) {
      user = newUser;
      final PageRouteInfo<Object?> route;
      if (user == null) {
        route = const AuthRootRoute();
      } else {
        route = const MainRoute();
      }
      appRouter.replaceAll([route]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MediaPlayerScope(
      child: NotificationSoundWrapper(
        child: MaterialApp.router(
          theme: AppTheme.light(context),
          themeMode: ThemeMode.light,
          darkTheme: ThemeData(
            visualDensity: VisualDensity.standard,
          ),
          routerDelegate: delegate,
          routeInformationParser: appRouter.defaultRouteParser(),
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: const Locale('ru', 'RU'),
          builder: (context, child) => CallSnackBarWrapper(
            child: DLSLoaderScope(
              child: DLSPageBuilder(
                // В мобилках юзер грузится при вводе пина.
                narrow: child ?? const SizedBox(),
                wide: FutureBuilder<void>(
                  future: _loadUser,
                  builder: (context, snapshot) {
                    final state = snapshot.connectionState;
                    switch (state) {
                      case ConnectionState.none:
                      case ConnectionState.waiting:
                      case ConnectionState.active:
                        return ColoredBox(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          child: const Center(child: SquareProgressIndicator()),
                        );

                      case ConnectionState.done:
                        return child ?? const SizedBox();
                    }
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
