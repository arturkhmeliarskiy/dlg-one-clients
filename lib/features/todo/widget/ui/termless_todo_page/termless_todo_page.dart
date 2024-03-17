import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/core/widgets/src/error/common_error.dart';
import 'package:dls_one/features/todo/bloc/termless_todo_bloc.dart';
import 'package:dls_one/features/todo/widget/ui/termless_todo_page/narrow_termless_todo_layout.dart';
import 'package:dls_one/features/todo/widget/ui/termless_todo_page/wide_termless_todo_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class TermlessTodoPage extends StatelessWidget {
  const TermlessTodoPage({
    super.key,
    this.isEditingMode = false,
    this.message = '',
  });

  final bool? isEditingMode;
  final String? message;

  @override
  Widget build(BuildContext context) {
    return DLSLoaderScope(
      child: BlocConsumer<TermlessTodoBloc, TermlessTodoState>(
        listenWhen: (previous, current) =>
            !previous.isLoading && current.isLoading,
        listener: (context, state) {
          DLSLoaderScope.showLoaderOf(
            context,
            future: context
                .read<TermlessTodoBloc>()
                .stream
                .firstWhere((state) => !state.isLoading),
          );
        },
        builder: (context, state) {
          final models = state.data;

          if (models == null) {
            return state.maybeMap(
              loading: (_) => const SizedBox(),
              orElse: () => const CommonError(),
            );
          } else {
            return DLSPageBuilder(
              wide: WideTermlessTodoLayout(
                pages: models,
              ),
              narrow: NarrowTermlessTodoLayout(
                pages: models,
              ),
            );
          }
        },
      ),
    );
  }
}
