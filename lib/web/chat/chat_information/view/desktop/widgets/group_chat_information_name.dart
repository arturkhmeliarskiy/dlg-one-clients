// ignore_for_file: prefer_null_aware_method_calls, no_default_cases, public_member_api_docs

import 'package:dls_one/const/enums.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/chat/chat_information/chat_information.dart';
import 'package:dls_one/web/chat/chat_information/view/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GroupChatInformationName extends StatelessWidget {
  const GroupChatInformationName({
    required this.onTapRename,
    required this.onTapExit,
    required this.onTapDelete,
    required this.canDelete,
    super.key,
  });

  final VoidCallback? onTapRename;
  final VoidCallback? onTapExit;
  final VoidCallback? onTapDelete;
  final bool canDelete;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupChatInformationBloc, GroupChatInformationState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: Container.new,
          data: (users, _, owner, matrixRoom) => Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: DLSHeaders.h1(
                          matrixRoom.getLocalizedDisplayname(),
                        ),
                      ),
                    ),
                    GroupMenuButton(
                      canDelete: canDelete,
                      onMenuItemSelected: (p0) {
                        switch (p0) {
                          case PopupMenuItems.rename:
                            onTapRename?.call();
                            break;
                          case PopupMenuItems.exit:
                            onTapExit?.call();
                            break;
                          case PopupMenuItems.delete:
                            onTapDelete?.call();
                            break;
                          default:
                            break;
                        }
                      },
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              const DLSDivider(),
            ],
          ),
        );
      },
    );
  }
}
