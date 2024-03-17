// ignore_for_file: prefer_null_aware_method_calls, no_default_cases, public_member_api_docs

import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/chat/chat_information/chat_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MobileGroupChatInformationName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupChatInformationBloc, GroupChatInformationState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: Container.new,
          data: (users, _, owner, matrixRoom) => Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1.h,
                  color: context.c_grey_stoke,
                ),
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 20.h),
            alignment: Alignment.center,
            child: DLSHeaders.h3(
              matrixRoom.getLocalizedDisplayname(),
            ),
          ),
        );
      },
    );
  }
}
