import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:flutter/material.dart';

class TaskCheckListView extends StatefulWidget {
  const TaskCheckListView({
    required this.title,
    required this.onDelete,
    required this.onUpdate,
    this.checked,
    super.key,
  });

  final String title;
  final VoidCallback onDelete;
  final void Function(String, bool) onUpdate;
  final bool? checked;

  @override
  State<TaskCheckListView> createState() => _TaskCheckListViewState();
}

class _TaskCheckListViewState extends State<TaskCheckListView> {
  late bool _isChecked;
  bool _isHover = false;
  bool _isFocus = false;
  final _titleController = TextEditingController();
  final _focus = FocusNode();

  @override
  void initState() {
    super.initState();
    _titleController.text = widget.title;
    _focus.addListener(_onFocusChange);
    _isChecked = widget.checked ?? false;
  }

  @override
  void didUpdateWidget(covariant TaskCheckListView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.checked != _isChecked) {
      _isChecked = widget.checked ?? false;
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _focus.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _isFocus = _focus.hasFocus;
    });
    if (!_isFocus) {
      widget.onUpdate(_titleController.text, _isChecked);
    }
  }

  @override
  Widget build(BuildContext context) {
    final child = Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isChecked = !_isChecked;
            });
            widget.onUpdate(
              _titleController.text,
              _isChecked,
            );
          },
          child: Container(
            height: 20.h,
            width: 20.w,
            margin: EdgeInsets.only(right: 8.w),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: _isChecked ? context.c_blue : context.c_white_text,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: _isChecked ? context.c_blue : context.c_grey_stoke,
              ),
            ),
            child: Icon(
              Icons.check,
              color: context.c_white_text,
              size: 12,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              _isFocus = !_isFocus;
            });
          },
          onHover: (value) {
            setState(() {
              _isHover = value;
            });
          },
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          child: Row(
            children: [
              if (!_isFocus)
                Container(
                  height: 32.h,
                  margin: EdgeInsets.only(bottom: 5.h),
                  alignment: Alignment.center,
                  child: Text(
                    _titleController.text,
                    overflow: TextOverflow.ellipsis,
                    style: context.ts_s14h22_4w400.copyWith(
                      color:
                          _isChecked ? context.c_placeholder : context.c_text,
                    ),
                  ),
                )
              else
                SizedBox(
                  width: 280.w,
                  child: TextField(
                    controller: _titleController,
                    focusNode: _focus,
                    textAlignVertical: TextAlignVertical.center,
                    onChanged: (value) {
                      // TODO remove if not needed
                      // widget.onUpdate(value, _isChecked);
                    },
                    style: context.ts_s14h22_4w400.copyWith(
                      color:
                          _isChecked ? context.c_placeholder : context.c_text,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      hintStyle: context.ts_s14h22_4w400,
                      hintText: '',
                      contentPadding: EdgeInsets.only(bottom: 5.h),
                      hoverColor: Colors.transparent,
                      isDense: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              if (_isHover)
                Row(
                  children: [
                    SizedBox(width: 5.w),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          widget.onDelete();
                        },
                        borderRadius: BorderRadius.circular(5.r),
                        hoverColor: context.c_grey_hover,
                        child: Container(
                          width: 28.w,
                          height: 28.h,
                          alignment: Alignment.center,
                          child: Assets.icons.times8.svg(
                            height: 15.h,
                            color: context.c_text_grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ],
    );
    return DLSPageBuilder(
      wide: Container(
        margin: EdgeInsets.only(left: 26.5.w),
        height: 32,
        child: child,
      ),
      narrow: child,
    );
  }
}
