import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_events/create_events.dart';
import 'package:dls_one/web/create_task/create_task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class NarrowCreateEventsCircleButtons extends StatelessWidget {
  const NarrowCreateEventsCircleButtons({required this.model, super.key});

  final CreateEventsModel model;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CreateEventsBloc>();
    return SizedBox(
      height: 56.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 16.w),
          if (model.place == null)
            DlsPadding.only(
              right: 16.w,
              child: MobileCircleAddButton(
                onPressed: () =>
                    bloc.add(const CreateEventsEvent.setLocation('')),
                text: S.current.location,
                asset: Assets.icons.location.path,
              ),
            ),
          if (model.task == null)
            DlsPadding.only(
              right: 16.w,
              child: MobileCircleAddButton(
                onPressed: () async {
                  final task = await context.router.push<DlsTasks>(
                    const PickTaskDialogRoute(),
                  );
                  if (task == null) {
                    return;
                  }
                  bloc.add(CreateEventsEvent.setTask(task));
                },
                text: S.current.eventConnection,
                asset: Assets.icons.chain.path,
              ),
            ),
          if (model.files.isEmpty)
            DlsPadding.only(
              right: 16.w,
              child: MobileCircleAddButton(
                onPressed: () =>
                    bloc.add(const CreateEventsEvent.addFile(false)),
                text: S.current.files_title,
                asset: Assets.icons.filePin.path,
              ),
            ),
        ],
      ),
    );
  }
}
