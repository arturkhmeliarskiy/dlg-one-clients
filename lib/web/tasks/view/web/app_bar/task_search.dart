import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/tasks/const/enums.dart';
import 'package:flutter/material.dart';

class TaskSearch extends StatefulWidget {
  const TaskSearch({
    required this.onSearchTask,
    required this.filters,
    super.key,
  });

  final void Function(String) onSearchTask;
  final Map<FilterTypes, Object> filters;

  @override
  State<TaskSearch> createState() => _TaskSearchState();
}

class _TaskSearchState extends State<TaskSearch> {
  final _controller = TextEditingController();
  bool _isActive = false;
  bool _isChanged = false;
  final _debounce = DlsDebounce(const Duration(milliseconds: 500));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 5,
      onTap: () {},
      borderRadius: BorderRadius.circular(5),
      hoverColor: context.c_grey_grey,
      highlightColor: context.c_grey_grey,
      focusColor: context.c_grey_grey,
      child: Container(
        height: 32.h,
        width: _isActive ? 183.w : 100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 40.w,
              child: Assets.icons.search3.svg(
                width: 18,
                height: 18,
                color: context.c_placeholder,
              ),
            ),
            SizedBox(
              height: 32.h,
              width: _isActive ? 100.w : 60.w,
              child: TextField(
                controller: _controller,
                onTap: () {
                  setState(() {
                    _isActive = true;
                  });
                },
                onChanged: (value) {
                  setState(() {
                    _isChanged = value.isNotEmpty;
                  });
                  _debounce(() => widget.onSearchTask(value));
                },
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: S.current.search,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.r),
                    borderSide: BorderSide(
                      width: 0.w,
                      style: BorderStyle.none,
                    ),
                  ),
                  contentPadding: EdgeInsets.only(top: 12.h),
                  filled: true,
                  fillColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                ),
              ),
            ),
            if (_isChanged)
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isActive = false;
                    _controller.text = '';
                    _isChanged = false;
                  });
                  widget.onSearchTask(_controller.text);
                },
                child: SizedBox(
                  width: 40.w,
                  child: Assets.icons.times2.svg(
                    width: 18,
                    height: 18,
                    color: context.c_text,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
