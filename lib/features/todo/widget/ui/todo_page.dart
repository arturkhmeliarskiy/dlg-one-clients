import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/app/router/auto_router_observer_mixin.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/core/widgets/src/dls_app_bar.dart';
import 'package:dls_one/core/widgets/src/error/snackbar_error_shower.dart';
import 'package:dls_one/features/todo/bloc/termless_todo_bloc.dart';
import 'package:dls_one/features/todo/bloc/upcoming_todo_bloc.dart';
import 'package:dls_one/features/todo/data/termless_todo_repository.dart';
import 'package:dls_one/features/todo/data/upcoming_todo_repository.dart';
import 'package:dls_one/features/todo/model/todo_model.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/edit/edit_todo_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage()
class TodoPage extends StatelessWidget implements AutoRouteWrapper {
  const TodoPage({
    super.key,
  });

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) {
              final api = context.read<DlsRestApi>();
              final todoApi = api.todoApi;

              final repository = TermlessTodoRepository(
                todoApi: todoApi,
                dateProvider: DateTime.now,
              );

              return TermlessTodoBloc(todoRepository: repository)
                ..add(const TermlessTodoEvent.loadNextPage());
            },
          ),
          BlocProvider(
            create: (context) {
              final api = context.read<DlsRestApi>();
              final todoApi = api.todoApi;

              final repository = UpcomingTodoRepository(
                todoApi: todoApi,
                dateProvider: DateTime.now,
              );

              return UpcomingTodoBloc(todoRepository: repository)
                ..add(
                  UpcomingTodoEvent.loadByDate(
                    date: DateTime.now().add(const Duration(days: 20)),
                  ),
                );
            },
          ),
        ],
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      lazyLoad: false,
      routes: [
        TermlessTodoRoute(),
        const UpcomingTodoRoute(),
      ],
      builder: (context, child) => _TodoLayout(content: child),
    );
  }
}

class _TodoLayout extends StatefulWidget {
  const _TodoLayout({
    required this.content,
  });

  final Widget content;

  @override
  State<_TodoLayout> createState() => _TodoLayoutState();
}

