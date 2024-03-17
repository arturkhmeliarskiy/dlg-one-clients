import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/core/widgets/src/error/common_error.dart';
import 'package:dls_one/features/todo/bloc/upcoming_todo_bloc.dart';
import 'package:dls_one/features/todo/model/todo_time_config.dart';
import 'package:dls_one/features/todo/widget/ui/upcoming_todo_page/todo_page_splitter.dart';
import 'package:dls_one/features/todo/widget/ui/upcoming_todo_page/narrow_upcoming_todo_layout.dart';
import 'package:dls_one/features/todo/widget/ui/upcoming_todo_page/wide_upcoming_todo_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class UpcomingTodoPage extends StatefulWidget {
  const UpcomingTodoPage({
    super.key,
  });

  @override
  State<UpcomingTodoPage> createState() => _UpcomingTodoPageState();
}

class _UpcomingTodoPageState extends State<UpcomingTodoPage> {
  late final selectedDateNotifier = ValueNotifier(startDate());
  late final selectedSectionNotifier = ValueNotifier(0);

  late final sectionBuilder = TodoSectionBuilder(
    maxDate: TodoTimeConfig.maxDateTime,
    startDateProvider: startDate,
  );

  DateTime startDate() => DateTime.now();

  Future<void> _selectedDateListener() async {
    final bloc = context.read<UpcomingTodoBloc>()
      ..add(
        UpcomingTodoEvent.loadByDate(
          date: selectedDateNotifier.value.add(const Duration(days: 30)),
        ),
      );
    await bloc.stream.firstWhere((state) => !state.isLoading);
    await Future<void>.delayed(const Duration(milliseconds: 100));
    selectedSectionNotifier.value =
        selectedDateNotifier.value.difference(startDate()).inDays;
  }

  @override
  void initState() {
    super.initState();
    selectedDateNotifier.addListener(_selectedDateListener);
  }

  @override
  void dispose() {
    selectedDateNotifier.dispose();
    selectedSectionNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DLSLoaderScope(
      child: BlocConsumer<UpcomingTodoBloc, UpcomingTodoState>(
        listenWhen: (previous, current) =>
            !previous.isLoading && current.isLoading,
        listener: (context, state) {
          DLSLoaderScope.showLoaderOf(
            context,
            future: context
                .read<UpcomingTodoBloc>()
                .stream
                .firstWhere((state) => !state.isLoading),
          );
        },
        builder: (context, state) {
          final data = state.data;
          if (data == null) {
            return state.maybeMap(
              loading: (_) => const SizedBox(),
              orElse: () => const CommonError(),
            );
          }

          final sections = sectionBuilder.build(
            pages: data.pages,
            lastDate: data.loadedDateTime,
          );

          return SelectedDateNotifier(
            notifier: selectedDateNotifier,
            child: SelectedSectionNotifier(
              notifier: selectedSectionNotifier,
              child: DLSPageBuilder(
                wide: WideUpcomingTodoLayout(
                  startDate: startDate,
                  sections: sections,
                ),
                narrow: NarrowUpcomingTodoLayout(
                  startDate: startDate,
                  sections: sections,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class SelectedDateNotifier extends InheritedNotifier<ValueNotifier<DateTime>> {
  const SelectedDateNotifier({
    required super.child,
    super.key,
    super.notifier,
  });

  static ValueNotifier<DateTime> of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<SelectedDateNotifier>()!
        .notifier!;
  }
}

class SelectedSectionNotifier extends InheritedNotifier<ValueNotifier<int>> {
  const SelectedSectionNotifier({
    required super.child,
    super.key,
    super.notifier,
  });

  static ValueNotifier<int> of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<SelectedSectionNotifier>()!
        .notifier!;
  }
}
