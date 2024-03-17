import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_sprint/create_sprint.dart';
import 'package:dls_one/web/sprints/sprints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NarrowCreateSprintBottomBar extends StatelessWidget {
  const NarrowCreateSprintBottomBar({required this.model, super.key});

  final SprintAuthorModel model;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SprintAuthorBloc>();
    return SafeArea(
      child: Container(
        height: 60.h,
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: context.c_grey_stoke)),
        ),
        child: DlsPadding.symmetric(
          horizontal: 16.w,
          child: Row(
            children: [
              if (model.sprint?.startAt != null &&
                  model.sprint?.expiredAt != null)
                SprintDatePeriodView(
                  start: model.sprint!.startAt!,
                  end: model.sprint!.expiredAt!,
                ),
              const Spacer(),
              SprintStatusButton(
                status: model.status,
                onChanged: (value) {
                  if (value == null) {
                    return;
                  }
                  bloc.add(
                    SprintAuthorEvent.updateModel(
                      model.copyWith(status: value),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