class _TodoLayoutState extends State<_TodoLayout>
    with
        SingleTickerProviderStateMixin,
        AutoRouterObserverMixin,
        SnackbarErrorShowerWixin {
  final Duration _slideDuration = kTabScrollDuration;

  late final tabController = TabController(
    length: _tabLabels.length,
    initialIndex: _makeIndex(router.current.name),
    animationDuration: _slideDuration,
    vsync: this,
  );

  @override
  // ignore: overridden_fields
  final scaffoldKey = GlobalKey<ScaffoldMessengerState>();

  final _tabLabels = [
    S.current.termless,
    S.current.upcoming,
  ];

  int _makeIndex(String routeName) {
    switch (routeName) {
      case TermlessTodoRoute.name:
        return 0;

      case UpcomingTodoRoute.name:
      default:
        return 1;
    }
  }

  @override
  // ignore: overridden_fields
  late RoutingController router = () {
    final nearestRouter = context.router;

    return nearestRouter.innerRouterOf(TodoRoute.name) ?? nearestRouter;
  }();

  @override
  void updateRouteName({required String routeName}) {
    tabController.index = _makeIndex(routeName);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final upcomingBloc = context.read<UpcomingTodoBloc>();

    final showCompleted = context
            .read<TermlessTodoBloc>()
            .state
            .showCompleted &&
        (context.read<UpcomingTodoBloc>().state.data?.showCompleted ?? true);

    return ScaffoldMessenger(
      key: scaffoldKey,
      child: BlocListener<TermlessTodoBloc, TermlessTodoState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            error: (_) {
              showError(context);
            },
            successEditTodo: (_) {
              context
                  .read<UpcomingTodoBloc>()
                  .add(const UpcomingTodoEvent.reload());
            },
          );
        },
        child: BlocListener<UpcomingTodoBloc, UpcomingTodoState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              error: (_) {
                showError(context);
              },
              successEditTodo: (_) {
                context
                    .read<TermlessTodoBloc>()
                    .add(const TermlessTodoEvent.reload());
              },
            );
          },
          child: _OverlayBuilder(
            child: Scaffold(
              appBar: DLSAppBar(
                automaticallyImplyLeading: false,
                title: Row(
                  children: [
                    Text(S.current.todo),
                    const DLSPageBuilder(
                      wide: SizedBox(width: 20),
                      narrow: Spacer(),
                    ),
                    // TODO: Имеющийся DlsTitleSwitch нужно сделать "адаптивным" и
                    // зависимым от темы.
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        DlsSwitch(
                          initialState: !showCompleted,
                          onTap: (value) {
                            context.read<TermlessTodoBloc>().add(
                                  TermlessTodoEvent.updateFilter(
                                    showCompleted: !value,
                                  ),
                                );
                            context.read<UpcomingTodoBloc>().add(
                                  UpcomingTodoEvent.updateFilter(
                                    showCompleted: !value,
                                  ),
                                );
                          },
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          S.current.hideFinished,
                          style: context.ts_s14h22_4w400,
                        ),
                      ],
                    ),
                  ],
                ),
                automaticallyImplyClose: DLSLayoutItemBuilder.values(
                  wide: true,
                  narrow: false,
                ).call(),
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: DLSLayoutItemBuilder<EdgeInsets>.values(
                      narrow: EdgeInsets.zero,
                      wide: EdgeInsets.symmetric(horizontal: 20.w) +
                          EdgeInsets.only(top: 20.h),
                    ).call(),
                    child: DlsTabBar(
                      controller: tabController,
                      onTap: (value) {
                        switch (value) {
                          case 0:
                            context.router.navigate(TermlessTodoRoute());
                            break;
                          case 1:
                            context.router.navigate(const UpcomingTodoRoute());
                            break;
                        }
                      },
                      labels: _tabLabels,
                    ),
                  ),
                  Expanded(
                    child: ClipRect(
                      child: AnimatedSwitcher(
                        duration: _slideDuration,
                        transitionBuilder: (child, animation) {
                          // Ниже будет немного магии, но так гарантированно работает
                          // красиво анимация и только когда она нужна.
                          return SlideTransition(
                            position: Tween<Offset>(
                              begin: animation.value.ceil() == 0
                                  ? const Offset(1, 0)
                                  : const Offset(-1, 0),
                              end: Offset.zero,
                            ).animate(
                              tabController.indexIsChanging
                                  ? animation
                                  : kAlwaysCompleteAnimation,
                            ),
                            textDirection: tabController.index == 0
                                ? TextDirection.rtl
                                : TextDirection.ltr,
                            child: child,
                          );
                        },
                        child: Builder(
                          // TODO: понять, почему сбрасывается стейт UI, хотя ключи те же используются
                          // key: ValueKey(router.current.name),
                          builder: (_) => widget.content,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              floatingActionButton: DLSLayoutItemBuilder<Widget?>.values(
                narrow: FloatingActionButton(
                  onPressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(8.r),
                        ),
                      ),
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.of(context).viewInsets +
                              EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 12.h,
                              ),
                          child: SafeArea(
                            child: EditTodoCard(
                              initialModel: const TodoModel(
                                id: 0,
                                status: TodoStatus.processing,
                                title: '',
                              ),
                              initialDate: DateTime.now(),
                              onSave: (value) async {
                                final navigator = Navigator.of(context);
                                upcomingBloc.add(
                                  UpcomingTodoEvent.create(model: value),
                                );
                                final state =
                                    await upcomingBloc.stream.firstWhere(
                                  (element) => element.isComplete,
                                );

                                final isSaved = state.maybeMap(
                                  orElse: () => false,
                                  successEditTodo: (_) => true,
                                );

                                if (isSaved) {
                                  navigator.pop();
                                }
                              },
                              onCancel: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: const Icon(Icons.add),
                ),
                wide: null,
              ).call(),
            ),
          ),
        ),
      ),
    );
  }
}

class _OverlayBuilder extends StatelessWidget {
  const _OverlayBuilder({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.c_shadow.withOpacity(0.4),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final minWidth = min(400.w, constraints.maxWidth);
          final initialFraction = minWidth / constraints.maxWidth;
          final maxSize = max(minWidth, constraints.maxWidth / 2);

          return SplitView(
            axis: Axis.horizontal,
            initialFractions: [initialFraction, 1 - initialFraction],
            defaultSplitter: DlsVerticalBackgroundSplitter(),
            minSizes: [minWidth, constraints.maxWidth - maxSize],
            children: [
              child,
              GestureDetector(
                onTap: context.router.pop,
                behavior: HitTestBehavior.opaque,
                child: const SizedBox.expand(),
              ),
            ],
          );
        },
      ),
    );
  }
}
