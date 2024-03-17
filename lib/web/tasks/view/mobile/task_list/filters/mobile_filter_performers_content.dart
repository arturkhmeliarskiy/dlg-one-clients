import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class MobileFilerPerformersContent extends StatefulWidget {
  const MobileFilerPerformersContent({
    required this.onChangeTags,
    required this.onChangeTagsTitle,
    required this.items,
    super.key,
  });

  final void Function(List<int>) onChangeTags;
  final void Function(List<String>) onChangeTagsTitle;
  final List<DlsTasksExecutors> items;

  @override
  State<MobileFilerPerformersContent> createState() =>
      _MobileFilerPerformersContentState();
}

class _MobileFilerPerformersContentState
    extends State<MobileFilerPerformersContent> {
  final notSelected = S.current.not_selected[0].toUpperCase() +
      S.current.not_selected.substring(1, 10);
  List<String> _items = <String>[];
  List<String> _selectedItems = [];
  List<DlsTasksExecutors> _selectedPerformers = [];

  @override
  void initState() {
    super.initState();
    _items = [notSelected];
    for (var i = 0; i < widget.items.length; i++) {
      if (!_items.contains(widget.items[i].name ?? '') &&
          (widget.items[i].name ?? '').isNotEmpty) {
        _items.add(widget.items[i].name ?? '');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      height: height * 0.5,
      child: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final isSelected = _selectedItems.contains(_items[index]);
          return InkWell(
            onTap: () {
              final performer = DlsTasksExecutors(
                id: 0,
                name: S.current.all_performers,
              );
              setState(() {
                if (isSelected) {
                  if (index != 0) {
                    _selectedItems.remove(_items[index]);
                    _selectedPerformers.remove(widget.items[index - 1]);
                  } else {
                    _selectedItems.remove(_items[index]);
                    _selectedPerformers.remove(performer);
                  }
                } else {
                  if (index == 0) {
                    _selectedItems = [notSelected];
                    _selectedPerformers = [performer];
                  } else {
                    _selectedItems.remove(notSelected);
                    _selectedPerformers.remove(performer);
                  }

                  if (index != 0) {
                    _selectedPerformers.add(widget.items[index - 1]);
                    _selectedItems.add(_items[index]);
                  }
                }
              });
              final selectedIds =
                  _selectedPerformers.map((item) => item.id ?? 0).toList();

              widget.onChangeTags(selectedIds);
              widget.onChangeTagsTitle(_selectedItems);
            },
            child: Container(
              margin: EdgeInsets.only(
                top: 10.h,
              ),
              height: 44.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.w,
                    ),
                    child: Text(
                      _items[index],
                      style: context.ts_s14h22_4w400,
                    ),
                  ),
                  if (isSelected)
                    Padding(
                      padding: EdgeInsets.only(
                        right: 16.w,
                      ),
                      child: Assets.icons.check.svg(
                        color: context.c_blue,
                      ),
                    )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
