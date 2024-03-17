import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/load_more_list_item.dart';
import 'package:dls_one/features/todo/bloc/upcoming_todo_bloc.dart';
import 'package:dls_one/features/todo/widget/ui/upcoming_todo_page/todo_page_splitter.dart';
import 'package:dls_one/features/todo/widget/ui/upcoming_todo_page/upcoming_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class UpcomingSectionsList extends StatefulWidget {
  const UpcomingSectionsList({
    required this.sections,
    required this.selectedSection,
    super.key,
  });

  final List<TodoSection> sections;
  final int selectedSection;

  @override
  State<UpcomingSectionsList> createState() => _UpcomingSectionsListState();
}

class _UpcomingSectionsListState extends State<UpcomingSectionsList> {
  final scrollController = ItemScrollController();

  void _changeSelectedSection() {
    scrollController.jumpTo(index: widget.selectedSection);
  }

  @override
  void initState() {
    super.initState();

    if (widget.selectedSection != 0) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        _changeSelectedSection();
      });
    }
  }

  @override
  void didUpdateWidget(UpcomingSectionsList oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.selectedSection != oldWidget.selectedSection) {
      _changeSelectedSection();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: ScrollablePositionedList.builder(
        itemCount: widget.sections.length + 1,
        itemScrollController: scrollController,
        itemBuilder: (context, index) {
          if (index == widget.sections.length) {
            return LoadMoreListItem(
              loadMore: () {
                final date = widget.sections.last
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

          final section = widget.sections[index];
          Widget result = UpcomingSection(
            key: ValueKey(
              section.when(
                overdue: (_) => section.runtimeType,
                date: (_, date) => date,
              ),
            ),
            showAddTodo: true,
            section: section,
          );

          if (index != 0) {
            result = Column(
              children: [
                const Divider(),
                result,
              ],
            );
          }

          return result;
        },
      ),
    );
  }
}
