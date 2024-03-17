import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_events/create_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NarrowCreateEventNotificationView extends StatelessWidget {
  const NarrowCreateEventNotificationView({required this.model, super.key});

  final CreateEventsModel model;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CreateEventsBloc>();
    return Column(
      children: [
        SizedBox(
          height: 32.h,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  S.current.notifications,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
              ),
              SizedBox(width: 4.w),
              SizedBox(
                width: 148.w,
                child: NotifyBeforeDropdownButton(
                  value: model.notifyBefore,
                  onChanged: (type) {
                    if (type == null) {
                      return;
                    }
                    bloc.add(CreateEventsEvent.setNotifyBefore(type));
                  },
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 12.h),
        SizedBox(
          height: 24.h,
          child: Row(
            children: [
              DlsSwitch(
                initialState: model.memberInvite,
                onTap: (memberInvite) {
                  bloc.add(
                    CreateEventsEvent.setMemberInvite(
                      memberInvite: memberInvite,
                    ),
                  );
                },
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  S.current.membersCanInviteInfo,
                  style: context.ts_s14h22_4w400.copyWith(
                    height: 1,
                    color: context.c_text,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
