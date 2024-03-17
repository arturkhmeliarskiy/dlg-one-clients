import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/home/presentation/bloc/global_chat_bloc.dart';
import 'package:dls_one/features/home/presentation/ui/dls_groups_list.dart';
import 'package:dls_one/features/home/presentation/ui/widgets/dls_home_app_bar.dart';
import 'package:dls_one/features/home/presentation/ui/widgets/dls_main_menu_list.dart';
import 'package:dls_one/web/chat/chat_manager/chat_manager.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rest_api/rest_api.dart';
import 'package:services_watcher/services_watcher.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with NotificationsMixin, WidgetsBindingObserver {
  bool _needToShow = false;

  @override
  void initState() {
    super.initState();
    final matrixClient = context.read<DlsMatrixClient>();

    /// прочитать пользователей системы, их статус онлайна и аватарки
    if (matrixClient.myId != null) {
      context
          .read<UsersBloc>()
          .add(UsersEvent.read(usersIds: [matrixClient.myId!]));
    } else {
      context.read<UsersBloc>().add(const UsersEvent.read(usersIds: []));
    }
    unawaited(
      _checkForPermissions(
        restApi: context.read<DlsRestApi>(),
        logger: context.read<DlsLogger>(),
      ),
    );
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      unawaited(
        _checkForPermissions(
          restApi: context.read<DlsRestApi>(),
          logger: context.read<DlsLogger>(),
        ),
      );
    }
  }

  Future<void> _checkForPermissions({
    required DlsRestApi restApi,
    required DlsLogger logger,
    PermissionStatus? permissionStatus,
  }) async {
    var status = permissionStatus ?? await Permission.notification.status;
    final prevNeedToShow = _needToShow;
    _needToShow = !status.isGranted;
    if (_needToShow && _needToShow != prevNeedToShow) {
      // ignore: use_build_context_synchronously
      final ans = await showDLSDialog(
        context,
        S.current.grantingAccess,
        S.current.grantingAccessNotificationQuestion,
      );
      if (ans?.value ?? false) {
        await openAppSettings();
        status = permissionStatus ?? await Permission.notification.status;
      }
    }
    if (status.isGranted) {
      await initNotifications(
        restApi: restApi,
        logger: logger,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SipBloc, SipState>(
      listener: (context, s) {
        final router = AutoRouter.of(context);
        s.mapOrNull(
          idle: (state) {
            /// сейчас не говорим ни с кем
            if (state.incomingCatched != null &&
                !router.currentPath.contains('call')) {
              context.pushRoute(
                IncomingCallRoute(
                  activeCall: state.incomingCatched!,
                ),
              );
            }
          },
        );
      },
      child: Scaffold(
        backgroundColor: context.c_appbar,
        appBar: const DlsHomeAppBar(),
        body: Stack(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.h, bottom: 0.h),
                    child: DLSMainMenuList(
                      onChatTap: () {
                        context.pushRoute(const ChatsRoute());
                      },
                      onImportantTap: () {
                        showDLSSnackBar(
                          context,
                          S.current.important,
                        );
                      },
                      onRepliesTap: () {
                        showDLSSnackBar(
                          context,
                          S.current.replies,
                        );
                      },
                    ),
                  ),
                  const DLSDivider().paddingSymmetric(vertical: 10),
                  DlsGroupsList(
                    onTapAdd: () => context.navigateTo(
                      ChatsRootRoute(
                        children: [
                          GroupRootRoute(
                            children: [
                              MobileSetGroupNameRoute(
                                init: SimpleGroup(
                                  name: '',
                                  users: [],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (kDebugMode)
              const Positioned(
                right: 5,
                bottom: 5,
                child: ServicesWatcherWidget(),
              )
          ],
        ),
      ),
    );
  }
}

class ServicesWatcherWidget extends StatelessWidget {
  const ServicesWatcherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServicesWatcherBloc, ServicesWatcherState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DLSBody.s14(
              'Socket',
              color: state.isSocketAlive ? Colors.green : Colors.red,
            ),
            DLSBody.s14(
              'Matrix',
              color: state.isMatrixAlive ? Colors.green : Colors.red,
            ),
            DLSBody.s14(
              'Rest',
              color: state.isRestAlive ? Colors.green : Colors.red,
            ),
            DLSBody.s14(
              'Sip',
              color: state.isSipAlive ? Colors.green : Colors.red,
            ),
            DLSBody.s14(
              'Network',
              color: state.isNetworkAlive ? Colors.green : Colors.red,
            ),
          ],
        );
      },
    );
  }
}
