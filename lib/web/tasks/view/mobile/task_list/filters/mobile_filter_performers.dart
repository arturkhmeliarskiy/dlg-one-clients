import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/bloc/bloc.dart';
import 'package:dls_one/web/tasks/const/enums.dart';
import 'package:dls_one/web/tasks/view/mobile/task_list/filters/mobile_filter_performers_content.dart';
import 'package:dls_one/web/tasks/view/mobile/task_list/filters/mobile_list_tags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MobileFilterPerformers extends StatefulWidget {
  const MobileFilterPerformers({
    required this.onChangePerformers,
    required this.selectedTabBar,
    required this.filters,
    super.key,
  });

  final void Function(List<int>) onChangePerformers;
  final int selectedTabBar;
  final Map<FilterTypes, Object> filters;

  @override
  State<MobileFilterPerformers> createState() => _MobileFilterPerformersState();
}

class _MobileFilterPerformersState extends State<MobileFilterPerformers> {
  List<int> _selectedIds = [];
  List<String> _selectedItems = [];
  final notSelected = S.current.not_selected[0].toUpperCase() +
      S.current.not_selected.substring(1, 10);

  @override
  void initState() {
    _selectedItems = [notSelected];
    super.initState();
  }

  @override
  void didUpdateWidget(covariant MobileFilterPerformers oldWidget) {
    if (widget.filters.isEmpty) {
      _selectedIds = [];
      _selectedItems = [notSelected];
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await showModalBottomSheet<void>(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(8),
            ),
          ),
          isScrollControlled: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          builder: (context) {
            return BlocBuilder<TaskListBloc, TaskListState>(
              builder: (context, state) {
                return MobileFilerPerformersContent(
                  onChangeTagsTitle: (value) {
                    setState(() {
                      _selectedItems = value;
                    });
                  },
                  onChangeTags: (value) {
                    setState(() {
                      _selectedIds = value;
                    });
                    widget.onChangePerformers(_selectedIds);
                  },
                  items: widget.selectedTabBar != 0
                      ? state.model.performersKanban
                      : state.model.performers,
                );
              },
            );
          },
        );
      },
      child: SizedBox(
        height: 44.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Text(
                S.current.responsible2,
                style: context.ts_s14h22_4w400,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: !_selectedItems.contains(notSelected)
                  ? MobileListTags.listTags(
                      _selectedItems,
                      context,
                      count: 1,
                    )
                  : Text(
                      notSelected,
                      style: context.ts_s14h22_4w400.copyWith(
                        color: context.c_grey_calendar_task_isFinished,
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
