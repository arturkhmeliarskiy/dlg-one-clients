import 'package:dls_one/core/bloc/pages_data.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/load_more_list_item.dart';
import 'package:dls_one/features/todo/bloc/termless_todo_bloc.dart';
import 'package:dls_one/features/todo/model/todo_model.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/todo_context_menu.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/todo_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class NarrowTermlessTodoLayout extends StatelessWidget {
  const NarrowTermlessTodoLayout({
    required this.pages,
    super.key,
  });

  final PagesData<TodoModel> pages;

  @override
  Widget build(BuildContext context) {
    final models = pages.data.toList();
    final hasMore = pages.hasMore;

    return Padding(
      padding: EdgeInsets.only(top: 9.h) +
          EdgeInsets.symmetric(vertical: 1.h, horizontal: 12.w),
      child: ListView.builder(
        itemBuilder: (context, index) {
          if (hasMore && index == models.length) {
            return LoadMoreListItem(
              loadMore: () {
                context
                    .read<TermlessTodoBloc>()
                    .add(const TermlessTodoEvent.loadNextPage());
              },
            );
          }

          return _TodoTile(model: models[index]);
        },
        itemCount: models.length + (hasMore ? 1 : 0),
      ),
    );
  }
}

class _TodoTile extends StatefulWidget {
  const _TodoTile({
    required this.model,
  });

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
        context.read<TermlessTodoBloc>().add(
              TermlessTodoEvent.update(model: model),
            );
      },
      onLongPress: () {
        TodoContextMenu.show(
          context,
          model: model,
          intialDate: DateTime.now(),
          saveModel: (model) async {
            final bloc = context.read<TermlessTodoBloc>()
              ..add(TermlessTodoEvent.update(model: model));

            final state =
                await bloc.stream.firstWhere((element) => element.isComplete);

            return state.maybeMap(
              orElse: () => false,
              successEditTodo: (_) => true,
            );
          },
          deleteModel: () {
            context
                .read<TermlessTodoBloc>()
                .add(TermlessTodoEvent.delete(model: model));
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
