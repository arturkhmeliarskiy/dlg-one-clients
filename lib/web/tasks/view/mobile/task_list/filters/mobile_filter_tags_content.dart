import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class MobileFilerTagsContent extends StatefulWidget {
  const MobileFilerTagsContent({
    required this.onChangeTags,
    required this.onChangeTagsTitle,
    required this.items,
    super.key,
  });

  final void Function(List<int>) onChangeTags;
  final void Function(List<String>) onChangeTagsTitle;
  final List<TaskTagModel> items;

  @override
  State<MobileFilerTagsContent> createState() => _MobileFilerTagsContentState();
}

class _MobileFilerTagsContentState extends State<MobileFilerTagsContent> {
  final notSelected = S.current.not_selected[0].toUpperCase() +
      S.current.not_selected.substring(1, 10);
  List<String> _items = <String>[];
  List<String> _selectedItems = [];
  List<TaskTagModel> _selectedTags = [];

  @override
  void initState() {
    super.initState();
    _items = [notSelected];
    for (var i = 0; i < widget.items.length; i++) {
      _items.add(widget.items[i].title);
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
              final tag = TaskTagModel(id: 0, title: S.current.all_tags);
              setState(() {
                if (isSelected) {
                  if (index != 0) {
                    _selectedItems.remove(_items[index]);
                    _selectedTags.remove(widget.items[index - 1]);
                  } else {
                    _selectedItems.remove(_items[index]);
                    _selectedTags.remove(tag);
                  }
                } else {
                  if (index == 0) {
                    _selectedItems = [notSelected];
                    _selectedTags = [tag];
                  } else {
                    _selectedItems.remove(notSelected);
                    _selectedTags.remove(tag);
                  }

                  if (index != 0) {
                    _selectedTags.add(widget.items[index - 1]);
                    _selectedItems.add(_items[index]);
                  }
                }
              });
              final selectedIds = _selectedTags.map((item) => item.id).toList();

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
