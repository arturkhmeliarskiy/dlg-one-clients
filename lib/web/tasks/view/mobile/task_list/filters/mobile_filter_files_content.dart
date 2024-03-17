import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class MobileFilerFilesContent extends StatefulWidget {
  const MobileFilerFilesContent({
    required this.onChangeFiles,
    required this.onChangeFilesTitle,
    super.key,
  });

  final ValueChanged<int> onChangeFiles;
  final ValueChanged<String> onChangeFilesTitle;

  @override
  State<MobileFilerFilesContent> createState() =>
      _MobileFilerFilesContentState();
}

class _MobileFilerFilesContentState extends State<MobileFilerFilesContent> {
  final items = <String>[
    S.current.not_selected[0].toUpperCase() +
        S.current.not_selected.substring(1, 10),
    S.current.with_files,
    S.current.without_files,
  ];
  String _selectedItems = '';
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      height: height * 0.25,
      child: Column(
        children: [
          SizedBox(
            height: 52.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 16.w,
                      ),
                      Assets.icons.angleLeft.svg(
                        color: context.c_text_grey,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        S.current.files_title,
                        style: context.ts_s14h16_4w500,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16.w),
                  child: GestureDetector(
                    onTap: () {
                      widget.onChangeFiles(_selectedIndex);
                      widget.onChangeFilesTitle(_selectedItems);
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      S.current.apply,
                      style: context.ts_s14h22_4w400.copyWith(
                        color: context.c_blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.25 - 67,
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                      _selectedItems = items[index];
                    });
                  },
                  child: SizedBox(
                    height: 44.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.w,
                          ),
                          child: Text(
                            items[index],
                            style: context.ts_s14h22_4w400,
                          ),
                        ),
                        if (_selectedIndex == index)
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
          )
        ],
      ),
    );
  }
}
