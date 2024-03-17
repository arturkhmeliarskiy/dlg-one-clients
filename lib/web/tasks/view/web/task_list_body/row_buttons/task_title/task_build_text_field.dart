import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class TaskBuildTextField extends StatefulWidget {
  const TaskBuildTextField({
    super.key,
    required this.isActiveInput,
    required this.title,
    required this.focusNode,
    required this.onSubmittedText,
    required this.onChangeText,
  });

  final bool isActiveInput;
  final String title;
  final FocusNode focusNode;
  final void Function(String) onSubmittedText;
  final void Function(String) onChangeText;

  @override
  State<TaskBuildTextField> createState() => _TaskBuildTextFieldState();
}

class _TaskBuildTextFieldState extends State<TaskBuildTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.w,
      child: TextField(
        enabled: widget.isActiveInput,
        textAlignVertical: TextAlignVertical.center,
        style: context.ts_s14h22_4w400.copyWith(
          color: context.c_text,
          overflow: TextOverflow.ellipsis,
        ),
        controller: TextEditingController.fromValue(
          TextEditingValue(
            text: widget.title,
            selection: TextSelection.collapsed(
              offset: widget.title.length,
            ),
          ),
        ),
        onChanged: (value) {
          widget.onChangeText(value);
        },
        onSubmitted: (value) {
          widget.onSubmittedText(value);
        },
        focusNode: widget.focusNode,
        decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          counterText: '',
          contentPadding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
