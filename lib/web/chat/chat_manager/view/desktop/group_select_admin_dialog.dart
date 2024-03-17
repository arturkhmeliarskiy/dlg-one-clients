import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/chat/chat_manager/chat_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

Future<SimpleGroup?> selectGroupOwnerDialog(
  BuildContext context,
  SimpleGroup init,
) {
  return showDialog<SimpleGroup>(
    barrierColor: context.c_overlay_with_opacity,
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        elevation: 0,
        alignment: Alignment.center,
        insetPadding: EdgeInsets.all(12.r),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
        ),
        child: BlocProvider(
          create: (context) => SearchAndSelectUsersBloc(
            const SearchAndSelectUsersState.initial([]),
            restApi: context.read<DlsRestApi>(),
          ),
          child: SizedBox(
            width: 400.w,
            height: 415.h,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DLSHeaders.h1(
                  S.current.selectNewOwner,
                ).paddingOnly(bottom: 20.h, left: 20.w, right: 20.w),
                const DLSDivider().paddingOnly(bottom: 20.h),
                Expanded(
                  child: SearchAndSelectOneUserWidget(
                    inputPaddings: EdgeInsets.symmetric(horizontal: 20.w),
                    cantDeselectSelfMatrixId:
                        context.read<DlsMatrixClient>().myId,
                    group: init.users,
                  ),
                ),
                const DLSDivider().paddingOnly(bottom: 20.h),
                BlocBuilder<SearchAndSelectUsersBloc,
                    SearchAndSelectUsersState>(
                  builder: (context, state) {
                    return _Actions(
                      SimpleGroup(
                        users: state.selectedUsers,
                        name: init.name,
                        chatId: init.chatId,
                      ),
                    );
                  },
                ).paddingSymmetric(horizontal: 20.w),
              ],
            ).paddingSymmetric(vertical: 20.h),
          ),
        ),
      );
    },
  );
}

class _Actions extends StatelessWidget {
  const _Actions(this.group);

  final SimpleGroup group;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DLSButton(
          text: S.current.setAdmin,
          isShadowEnabled: false,
          color: group.users.length == 1
              ? context.c_blue
              : context.c_blue_disabled,
          textColor: context.c_white_text,
          width: 113.w,
          height: 40.h,
          onTap: group.users.length == 1
              ? () => Navigator.pop(context, group)
              : null,
        ),
        DLSButton(
          text: S.current.cancel2,
          isShadowEnabled: false,
          color: context.c_white_text,
          border: Border.all(color: context.c_grey_stoke, width: 1.r),
          width: 113.w,
          height: 40.h,
          onTap: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
