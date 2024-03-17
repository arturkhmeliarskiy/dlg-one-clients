import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/button/dls_circle_add_button.dart';
import 'package:dls_one/core/widgets/src/text/web_dls_label_field.dart';
import 'package:flutter/material.dart';

class CheckList extends StatefulWidget {
  const CheckList({
    super.key,
    required this.addItem,
  });

  final ValueChanged<String> addItem;

  @override
  State<CheckList> createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
  final titleController = TextEditingController();
  bool isActiveInput = false;

  @override
  void dispose() {
    titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WebDlsLabelField(
          icon: Assets.icons.checkSquare.path,
          label: S.current.checklist,
          actions: [
            Material(
              color: Colors.transparent,
              child: DlsCircleAddButton(
                onTap: () {
                  setState(() {
                    isActiveInput = !isActiveInput;
                  });
                },
              ),
            ),
          ],
        ),
        if (isActiveInput)
          Container(
            margin: EdgeInsets.only(
              top: 15.h,
              left: 20.w,
            ),
            height: 32.h,
            width: 280.w,
            decoration: BoxDecoration(
              color: context.c_grey_grey,
              border: Border.all(
                width: 1.w,
                color: context.c_grey_stoke,
              ),
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    maxLines: 1,
                    controller: titleController,
                    textAlignVertical: TextAlignVertical.center,
                    onSubmitted: (value) {
                      setState(() {
                        isActiveInput = false;
                        widget.addItem(value);
                        titleController.text = '';
                      });
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: context.c_grey_grey,
                      hoverColor: Colors.transparent,
                      hintStyle: const TextStyle(fontSize: 17),
                      hintText: '',
                      contentPadding: EdgeInsets.only(
                        left: 8.w,
                        top: 5.h,
                        bottom: 5.h,
                      ),
                      isDense: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isActiveInput = false;
                      widget.addItem(titleController.text);
                      titleController.text = '';
                    });
                  },
                  child: Container(
                    height: 32,
                    width: 36,
                    color: context.c_grey_grey,
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      // TODO если иконка смотрится больше сделать экспорт svg внутри фрейма 18x18
                      child: Assets.icons.plus1.svg(
                        height: 18.h,
                        color: context.c_text_grey,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}
