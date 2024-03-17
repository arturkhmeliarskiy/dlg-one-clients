import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/chat/chat.dart';
import 'package:dls_one/web/tasks/bloc/hover_task_bloc/hover_task_bloc.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_build_add_button.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_build_additional_performers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';
import 'package:rest_api/src/models/tasks_models/dls_tasks_role.dart';
import 'package:rest_api/src/models/enums/dls_task_roles_type.dart';

class TaskPerformers extends StatefulWidget {
  const TaskPerformers({
    required this.id,
    required this.index,
    required this.onSelectGroup,
    this.performers,
    super.key,
    this.role,
  });

  final int id;
  final int index;
  final DlsTasksRole? role;

  final List<DlsTasksExecutors>? performers;
  final void Function(List<DLSUser>) onSelectGroup;

  @override
  State<TaskPerformers> createState() => _TaskPerformersState();
}

class _TaskPerformersState extends State<TaskPerformers> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    if ((widget.performers?.isEmpty ?? false) &&
        widget.role?.role != TaskRolesType.viewing) {
      return InkWell(
        onTap: () {},
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Container(
          width: 24.w,
          height: 24.h,
          alignment: Alignment.center,
          child: BlocBuilder<HoverTaskBloc, HoverTaskState>(
            builder: (context, state) {
              return state.maybeMap(
                preloadData: (initState) {
                  if (initState.idTask == widget.id) {
                    return DLSPlusIconButton(
                      tooltip: S.current.add_a_performer,
                      onTap: () {
                        groupSelectUsersDialog(
                          context,
                          SimpleGroup(
                            name: '',
                            users: List<DLSUser>.from(
                              widget.performers
                                      ?.map(
                                        (item) => DLSUser(
                                          dlsId: item.id,
                                          id: item.id.toString(),
                                          name: item.name,
                                        ),
                                      )
                                      .toList() ??
                                  [],
                            ),
                          ),
                          onSelectGroup: (value) {
                            widget.onSelectGroup(value.users);
                          },
                          title: S.current.performer,
                        );
                      },
                    );
                  } else {
                    return SizedBox(
                      width: 24.w,
                      height: 24.h,
                    );
                  }
                },
                orElse: () => SizedBox(
                  width: 24.w,
                  height: 24.h,
                ),
              );
            },
          ),
        ),
      );
    } else {
      final count = widget.performers!.length;

      return Row(
        children: [
          Stack(
            children: [
              /// аватарки исполнителей
              Stack(
                children: List.generate(count > 2 ? 2 : count, (index) {
                  final imageUrl = widget.performers?[index].avatar ?? '';
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: index * 16.w),
                      child: _DlsAvatarWrapper(
                        role: widget.role,
                        child: DLSAvatar(
                          size: 24,
                          username: widget.performers?[index].name ?? '',
                          imageUrl: imageUrl,
                        ),
                      ),
                    ),
                  );
                }),
              ),
              TaskBuildAdditionalPerformers(
                count: count,
              ),
              BlocBuilder<HoverTaskBloc, HoverTaskState>(
                builder: (context, state) {
                  return state.maybeMap(
                    preloadData: (initState) {
                      if (initState.idTask == widget.id &&
                          widget.role?.role != TaskRolesType.viewing) {
                        return TaskBuildAddButton(
                          count: count,
                          performers: widget.performers ?? [],
                          onSelectGroup: (value) {
                            widget.onSelectGroup(value);
                          },
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                    orElse: () => const SizedBox(),
                  );
                },
              )
              // количество исполнителей (если больше 2х)
            ],
          ),
        ],
      );
    }
  }
}

class _DlsAvatarWrapper extends StatelessWidget {
  const _DlsAvatarWrapper({
    required this.child,
    this.role,
    super.key,
  });
  final DlsTasksRole? role;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 24.r,
          height: 24.r,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: role?.name == S.current.viewing
                ? context.c_grey_hover
                : context.c_white_text,
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 23.r,
          height: 23.r,
          // TODO(nightwelf): Артур, тут необходимо применить к виджету все то,
          // что ты хочешь
          child: child,
        ),
      ],
    );
    return Container(child: child,);
  }
}
