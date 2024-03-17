import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_events/create_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateEventDetailsView extends StatelessWidget {
  const CreateEventDetailsView({super.key, required this.model});

  final CreateEventsModel model;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CreateEventsBloc>();
    return ListView(
      children: [
        SizedBox(height: 20.h),
        EventTypeView(
          online: model.online,
          onChanged: (bool online) =>
              bloc.add(CreateEventsEvent.setOnline(online: online)),
        ),
        SizedBox(height: 20.h),
        const Divider(),
        SizedBox(height: 20.h),
        CreateEventDateView(model: model),
        SizedBox(height: 20.h),
        const Divider(),
        SizedBox(height: 20.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: Align(
            alignment: Alignment.centerLeft,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 156.w),
              child: NotifyBeforeDropdownButton(
                value: model.notifyBefore,
                onChanged: (type) {
                  if (type == null) {
                    return;
                  }
                  bloc.add(CreateEventsEvent.setNotifyBefore(type));
                },
              ),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        const Divider(),
        SizedBox(height: 20.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: DlsTitledSwitch(
            onChanged: (memberInvite) => bloc.add(
              CreateEventsEvent.setMemberInvite(memberInvite: memberInvite),
            ),
            value: model.memberInvite,
            info: S.current.membersCanInviteInfo,
          ),
        ),
      ],
    );
  }
}
