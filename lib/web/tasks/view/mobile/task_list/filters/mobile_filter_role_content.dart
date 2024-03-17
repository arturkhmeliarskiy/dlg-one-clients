import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class MobileFilerRoleContent extends StatefulWidget {
  const MobileFilerRoleContent({
    required this.onChangeRole,
    required this.onChangeRoleTitle,
    super.key,
  });

  final void Function(List<TaskRolesType>) onChangeRole;
  final void Function(List<String>) onChangeRoleTitle;

  @override
  State<MobileFilerRoleContent> createState() => _MobileFilerRoleContentState();
}

class _MobileFilerRoleContentState extends State<MobileFilerRoleContent> {
  final _items = <String>[
    S.current.all[0].toUpperCase() + S.current.all.substring(1, 3),
    S.current.executor,
    S.current.author,
    S.current.responsible,
    S.current.observer,
  ];

  List<String> _selectedItems = [];
  List<TaskRolesType> _selectedTypes = [];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      height: height * 0.35,
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
                        S.current.my_role,
                        style: context.ts_s14h16_4w500,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16.w),
                  child: GestureDetector(
                    onTap: () {
                      widget.onChangeRole(_selectedTypes);
                      widget.onChangeRoleTitle(_selectedItems);
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
            height: height * 0.35 - 67,
            child: ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) {
                final selected = _selectedItems.contains(_items[index]);
                return InkWell(
                  onTap: () {
                    setState(() {
                      if (selected) {
                        _selectedItems.remove(_items[index]);
                        _selectedTypes.remove(TaskRolesType.values[index]);
                      } else {
                        if (index == 0) {
                          _selectedTypes = [TaskRolesType.unknown];
                          _selectedItems = [_items[0]];
                        } else {
                          _selectedTypes.remove(TaskRolesType.unknown);
                          _selectedItems.remove(_items[0]);
                        }

                        if (index != 0) {
                          _selectedTypes.add(TaskRolesType.values[index]);
                          _selectedItems.add(_items[index]);
                        }
                      }
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
                            _items[index],
                            style: context.ts_s14h22_4w400,
                          ),
                        ),
                        if (selected)
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
