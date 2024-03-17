import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_events/create_events.dart';
import 'package:dls_one/web/create_task/create_task.dart';
import 'package:dls_one/web/sprints/sprints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class NarrowCreateEventBottomItems extends StatefulWidget {
  const NarrowCreateEventBottomItems({required this.model, super.key});

  final CreateEventsModel model;

  @override
  State<NarrowCreateEventBottomItems> createState() =>
      _NarrowCreateEventBottomItemsState();
}

class _NarrowCreateEventBottomItemsState
    extends State<NarrowCreateEventBottomItems> {
  final _locationController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _locationController.text = widget.model.place ?? '';
  }

  @override
  void didUpdateWidget(NarrowCreateEventBottomItems oldWidget) {
    super.didUpdateWidget(oldWidget);
    _locationController.updateIfNotEqual(widget.model.place ?? '');
  }

  Future<void> _onAddMembers(BuildContext context) async {
    final bloc = context.read<CreateEventsBloc>();
    final users = await context.router.push<List<DLSUser>>(
      MobileSelectUsersRoute(
        title: S.current.members,
        users: widget.model.members,
      ),
    );
    if (users == null) {
      return;
    }
    bloc.add(CreateEventsEvent.setMembers(users));
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CreateEventsBloc>();
    return Column(
      children: [
        if (widget.model.place != null) ...[
          SizedBox(
            height: 16.h,
            child: WebDlsLabelField(
              icon: Assets.icons.location.path,
              label: S.current.eventLocation,
              actions: [
                DLSPlusIconButton(
                  backgroundColor: Colors.transparent,
                  borderColor: context.c_grey_stoke,
                  onTap: () {
                    bloc.add(const CreateEventsEvent.setLocation(null));
                  },
                  verticalPad: 0,
                  horizontalPad: 0,
                  icon: Assets.icons.close.svg(color: context.c_text_grey),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          DlsPadding.only(
            left: 16.w,
            child: DLSInput(
              height: 32.h,
              controller: _locationController,
              onChanged: (text) =>
                  bloc.add(CreateEventsEvent.setLocation(text)),
            ),
          ),
          SizedBox(height: 16.h),
        ],
        if (widget.model.task != null) ...[
          SizedBox(
            height: 16.h,
            child: WebDlsLabelField(
              icon: Assets.icons.chain.path,
              label: S.current.eventConnection,
              actions: [
                DLSPlusIconButton(
                  backgroundColor: Colors.transparent,
                  borderColor: context.c_grey_stoke,
                  onTap: () async {
                    final task = await context.router.push<DlsTasks>(
                      const PickTaskDialogRoute(),
                    );
                    if (task == null) {
                      return;
                    }
                    bloc.add(CreateEventsEvent.setTask(task));
                  },
                  verticalPad: 0,
                  horizontalPad: 0,
                  icon: Assets.icons.sync1.svg(color: context.c_text_grey),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          SubtaskMobileInfo(
            task: widget.model.task!,
            onDelete: () {},
            onTap: () async {
              final result = await context.router.push<DlsTasks>(
                NewTaskSprintRoute(
                  task: widget.model.task,
                  status: TaskStatusType.inTheQueue,
                  onTaskSaved: (task) {
                    bloc.add(CreateEventsEvent.setTask(task));
                  },
                ),
              );
              if (result == null) {
                return;
              }
              bloc.add(CreateEventsEvent.setTask(result));
            },
          ),
          SizedBox(height: 16.h),
        ],
        if (widget.model.files.isNotEmpty) ...[
          SizedBox(
            height: 24.h,
            child: Row(
              children: [
                Expanded(
                  child: WebDlsLabelField(
                    icon: Assets.icons.filePin.path,
                    label: S.current.files_title,
                    actions: [
                      DLSPlusIconButton(
                        backgroundColor: Colors.transparent,
                        borderColor: context.c_grey_stoke,
                        onTap: () =>
                            bloc.add(const CreateEventsEvent.addFile(false)),
                      ),
                    ],
                  ),
                ),
                if (widget.model.files.length > 2)
                  ShowHideButton(
                    // TODO config show files
                    show: true,
                    color: context.c_blue,
                    onTap: () {},
                  ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          ...List.generate(widget.model.files.length, (index) {
            final length = widget.model.files.length;
            final file = widget.model.files[index];
            return DlsPadding.only(
              bottom: index == length - 1 ? 0 : 8.h,
              child: FileWidget(
                title: file.name ?? '',
                size: (file.size ?? 0).toString(),
                type: file.extension ?? '',
                onTap: () {},
                deleteFile: () => bloc.add(CreateEventsEvent.deleteFile(index)),
              ),
            );
          }),
          SizedBox(height: 16.h),
        ],
        SizedBox(
          height: 16.h,
          child: WebDlsLabelField(
            icon: Assets.icons.user.path,
            label: S.current.organizer,
          ),
        ),
        if (widget.model.organizer != null)
          DlsPadding.only(
            top: 8.h,
            left: 20.w,
            right: 20.w,
            child: DlsUserSmallItem(
              user: widget.model.organizer!,
              isMe: widget.model.organizer?.id == widget.model.currentUser?.id,
            ),
          ),
        SizedBox(height: 16.h),
        SizedBox(
          height: 16.h,
          child: WebDlsLabelField(
            icon: Assets.icons.user.path,
            label: S.current.members,
            actions: [
              DlsCircleAddButton(onTap: () => _onAddMembers(context)),
            ],
          ),
        ),
        if (widget.model.members.isNotEmpty)
          DlsPadding.only(
            top: 8.h,
            child: Column(
              children: List.generate(
                widget.model.members.length,
                (index) {
                  final item = widget.model.members[index];
                  return DlsPadding.only(
                    bottom: index < widget.model.members.length - 1 ? 4.h : 0,
                    left: 20.w,
                    child: DlsUserSmallItem(
                      user: item,
                      isMe: item.id == widget.model.currentUser?.id,
                    ),
                  );
                },
              ),
            ),
          ),
      ],
    );
  }
}
