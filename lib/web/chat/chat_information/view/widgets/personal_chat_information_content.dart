// ignore_for_file: public_member_api_docs

import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/chat/chat_information/chat_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonalChatInformationContent extends StatelessWidget {
  const PersonalChatInformationContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalChatInformationBloc,
        PersonalChatInformationState>(
      builder: (context, state) {
        return state.when(
          data: (user, matrixRoom) => Column(
            children: [
              DlsAvatarNameStatus(
                userId: user.id,
                name: user.DLSUserName,
              ),
              SizedBox(height: 20.h),
              const DLSDivider(),
              SizedBox(height: 20.h),
              DlsUserPersonalInfo(user: user)
                  .paddingSymmetric(horizontal: 20.w),
              SizedBox(height: 20.h),
            ],
          ),
          initial: DLSPreloader.new,
          loading: DLSPreloader.new,
          failure: (message) => DlsFailure(message: message),
        );
      },
    );
  }
}
