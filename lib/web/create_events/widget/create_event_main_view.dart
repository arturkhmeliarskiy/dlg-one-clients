import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/chat/chat.dart';
import 'package:dls_one/web/create_events/create_events.dart';
import 'package:dls_one/web/create_events/widget/connection_task_view.dart';
import 'package:dls_one/web/create_events/widget/day_schedule_filter_button.dart';
import 'package:dls_one/web/pick_task/pick_task.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/main_column/file.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/main_column/file_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class CreateEventMainView extends StatefulWidget {
  const CreateEventMainView({required this.model, super.key});

  final CreateEventsModel model;

  @override
  State<CreateEventMainView> createState() => _CreateEventMainViewState();
}

class _CreateEventMainViewState extends State<CreateEventMainView> {
  late final _nameController = TextEditingController();
  late final _descriptionController = TextEditingController();
  late final _placeController = TextEditingController();

  @override
  void didUpdateWidget(covariant CreateEventMainView oldWidget) {
    super.didUpdateWidget(oldWidget);
    _nameController.updateIfNotEqual(widget.model.name);
    _descriptionController.updateIfNotEqual(widget.model.description);
    _placeController.updateIfNotEqual(widget.model.place ?? '');
  }

  void _onAddMembers(BuildContext context) {
    groupSelectUsersDialog(
      context,
      SimpleGroup(
        name: '',
        users: widget.model.members,
      ),
      onSelectGroup: (value) => context
          .read<CreateEventsBloc>()
          .add(CreateEventsEvent.setMembers(value.users)),
      title: S.current.members,
    );
  }

