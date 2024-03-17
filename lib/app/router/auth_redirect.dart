import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:common/common.dart';
import 'package:dls_one/app/di/app_di.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/auth/stream_auth.dart';
import 'package:dls_one/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:dls_one/features/auth/presentation/bloc/locker_bloc.dart';
import 'package:rest_api/rest_api.dart';
import 'package:storage/storage.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard({
    required this.authBloc,
    required this.lockerBloc,
    required this.authScope,
    required this.store,
  });

  final AuthBloc authBloc;
  final LockerBloc lockerBloc;
  final StreamAuth authScope;
  final KeyValueStore store;

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    // TODO(DLS-310): отрефакторить с авторизацией.
    final api = AppDI.findRepository<DlsRestApi>();

    /// последний пользователь
    final lastUsernameMap = await api.getLastUsername();
    final lastLogin = lastUsernameMap['lastLogin'] as String?;
    final lastUsername = lastUsernameMap['lastUsername'] as String?;

    final pin = await store.read(StoreKeys.pin);

    final bioString = await store.read(StoreKeys.bio);
    bool? bio;
    if (bioString == 'yes') bio = true;
    if (bioString == 'no') bio = false;

    final loggedIn = authScope.isSignedIn();
    final allSegments = resolver.route.allSegments();
    final loggingIn = allSegments.contains('auth');
    final pinStored = bio != null || pin != null;
    final isLocked = lockerBloc.state.isLocked;

    final needEnrich = lastLogin != null &&
        lastUsername != null &&
        resolver.route.children?.firstWhereOrNull(
              (element) =>
                  element.name == AuthLoginRoute.name &&
                  element.queryParams.isEmpty,
            ) !=
            null;

    if (!loggedIn && !pinStored) {
      if (loggingIn && !needEnrich) {
        resolver.next();
        return;
      } else {
        if (lastLogin != null && lastUsername != null) {
          authBloc.add(
            AuthEvent.update(login: lastLogin, lastUsername: lastUsername),
          );

          resolver.next(false);
          await router.replaceAll([
            AuthRootRoute(
              children: [
                AuthLoginRoute(
                  initialEmail: lastLogin,
                  initialName: lastUsername,
                ),
              ],
            ),
          ]);
          return;
        } else {
          resolver.next(false);
          await router.replaceAll([
            const AuthRootRoute(),
          ]);
          return;
        }
      }
    }
    if (isLocked &&
        !allSegments.contains('locker') &&
        DlsPlatform.dlsPlatform == DlsPlatformType.mobile) {
      resolver.next(false);
      await router.replaceAll([
        const MainRoute(
          children: [LockerRoute()],
        ),
      ]);
      return;
    }
    if (!isLocked && resolver.route.path.contains('locker')) {
      resolver.next(false);
      await router.replaceAll([const MainRoute()]);
      return;
    }
    if (loggingIn) {
      resolver.next(false);
      await router.replaceAll([const MainRoute()]);
      return;
    }
    resolver.next();
  }
}
