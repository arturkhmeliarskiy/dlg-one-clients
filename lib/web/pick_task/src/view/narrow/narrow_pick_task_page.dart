import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/core/widgets/src/dls_app_bar.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/tasks/tasks.dart';
import 'package:dls_one/web/tasks/view/mobile/task_list/mobile_task_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NarrowPickTaskPage extends StatefulWidget {
  const NarrowPickTaskPage({super.key});

  @override
  State<NarrowPickTaskPage> createState() => _NarrowPickTaskPageState();

  static RouteTransitionsBuilder mobileTransition() => (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) {
        const begin = Offset(0, 1);
        const end = Offset.zero;
        final tween = Tween(begin: begin, end: end);
        final offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      };
}

class _NarrowPickTaskPageState extends State<NarrowPickTaskPage>
    with NotificationsMixin {
  static const double _minChildSize = 0.3;
  final _controller = DraggableScrollableController();
  final _searchController = TextEditingController();
  final _searchDebounce = DlsDebounce(const Duration(milliseconds: 500));
  late var _poped = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onScrollListen);
    context.read<TaskListBloc>().add(
          const TaskListEvent.hierchyChange(
            TasksListHierarchy.entireHierarchy,
          ),
        );
  }

  @override
  void dispose() {
    _controller.removeListener(_onScrollListen);
    super.dispose();
  }

  void _onScrollListen() {
    final size = _controller.size;
    if (size < _minChildSize) {
      if (_poped) {
        return;
      }
      _poped = true;
      context.router.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TaskListBloc>();
    return Stack(
      children: [
        ColoredBox(
          color: context.c_text.withOpacity(0.5),
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: context.router.pop,
            child: const SizedBox.expand(),
          ),
        ),
        DraggableScrollableSheet(
          controller: _controller,
          minChildSize: _minChildSize - 0.01,
          initialChildSize: 0.6,
          builder: (context, controller) {
            return Material(
              color: context.c_white_text,
              borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: [
                  // TODO иначе выходит ошибка, так как в [DLSAppBar] стоит Expanded
                  SizedBox(
                    height: DLSAppBar.defaultToolbarHeight,
                    child: DLSAppBar(title: Text(S.current.subtasks)),
                  ),
                  DlsPadding.symmetric(
                    vertical: 12.h,
                    horizontal: 16.w,
                    child: Row(
                      children: [
                        Expanded(
                          child: DlsInputSearch(
                            controller: _searchController,
                            height: 32.h,
                            onChange: (value) {
                              _searchDebounce(() {
                                bloc.add(TaskListEvent.searchTask(value));
                              });
                            },
                          ),
                        ),
                        SizedBox(width: 6.w),
                        GestureDetector(
                          onTap: () {
                            context.router.push(
                              MobileTaskFiltersRoute(selectedTabBar: 0),
                            );
                          },
                          child: Assets.icons.angleDown5.svg(
                            color: context.c_text_grey,
                            height: 18.h,
                            width: 18.w,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: DLSLoaderScope(
                      child: BlocConsumer<TaskListBloc, TaskListState>(
                        listener: (context, state) {
                          state.whenOrNull(
                            loading: (_) {
                              DLSLoaderScope.showLoaderOf(
                                context,
                                future: bloc.stream
                                    .firstWhere((element) => !element.loading),
                              );
                            },
                          );
                        },
                        builder: (context, state) {
                          final tasks = state.model.tasks;
                          return ListView.builder(
                            controller: controller,
                            itemBuilder: (context, index) {
                              return MobileTaskListItem(
                                task: tasks[index],
                                onTap: () {
                                  context.router.pop(tasks[index]);
                                },
                              );
                            },
                            itemCount: tasks.length,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
