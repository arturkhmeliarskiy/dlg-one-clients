import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/dls_duration.dart';
import 'package:dls_one/utils/src/formatters.dart';
import 'package:dls_one/web/create_task/create_task.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class AppBarTaskCompeted extends StatelessWidget {
  const AppBarTaskCompeted({
    required this.task,
    required this.state,
    super.key,
  });

  final DlsTasks task;
  final TaskState state;

  Future<void> _call({
    required bool audioMuted,
    required bool videoMuted,
    required BuildContext context,
    required String matrixRoomId,
  }) async {
    final sipBloc = context.read<SipBloc>();
    await sipBloc.state.maybeMap(
      idle: (value) async {
        sipBloc.add(SipEvent.doCall(matrixRoomId, videoMuted));
        await context.pushRoute(
          const CallRoute(),
        );
      },
      orElse: () async {
        await showDLSDialog2(
          context,
          null,
          S.current.nowYouInCall,
          onlyYesButton: true,
          yesButtonLabel: S.current.ok,
          width: 200.w,
        );
      },
    );
  }

  Future<void> _hangup(BuildContext context) async {
    context.read<SipBloc>().add(const SipEvent.forceHangUp());
  }

  Widget _buildCallButton(
    BuildContext context,
    String matrixRoomId,
  ) {
    return WebButtonIconWithTooltip(
      icon: Assets.icons.phone1.path,
      cornerRadius: 5.r,
      onTap: () => _call(
          context: context,
          audioMuted: false,
          videoMuted: false,
          matrixRoomId: matrixRoomId),
      iconColor: context.c_text_grey,
      tooltip: S.current.call,
    );
  }

  Widget _buildHangupButton(BuildContext context) {
    return WebButtonIconWithTooltip(
      icon: Assets.icons.phoneTimes1.path,
      cornerRadius: 5.r,
      onTap: () => _hangup(context),
      iconColor: context.c_text_grey,
      tooltip: S.current.hangup,
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TaskBloc>();
    return Container(
      height: 56.h,
      color: context.c_grey_grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: 20.w),
              StatusButton(
                status: state.model.status,
                onTapStatus: (value) {
                  final model = state.model.copyWith(status: value);
                  bloc
                    ..add(TaskEvent.updateModel(model))
                    ..add(TaskEvent.updateTask(DlsTask(status: value)));
                },
              ),
              SizedBox(width: 16.w),
              SizedBox(
                width: 40.w,
                child: PriorityButton(
                  isBackgroundColor: true,
                  isFullButton: false,
                  priority: state.model.priority,
                  onTapPriority: (value) {
                    bloc
                      ..add(
                        TaskEvent.updateModel(
                          state.model.copyWith(priority: value),
                        ),
                      )
                      ..add(TaskEvent.updateTask(DlsTask(priority: value)));
                  },
                ),
              ),
              SizedBox(width: 16.w),
              Container(
                decoration: BoxDecoration(
                  color: context.c_grey_stoke,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                height: 32.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.h),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 4.w),
                        child: Assets.icons.deadline.svg(
                          height: 18.h,
                          width: 18.w,
                          colorFilter: ColorFilter.mode(
                            context.c_text_grey,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                      DLSBody.s1421(
                        formatDateMonth(state.model.expiredAt ?? DateTime(0)),
                        color: context.c_text,
                        maxLines: 1,
                        overflow: true,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 16.w,
              ),
              DlsDuration(duration: state.model.daysCount ?? 0),
              Container(
                margin: EdgeInsets.only(left: 16.w),
                height: state.model.performers.isNotEmpty ? 56.h : 0,
                alignment: Alignment.center,
                child: Stack(
                  children:
                      List.generate(state.model.performers.length, (index) {
                    final item = state.model.performers[index];
                    return Container(
                      height: 24.h,
                      width: 24.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: context.c_grey_grey,
                          width: 2.w,
                        ),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      margin: EdgeInsets.only(left: index * 20.w),
                      child: DlsAvatar(
                        size: 24.w,
                        matrixUserId: (item.id ?? 0).toString(),
                        text: item.name ?? item.nameSurname,
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(
                width: 16.w,
              ),
              Text(
                S.current.created_at(
                  formatDateMonth(task.createdAt ?? DateTime(0)),
                  formatTimeHHmm(task.createdAt ?? DateTime(0)),
                ),
                style: context.ts_s14h22_4w400
                    .copyWith(color: context.c_placeholder),
              )
            ],
          ),
          Row(
            children: [
              if (task.matrixRoom != null)
                _buildCallButton(context, task.matrixRoom!),
              if (task.matrixRoom != null) _buildHangupButton(context),
              DlsDropDownButton<int>(
                items: List.generate(3, (i) => i),
                dropdownWidth: 260.w,
                onChanged: (i) {
                  if (i == null) {
                    return;
                  }
                  if (i < 2) {
                    return;
                  }
                  context.read<TaskBloc>().add(const TaskEvent.deleteTask());
                },
                itemBuilder: (i) {
                  final style = context.ts_s14h22_4w400.copyWith(
                    color: context.c_text,
                    height: 1.2,
                  );
                  if (i < 2) {
                    final list = [S.current.copy, S.current.setMeAsResponsible];
                    return Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Text(
                        list[i],
                        style: style,
                      ),
                    );
                  }
                  return SizedBox(
                    height: 32.h,
                    child: DlsPadding.symmetric(
                      horizontal: 8.w,
                      child: Row(
                        children: [
                          Assets.icons.trash
                              .svg(colorFilter: context.c_red_color_filter),
                          SizedBox(width: 4.w),
                          Text(
                            S.current.delete,
                            style: style,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                button: Assets.icons.ellipsisV2.svg(),
              ),
              const DlsCloseButton(),
            ],
          )
        ],
      ),
    );
  }
}
