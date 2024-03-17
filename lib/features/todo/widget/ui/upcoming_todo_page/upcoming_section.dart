import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/todo/bloc/upcoming_todo_bloc.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/add_todo_item.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/todo_item.dart';
import 'package:dls_one/features/todo/widget/ui/upcoming_todo_page/todo_page_splitter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_size/flutter_keyboard_size.dart';
import 'package:intl/intl.dart';

class UpcomingSection extends StatelessWidget {
  const UpcomingSection({
    required this.section,
    required this.showAddTodo,
    super.key,
  });

  final TodoSection section;
  final bool showAddTodo;

  @override
  Widget build(BuildContext context) {
    final models = section.models;

    final dateSection = section.safeCast<DateTodoSection>();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 20.h),
      child: Column(
        children: [
          UpcomingSectionTitle(section: section),
          if (showAddTodo && dateSection != null) ...[
            SizedBox(height: 16.h),
            AddTodoItem(
              initialDate: dateSection.date,
              onSave: (model) async {
                final bloc = context.read<UpcomingTodoBloc>()
                  ..add(UpcomingTodoEvent.create(model: model));

                await bloc.stream.where((event) => event.isComplete).first;
              },
            ),
          ],
          if (models.isNotEmpty) ...[
            SizedBox(height: 10.h),
            Column(
              children: List.generate(
                models.length,
                (index) => TodoItem(
                  model: models[index],
                  onUpdate: (model) {
                    context.read<UpcomingTodoBloc>().add(
                          UpcomingTodoEvent.update(model: model),
                        );
                  },
                  onDelete: () {
                    context.read<UpcomingTodoBloc>().add(
                          UpcomingTodoEvent.delete(model: models[index]),
                        );
                  },
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class UpcomingSectionTitle extends StatelessWidget {
  const UpcomingSectionTitle({
    required this.section,
    super.key,
  });

  final TodoSection section;

  @override
  Widget build(BuildContext context) {
    final models = section.models;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Align(
        alignment: Alignment.centerLeft,
        child: section.when(
          overdue: (_) => Text(
            S.current.overdue,
            style: context.ts_s14h16_4w500.copyWith(
              color: models.isEmpty ? context.c_text_grey : null,
            ),
          ),
          date: (_, date) {
            final formatter = DateFormat('d MMM • EEEE');
            var value = formatter.format(date);
            if (date.isToday) {
              value = '${S.current.today} • $value';
            } else if (date.isTomorrow) {
              value = '${S.current.tomorrow} • $value';
            }
            return Text(
              value,
              style: context.ts_s14h16_4w500.copyWith(
                color: models.isEmpty ? context.c_text_grey : null,
              ),
            );
          },
        ),
      ),
    );
  }
}

extension on DateTime {
  bool get isToday => DateTime.now().isSameDayWith(this);

  bool get isTomorrow =>
      DateTime.now().add(const Duration(days: 1)).isSameDayWith(this);
}
