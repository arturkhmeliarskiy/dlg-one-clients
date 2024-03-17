import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/const/enums.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/chat/chat_information/chat_information.dart';
import 'package:dls_one/web/chat/chat_information/view/mobile/widgets/widgets.dart';
import 'package:dls_one/web/chat/chat_information/view/widgets/widgets.dart';
import 'package:dls_one/web/chat/chat_manager/chat_manager.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rest_api/rest_api.dart';

class MobileGroupChatInformationPage extends StatelessWidget {
  const MobileGroupChatInformationPage({
    super.key,
    required this.chatId,
  });

  final String chatId;

  static Widget builder({
    required String chatId,
  }) =>
      MultiBlocProvider(
        providers: [
          BlocProvider(
            key: ValueKey(chatId),
            create: (context) => GroupChatInformationBloc(
              chatId: chatId,
              restApi: context.read<DlsRestApi>(),
              matrixClient: context.read<DlsMatrixClient>(),
            ),
          ),
          BlocProvider(
            create: (context) => ChatManagerBloc(
              matrixClient: context.read<DlsMatrixClient>(),
            ),
          ),
        ],
        child: MobileGroupChatInformationPage(chatId: chatId),
      );

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatManagerBloc, ChatManagerState>(
      listener: (context, state) {
        state.whenOrNull(
          message: (message) => showDLSDialog(
            context,
            null,
            message,
            width: 200.w,
            onlyYesButton: true,
            yesButtonLabel: S.current.ok,
          ),
          notEnoughRights: (transaction) => showDLSDialog(
            context,
            S.current.error,
            S.current.notEnoughRights,
            width: S.current.notEnoughRights.length * 10,
            onlyYesButton: true,
            yesButtonLabel: S.current.ok,
          ),
          leftChat: (transaction) =>
              AutoRouter.of(context).navigate(const HomeRoute()),
        );
      },
      listenWhen: (previous, current) {
        return current.maybeWhen(
          orElse: () => false,
          message: (cur) {
            return previous.maybeWhen(
              orElse: () => true,
              message: (prev) => cur != prev,
            );
          },
          notEnoughRights: (cur) {
            return previous.maybeWhen(
              orElse: () => true,
              notEnoughRights: (prev) => cur != prev,
            );
          },
          leftChat: (transaction) => true,
        );
      },
      child: Scaffold(
        backgroundColor: context.c_white_text,
        appBar: MobileGroupChatInformationAppBar(
          canDelete: context.read<DlsMatrixClient>().isMeOwnerOfChat(chatId),
          onMenuItemSelected: (p0) {
            switch (p0) {
              case PopupMenuItems.rename:
                _rename(context);
                break;
              case PopupMenuItems.exit:
                _exit(context);
                break;
              case PopupMenuItems.delete:
                _delete(context);
                break;
              case PopupMenuItems.videoCall:
                _call(
                  audioMuted: false,
                  videoMuted: false,
                  chatId: chatId,
                  context: context,
                );
                break;
              case PopupMenuItems.settings:
              case PopupMenuItems.showInfo:
              case PopupMenuItems.mute:
              case PopupMenuItems.copy:
              case PopupMenuItems.saveAs:
              case PopupMenuItems.saveToGallery:
              case PopupMenuItems.adminAccess:
              case PopupMenuItems.audioCall:
                break;
            }
          },
          onTapBack: context.popRoute,
        ),
        body: Column(
          children: [
            MobileGroupChatInformationName(),
            SizedBox(height: 8.h),
            Expanded(
              child: GroupChatInformationContent(
                onTapAddUser: (users) => context.pushRoute(
                  GroupRootRoute(
                    children: [
                      MobileUpdateGroupUsersRoute(
                        init: SimpleGroup(
                          name: context
                              .read<DlsMatrixClient>()
                              .rooms
                              .firstWhere((element) => element.id == chatId)
                              .getLocalizedDisplayname(),
                          users: users,
                          chatId: chatId,
                        ),
                      ),
                    ],
                  ),
                ),
                onTapUserKick: (userId) => context
                    .read<ChatManagerBloc>()
                    .add(ChatManagerEvent.kickUsers(chatId, [userId])),
                onAdminAccess: (user, isAdmin) {
                  if (isAdmin) {
                    context.read<ChatManagerBloc>().add(
                          ChatManagerEvent.removeAdmin(
                            SimpleGroup(
                              name: context
                                  .read<DlsMatrixClient>()
                                  .rooms
                                  .firstWhere(
                                    (element) => element.id == chatId,
                                  )
                                  .getLocalizedDisplayname(),
                              users: [user],
                              chatId: chatId,
                            ),
                          ),
                        );
                  } else {
                    context.read<ChatManagerBloc>().add(
                          ChatManagerEvent.setAdmin(
                            SimpleGroup(
                              name: context
                                  .read<DlsMatrixClient>()
                                  .rooms
                                  .firstWhere(
                                    (element) => element.id == chatId,
                                  )
                                  .getLocalizedDisplayname(),
                              users: [user],
                              chatId: chatId,
                            ),
                          ),
                        );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _call({
    required bool audioMuted,
    required bool videoMuted,
    required String chatId,
    required BuildContext context,
  }) async {
    final isCameraAccessGranted =
        (await Permission.camera.status) == PermissionStatus.granted;
    final isMicAccessGranted =
        (await Permission.microphone.status) == PermissionStatus.granted;
    if (!isCameraAccessGranted || !isMicAccessGranted) {
      // ignore: use_build_context_synchronously
      final ans = await showDLSDialog(
        context,
        S.current.grantingAccess,
        !isCameraAccessGranted && !isMicAccessGranted
            ? S.current.grantingAccessMicOrCameraQuestion
            : !isCameraAccessGranted
                ? S.current.grantingAccessCameraQuestion
                : S.current.grantingAccessMicQuestion,
      );
      if (ans?.value ?? false) {
        await openAppSettings();
      }
    } else {
      if (DlsPlatform.dlsPlatform == DlsPlatformType.mobile) {
        await hideKeyboard();
      }
      // ignore: use_build_context_synchronously
      final sipBloc = context.read<SipBloc>();
      await sipBloc.state.maybeMap(
        idle: (_) async {
          sipBloc.add(SipEvent.doCall(chatId, videoMuted));
          await context.pushRoute(const CallRoute());
        },
        orElse: () async {
          await showDLSDialog(
            context,
            null,
            S.current.nowYouInCall,
            onlyYesButton: true,
            yesButtonLabel: S.current.ok,
          );
        },
      );
    }
  }

  void _exit(BuildContext context) {
    final chat = context
        .read<DlsMatrixClient>()
        .rooms
        .firstWhere((element) => element.id == chatId);
    if (context.read<DlsMatrixClient>().isMeOwnerOfChat(chat.id)) {
      context.navigateTo(
        GroupRootRoute(
          children: [
            MobileSelectGroupAdminRoute(
              init: SimpleGroup(
                name: chat.getLocalizedDisplayname(),
                users: context
                    .read<UsersBloc>()
                    .state
                    .chatUsers(chat.getParticipants()),
                chatId: chatId,
              ),
            )
          ],
        ),
      );
    } else {
      context.read<ChatManagerBloc>().add(ChatManagerEvent.leave(chatId));
    }
  }

  void _rename(BuildContext context) {
    final chat = context
        .read<DlsMatrixClient>()
        .rooms
        .firstWhere((element) => element.id == chatId);

    context.navigateTo(
      GroupRootRoute(
        children: [
          MobileRenameGroupChatRoute(
            init: SimpleGroup(
              name: chat.getLocalizedDisplayname(),
              users: [],
              chatId: chatId,
            ),
          ),
        ],
      ),
    );
  }

  void _delete(BuildContext context) {
    final chat = context
        .read<DlsMatrixClient>()
        .rooms
        .firstWhere((element) => element.id == chatId);
    if (context.read<DlsMatrixClient>().isMeOwnerOfChat(chatId)) {
      showDLSDialog(
        context,
        S.current.leaveGroupQuestion(
          chat.getLocalizedDisplayname(),
        ),
        S.current.xPeopleAutoDeleteFromGroup(
          chat.getParticipants().length,
        ),
        width: S.current
                .xPeopleAutoDeleteFromGroup(
                  chat.getParticipants().length,
                )
                .length *
            10,
        yesButtonLabel: S.current.yes,
        cancelButtonLabel: S.current.no,
      ).then(
        (value) {
          if (value == DLSDialogAnswer.confirm) {
            context
                .read<ChatManagerBloc>()
                .add(ChatManagerEvent.delete(chatId));
          }
        },
      );
    }
  }
}
