import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class TagsButton extends StatefulWidget {
  final void Function(String) addItem;

  const TagsButton({
    super.key,
    required this.addItem,
  });
  @override
  State<TagsButton> createState() => _TagsButtonState();
}

class _TagsButtonState extends State<TagsButton> {
  final titleController = TextEditingController();
  bool isActiveInput = false;

  @override
  void dispose() {
    titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                S.current.tags,
                style: context.ts_s14h22_4w400.copyWith(
                  color: context.c_text_grey,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isActiveInput = !isActiveInput;
                    });
                  },
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      10,
                    ),
                  ),
                  hoverColor: context.c_grey_hover,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          15,
                        ),
                      ),
                      border: Border.all(
                        color: context.c_grey_stoke,
                      ),
                    ),
                    padding: const EdgeInsets.all(1.5),
                    child: Assets.icons.plus1.svg(
                      height: 11.67.h,
                      color: context.c_text_grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (isActiveInput)
            Container(
              margin: EdgeInsets.only(
                top: 8,
              ),
              height: 24,
              width: 100,
              decoration: BoxDecoration(
                color: context.c_grey_grey,
                border: Border.all(
                  width: 1,
                  color: context.c_grey_stoke,
                ),
                borderRadius: BorderRadius.all(Radius.circular(
                  5.0,
                )),
              ),
              child: SizedBox(
                height: 24,
                child: TextField(
                  maxLines: 1,
                  controller: titleController,
                  style: context.ts_s12h14w400,
                  textAlignVertical: TextAlignVertical.center,
                  onSubmitted: (value) {
                    setState(() {
                      isActiveInput = false;
                    });
                    widget.addItem(value);
                    titleController.text = '';
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: context.c_grey_grey,
                    hoverColor: Colors.transparent,
                    hintStyle: TextStyle(fontSize: 17),
                    hintText: '',
                    contentPadding: const EdgeInsets.only(
                      left: 8,
                    ),
                    isDense: true,
                    border: InputBorder.none,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
