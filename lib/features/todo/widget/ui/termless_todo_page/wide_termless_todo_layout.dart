import 'package:dls_one/core/bloc/pages_data.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/load_more_list_item.dart';
import 'package:dls_one/features/todo/bloc/termless_todo_bloc.dart';
import 'package:dls_one/features/todo/model/todo_model.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/add_todo_item.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/todo_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WideTermlessTodoLayout extends StatelessWidget {
  const WideTermlessTodoLayout({
    required this.pages,
    this.isEditingMode = false,
    this.message = '',
    super.key,
  });

  final PagesData<TodoModel> pages;
  final bool? isEditingMode;
  final String? message;

  @override
  Widget build(BuildContext context) {
    final models = pages.data.toList();
    final hasMore = pages.hasMore;

    return Padding(
      padding: EdgeInsets.only(top: 9.h) +
          EdgeInsets.symmetric(vertical: 1.h, horizontal: 12.w),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(bottom: 11.h),
              child: AddTodoItem(
                isEditingMode: isEditingMode,
                message: message,
                key: ValueKey(models.length),
                onSave: (model) async {
                  final bloc = context.read<TermlessTodoBloc>()
                    ..add(TermlessTodoEvent.create(model: model));

                  await bloc.stream.where((event) => event.isComplete).first;
                },
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (hasMore && index == models.length) {
                  return LoadMoreListItem(
                    loadMore: () {
                      context
                          .read<TermlessTodoBloc>()
                          .add(const TermlessTodoEvent.loadNextPage());
                    },
                  );
                }
                final model = models[index];
                return TodoItem(
                  key: ValueKey(model.id),
                  model: model,
                  onUpdate: (updatedModel) {
                    context.read<TermlessTodoBloc>().add(
                          TermlessTodoEvent.update(model: updatedModel),
                        );
                  },
                  onDelete: () {
                    context.read<TermlessTodoBloc>().add(
                          TermlessTodoEvent.delete(model: model),
                        );
                  },
                );
              },
              childCount: models.length + (hasMore ? 1 : 0),
            ),
          ),
        ],
      ),
    );
  }
}
