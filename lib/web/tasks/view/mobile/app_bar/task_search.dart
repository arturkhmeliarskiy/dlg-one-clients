import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class MobileTaskSearch extends StatefulWidget {
  const MobileTaskSearch({super.key, required this.onSearchTask});

  final void Function(String) onSearchTask;

  @override
  State<MobileTaskSearch> createState() => _MobileTaskSearchState();
}

class _MobileTaskSearchState extends State<MobileTaskSearch> {
  final _controller = TextEditingController();
  bool _isActive = false;
  bool _isChanged = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      radius: 5.r,
      onTap: () {
        setState(() {
          _isActive = !_isActive;
        });
      },
      borderRadius: BorderRadius.circular(5),
      hoverColor: context.c_grey_grey,
      highlightColor: context.c_grey_grey,
      focusColor: context.c_grey_grey,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            height: 32.h,
            width: _isActive ? width * 0.38 : 40.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 40.w,
                  child: Assets.icons.search1.svg(
                    color: context.c_text_grey,
                    height: 18.h,
                    width: 18.w,
                  ),
                ),
                SizedBox(
                  height: 32.h,
                  width: _isActive ? 60.w : 0.w,
                  child: TextField(
                    controller: _controller,
                    onTap: () {
                      setState(() {
                        _isActive = true;
                      });
                    },
                    onChanged: (value) {
                      setState(() {
                        _isActive = value.isNotEmpty;
                      });
                      widget.onSearchTask(value);
                    },
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
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
                        width: 18.w,
                        height: 18.h,
                        color: context.c_text,
                      ),
                    ),
                  )
              ],
            ),
          );
        },
      ),
    );
  }
}
