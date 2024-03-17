import 'package:collection/collection.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/load_more_list_item.dart';
import 'package:dls_one/features/todo/bloc/upcoming_todo_bloc.dart';
import 'package:dls_one/features/todo/model/todo_model.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/todo_context_menu.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/todo_tile.dart';
import 'package:dls_one/features/todo/widget/ui/upcoming_todo_page/todo_page_splitter.dart';
import 'package:dls_one/features/todo/widget/ui/upcoming_todo_page/upcoming_section.dart';
import 'package:dls_one/features/todo/widget/ui/upcoming_todo_page/upcoming_todo_page.dart';
import 'package:dls_one/features/todo/widget/ui/week_calendart.dart/week_calendar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class NarrowUpcomingTodoLayout extends StatefulWidget {
  const NarrowUpcomingTodoLayout({
    required this.startDate,
    required this.sections,
    super.key,
  });

  final List<TodoSection> sections;
  final ValueGetter<DateTime> startDate;

  @override
  State<NarrowUpcomingTodoLayout> createState() =>
      _NarrowUpcomingTodoLayoutState();
}

class _NarrowUpcomingTodoLayoutState extends State<NarrowUpcomingTodoLayout> {
  final scrollController = ItemScrollController();

  ValueListenable<int>? _selectedSectionNotifier;

  List<TodoSection> get _sections => widget.sections;

  void _listener() {
    final value = _selectedSectionNotifier?.value;
    if (value == null) {
      return;
    }
    scrollController.jumpTo(index: value);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final newNotifier = SelectedSectionNotifier.of(context);
    if (newNotifier != _selectedSectionNotifier) {
      _selectedSectionNotifier?.removeListener(_listener);
      _selectedSectionNotifier = newNotifier;
      _selectedSectionNotifier?.addListener(_listener);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 13.h),
        WeekCalendar(
          controller: SelectedDateNotifier.of(context),
          startDate: widget.startDate(),
          hasEvents: (date) =>
              _sections.firstWhereOrNull(
                (element) => element.when(
                  overdue: (_) => false,
                  date: (models, data) =>
                      data.isSameDayWith(date) && models.isNotEmpty,
                ),
              ) !=
              null,
        ),
        Expanded(
          child: ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: ScrollablePositionedList.builder(
              itemScrollController: scrollController,
              itemCount: _sections.length + 1,
              itemBuilder: (context, index) {
                if (index == _sections.length) {
                  return LoadMoreListItem(
                    loadMore: () {
                      final date = _sections.last
                          .safeCast<DateTodoSection>()
                          ?.date
                          .add(const Duration(days: 30));
                      if (date == null) {
                        return;
                      }
                      context
                          .read<UpcomingTodoBloc>()
                          .add(UpcomingTodoEvent.loadByDate(date: date));
                    },
                  );
                }

                final section = _sections[index];

                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ColoredBox(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 12.h,
                          ),
                          child: UpcomingSectionTitle(section: section),
                        ),
                      ),
                      ...section.models.map(_TodoTile.new)
                    ],
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

class _TodoTile extends StatefulWidget {
  const _TodoTile(this.model);

  final TodoModel model;

  @override
  State<_TodoTile> createState() => _TodoTileState();
}

class _TodoTileState extends State<_TodoTile> {
  late TodoModel model = widget.model;

  @override
  void didUpdateWidget(_TodoTile oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.model != widget.model) {
      model = widget.model;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          model = model.copyWith(
            status: model.status == TodoStatus.processing
                ? TodoStatus.completed
                : TodoStatus.processing,
          );
        });
        context.read<UpcomingTodoBloc>().add(
              UpcomingTodoEvent.update(model: model),
            );
      },
      onLongPress: () {
        TodoContextMenu.show(
          context,
          model: model,
          intialDate: DateTime.now(),
          saveModel: (model) async {
            final bloc = context.read<UpcomingTodoBloc>()
              ..add(UpcomingTodoEvent.update(model: model));

            final state =
                await bloc.stream.firstWhere((element) => element.isComplete);

            return state.maybeMap(
              orElse: () => false,
              successEditTodo: (_) => true,
            );
          },
          deleteModel: () {
            context
                .read<UpcomingTodoBloc>()
                .add(UpcomingTodoEvent.delete(model: model));
          },
        );
      },
      child: Padding(
        padding: EdgeInsets.all(4.r),
        child: TodoTile(
          model: model,
        ),
      ),
    );
  }
}
