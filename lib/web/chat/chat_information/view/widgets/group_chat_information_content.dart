// ignore_for_file: prefer_null_aware_method_calls, public_member_api_docs

import 'package:common/common.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/const/enums.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/chat/chat_information/chat_information.dart';
import 'package:dls_one/web/chat/chat_information/view/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class GroupChatInformationContent extends StatelessWidget {
  const GroupChatInformationContent({
    super.key,
    required this.onTapAddUser,
    required this.onTapUserKick,
    required this.onAdminAccess,
  });

  final ValueChanged<List<DLSUser>>? onTapAddUser;
  final ValueChanged<String>? onTapUserKick;
  final Function(DLSUser, bool)? onAdminAccess;

  @override
  Widget build(BuildContext context) {
    final myId = context.read<DlsMatrixClient>().myId;
    return BlocBuilder<GroupChatInformationBloc, GroupChatInformationState>(
      builder: (context, state) {
        return state.when(
          data: (users, _, owner, matrixRoom) => Column(
            children: [
              SizedBox(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Assets.icons.usersAlt1.svg(
                        height: 18.r,
                        width: 18.r,
                        colorFilter: context.c_text_grey_color_filter,
                      ),
                      SizedBox(width: 8.w),
                      DLSBody.s14(
                        '${users.length} ${S.current.participates}',
                        color: context.c_text_grey,
                      ).expanded(),
                    ],
                  ).expanded(),
                  if (state.isAdmin(myId) || owner == myId)
                    WebButtonIconWithTooltip(
                      tooltip:
                          '${S.current.add} ${S.current.participates.toLowerCase()}',
                      icon: Assets.icons.plus1.path,
                      onTap: () =>
                          onTapAddUser != null ? onTapAddUser!(users) : null,
                    ),
                ],
              ).paddingSymmetric(horizontal: 20.w),
              SizedBox(height: 12.h),
              Material(
                color: Colors.transparent,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: users.length,
                  itemBuilder: (context, i) {
                    return ListTile(
                      // onTap: () {},
                      dense: true,
                      hoverColor: context.c_grey_grey,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5.h, horizontal: 8.w),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      leading: Padding(
                        padding: EdgeInsets.only(left: 12.w),
                        child: Container(
                          alignment: Alignment.center,
                          height: 40.r,
                          width: 40.r,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.r),
                            color: context.c_blue,
                          ),
                          child: DlsAvatar(
                            matrixUserId: users[i].id,
                            text: users[i].DLSUserName,
                          ),
                        ),
                      ),
                      title: Row(
                        children: [
                          Expanded(child: DLSHeaders.h3(users[i].DLSUserName)),

                          /// я администратор
                          /// с других админов и владельца я не могу снять права
                          /// не могу снять и с себя
                          if ((state.isAdmin(myId) &&
                                  (!state.isAdmin(users[i].id) ||
                                      myId == owner) &&
                                  users[i].id != owner &&
                                  users[i].id != myId) ||
                              (owner == myId && users[i].id != myId))
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: UserMenuButton(
                                isAdmin: state.isAdmin(users[i].id),
                                onMenuItemSelected: (p0) async {
                                  if (p0 == PopupMenuItems.delete) {
                                    await _kick(context, users[i]);
                                  }
                                  if (p0 == PopupMenuItems.adminAccess) {
                                    await _adminAccess(
                                        state, users[i], context);
                                  }
                                },
                              ),
                            )
                        ],
                      ),
                      subtitle: state.isAdmin(users[i].id)
                          ? DLSBody.s14(S.current.group_admin)
                          : users[i].id == owner
                              ? DLSBody.s14(
                                  S.current.group_owner,
                                  color: context.c_text_grey,
                                )
                              : null,
                    );
                  },
                ),
              ).expanded(),
            ],
          ),
          initial: DLSPreloader.new,
          loading: DLSPreloader.new,
          failure: (message) => DlsFailure(message: message),
        );
      },
    );
  }

  Future<void> _kick(
    BuildContext context,
    DLSUser user,
  ) async {
    if (onTapUserKick != null) {
      final ans = DlsPlatform.dlsPlatform == DlsPlatformType.mobile
          ? await showDLSDialog(
              context,
              '${S.current.delete_from_group}?',
              null,
              width: 200.w,
            )
          : await showDLSDialog2(
              context,
              '${S.current.delete_from_group}?',
              null,
              width: 200.w,
            );
      if (ans == DLSDialogAnswer.confirm) {
        onTapUserKick!(user.id!);
      }
    }
  }

  Future<void> _adminAccess(
    GroupChatInformationState state,
    DLSUser user,
    BuildContext context,
  ) async {
    if (onAdminAccess != null) {
      if (!state.isAdmin(user.id)) {
        final ans = DlsPlatform.dlsPlatform == DlsPlatformType.mobile
            ? await showDLSDialog(
                context,
                S.current.areYouSure,
                S.current.afterPowerLevelUpItCanChangeOnlyOwner,
                width: 200.w,
              )
            : await showDLSDialog2(
                context,
                S.current.areYouSure,
                S.current.afterPowerLevelUpItCanChangeOnlyOwner,
                width:
                    S.current.afterPowerLevelUpItCanChangeOnlyOwner.length * 5,
              );
        if (ans == DLSDialogAnswer.confirm) {
          onAdminAccess!(
            user,
            state.isAdmin(user.id),
          );
        }
      } else {
        onAdminAccess!(
          user,
          state.isAdmin(user.id),
        );
      }
    }
  }
}
