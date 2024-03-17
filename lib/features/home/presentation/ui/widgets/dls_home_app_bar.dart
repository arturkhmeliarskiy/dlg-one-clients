import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/const/enums.dart';
import 'package:dls_one/core/auth/stream_auth_scope.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/dls_settings_button.dart';
import 'package:dls_one/core/widgets/src/dls_user_avatar_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DlsHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DlsHomeAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(60.h);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        color: context.c_appbar,
        border: Border(
          bottom: BorderSide(
            color: context.c_grey_stoke,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: BlocBuilder<UsersBloc, UsersState>(
          builder: (context, state) {
            final myId = context.read<DlsMatrixClient>().myId;
            final user = state.store[myId];
            if (user != null) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DlsUserAvatarName(
                    matrixId: user.id!,
                    text: user.name,
                  ),
                  SizedBox(
                    height: preferredSize.height,
                    child: Padding(
                      padding: EdgeInsets.only(top: 6.h),
                      child: DlsSettingsButton(
                        onMenuItemSelected: (PopupMenuItems selected) async {
                          if (PopupMenuItems.exit == selected) {
                            await StreamAuthScope.of(context).signOut();
                          } else if (PopupMenuItems.settings == selected) {
                            await context.navigateTo(const SettingsRootRoute());
                          }
                        },
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: preferredSize.height,
                    child: DlsSettingsButton(
                      onMenuItemSelected: (PopupMenuItems selected) async {
                        if (PopupMenuItems.exit == selected) {
                          await StreamAuthScope.of(context).signOut();
                        }
                      },
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