  Future<void> _showConnectionsDialog(BuildContext context) async {
    final bloc = context.read<CreateEventsBloc>();
    final result =
        await context.router.push<DlsTasks>(const PickTaskDialogRoute());
    if (result == null) {
      return;
    }
    bloc.add(CreateEventsEvent.setTask(result));
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CreateEventsBloc>();
    return ListView(
      children: [
        SizedBox(height: 16.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: SizedBox(
            height: 28.h,
            child: WebDlsHintField(
              hintText: S.current.enterNameEvent,
              validation: widget.model.name.isEmpty,
              controller: _nameController,
              onChanged: (name) => bloc.add(CreateEventsEvent.setTitle(name)),
            ),
          ),
        ),

        SizedBox(height: 12.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: SizedBox(
            height: 28.h,
            child: WebDlsHintField(
              style: context.ts_s14h22_4w400,
              hintText: S.current.enderDescriptionEvent,
              hintStyle: context.ts_s14h22_4w400.copyWith(
                color: context.c_placeholder,
              ),
              controller: _descriptionController,
              onChanged: (description) => bloc.add(
                CreateEventsEvent.setDescription(description),
              ),
            ),
          ),
        ),
        SizedBox(height: 16.h),

        DlsPadding.symmetric(
          horizontal: 20.w,
          child: SizedBox(
            height: 28.h,
            child: WebDlsLabelField(
              icon: Assets.icons.location.path,
              label: S.current.eventLocation,
              actions: [
                DlsCircleAddButton(
                  icon: widget.model.place == null
                      ? null
                      : Assets.icons.close.svg(colorFilter: context.c_text_grey_color_filter),
                  onTap: () {
                    if (widget.model.place == null) {
                      bloc.add(const CreateEventsEvent.setLocation(''));
                      return;
                    }
                    bloc.add(const CreateEventsEvent.setLocation(null));
                  },
                )
              ],
            ),
          ),
        ),
        if (widget.model.place != null) ...[
          SizedBox(height: 12.h),
          DlsPadding.only(
            left: 44.w,
            right: 20.w,
            child: DLSInput(
              height: 32.h,
              controller: _placeController,
              onChanged: (text) =>
                  bloc.add(CreateEventsEvent.setLocation(text)),
            ),
          ),
        ],
        SizedBox(height: 16.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: SizedBox(
            height: 28.h,
            child: WebDlsLabelField(
              icon: Assets.icons.chain.path,
              label: S.current.eventConnection,
              actions: [
                DlsCircleAddButton(
                  onTap: () {
                    _showConnectionsDialog(context);
                  },
                )
              ],
            ),
          ),
        ),
        if (widget.model.task != null)
          DlsPadding.only(
            left: 20.w,
            right: 20.w,
            top: 10.h,
            child: ConnectionTaskView(task: widget.model.task!),
          ),

        DlsPadding.only(
          top: 16.h,
          left: 8.w,
          right: 8.w,
          child: FileButton(
            draggingFiles: (file, fileName) {
              bloc.add(
                CreateEventsEvent.addFile(
                  false,
                  name: fileName,
                  file: file,
                ),
              );
            },
            onTapFile: () {
              bloc.add(const CreateEventsEvent.addFile(false));
            },
            onTapFileDoc: () {
              bloc.add(const CreateEventsEvent.addFile(true));
            },
          ),
        ),
        // TODO copied from MainColumnNewSprint
        Builder(
          builder: (context) {
            final files = widget.model.files;
            if (files.isEmpty) {
              return const SizedBox();
            }
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 6,
              ),
              itemCount: files.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return FileWidget(
                  title: files[index].originalName ?? '',
                  size: (files[index].size ?? 0).toString(),
                  type: files[index].extension ?? '',
                  onTap: () {},
                  deleteFile: () =>
                      bloc.add(CreateEventsEvent.deleteFile(index)),
                );
              },
            );
          },
        ),
        SizedBox(height: 20.h),
        const Divider(),
        SizedBox(height: 8.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: SizedBox(
            height: 28,
            child: WebDlsLabelField(
              icon: Assets.icons.user.path,
              label: S.current.organizer,
            ),
          ),
        ),
        SizedBox(height: 4.h),
        if (widget.model.organizer != null)
          DlsPadding.symmetric(
            horizontal: 20.w,
            child: DlsUserSmallItem(
              user: widget.model.organizer!,
              isMe: widget.model.organizer?.id == widget.model.currentUser?.id,
            ),
          ),
        SizedBox(height: 16.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: SizedBox(
            height: 28,
            child: WebDlsLabelField(
              icon: Assets.icons.calender.path,
              label: S.current.participantsBusy,
              actions: [
                DayScheduleFilterButton(
                  type: widget.model.scheduleViewType,
                  onTypeChanged: (type) {
                    if (type == null) {
                      return;
                    }
                    bloc.add(CreateEventsEvent.setScheduleViewType(type));
                  },
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 12.h),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final date = DateTime.now().byDay().add(Duration(days: index));
            return DlsPadding.only(
              left: 44,
              right: 20,
              child: DlsDayTimeView(
                date: date,
                showHours: index == 0,
                items: [
                  DayScheduleModel(
                    start: const TimeOfDay(hour: 9, minute: 30),
                    end: const TimeOfDay(hour: 11, minute: 0),
                    color: context.c_blue_disabled,
                  ),
                ],
                mainItems: [
                  DayScheduleModel(
                    start: widget.model.start,
                    end: widget.model.end,
                    color: context.c_red.withOpacity(0.4),
                    borderColor: context.c_red,
                  ),
                  DayScheduleModel(
                    start: widget.model.moveStart ?? widget.model.start,
                    end: widget.model.moveEnd ?? widget.model.end,
                    color: widget.model.moveStart == null
                        ? Colors.transparent
                        : context.c_text.withOpacity(0.1),
                    borderColor: Colors.transparent,
                    onMove: (time) {
                      final end = widget.model.moveEnd ?? widget.model.end;
                      final start =
                          widget.model.moveStart ?? widget.model.start;
                      final difference =
                          end.toDateTime().difference(start.toDateTime());
                      final endTime =
                          time.toDateTime().add(difference).timeOfDay();
                      bloc
                        ..add(CreateEventsEvent.setStart(time))
                        ..add(CreateEventsEvent.setEnd(endTime));
                    },
                    onStartChanged: (time) {
                      if (time
                                  .toDateTime()
                                  .compareTo(widget.model.end.toDateTime()) >
                              -1 &&
                          widget.model.end.hour + widget.model.end.minute !=
                              0) {
                        return;
                      }
                      bloc.add(
                        CreateEventsEvent.updateModel(
                          widget.model.copyWith(moveStart: time),
                        ),
                      );
                    },
                    onEndChanged: (time) {
                      if (time
                              .toDateTime()
                              .compareTo(widget.model.start.toDateTime()) <
                          1) {
                        return;
                      }
                      bloc.add(
                        CreateEventsEvent.updateModel(
                          widget.model.copyWith(
                            moveStart: widget.model.start,
                            moveEnd: time,
                          ),
                        ),
                      );
                    },
                    onMoveEnd: () {
                      final start =
                          widget.model.moveStart ?? widget.model.start;
                      final end = widget.model.moveEnd ?? widget.model.end;
                      bloc
                        ..add(
                          CreateEventsEvent.updateModel(
                            widget.model.copyWith(
                              moveStart: null,
                              moveEnd: null,
                            ),
                          ),
                        )
                        ..add(CreateEventsEvent.setStart(start))
                        ..add(CreateEventsEvent.setEnd(end));
                    },
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (_, __) => SizedBox(height: 12.h),
          itemCount:
              widget.model.scheduleViewType == ScheduleViewType.today ? 1 : 7,
        ),
        SizedBox(height: 16.h),

        DlsPadding.symmetric(
          horizontal: 20.w,
          child: SizedBox(
            height: 28.h,
            child: WebDlsLabelField(
              icon: Assets.icons.usersAlt1.path,
              label: S.current.members,
              actions: [
                DlsCircleAddButton(onTap: () => _onAddMembers(context)),
              ],
            ),
          ),
        ),

        SizedBox(height: 16.h),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            final user = widget.model.members[index];
            return DlsPadding.symmetric(
              horizontal: 20.w,
              child: InkWell(
                onTap: () {
                  final members = widget.model.members.toList()
                    ..removeAt(index);
                  bloc.add(CreateEventsEvent.setMembers(members));
                },
                child: DlsUserSmallItem(
                  user: user,
                  isMe: widget.model.currentUser != null &&
                      user.id == widget.model.currentUser?.id,
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 4.h);
          },
          itemCount: widget.model.members.length,
        ),
        SizedBox(height: 40.h),
      ],
    );
  }
}
