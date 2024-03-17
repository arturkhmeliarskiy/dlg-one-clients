import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/textroom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

class FormatterPanelBuilder extends StatelessWidget {
  const FormatterPanelBuilder({
    required this.controller,
    super.key,
  });

  final quill.QuillController controller;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatInputBloc, ChatInputState>(
      buildWhen: (previous, current) =>
          previous.formatterShowing != current.formatterShowing,
      builder: (context, state) {
        if (!state.formatterShowing) {
          return const SizedBox();
        }
        return Padding(
          padding: EdgeInsets.only(bottom: 4.h),
          child: quill.QuillToolbar.basic(
            controller: controller,
            toolbarIconAlignment: WrapAlignment.spaceBetween,
            // TODO(alexsh): widget have internal button size Factor
            toolbarIconSize: 16.w,
            color: Colors.transparent,
            iconTheme: quill.QuillIconTheme(
              iconSelectedColor: context.c_blue,
              iconSelectedFillColor: Colors.transparent,
              iconUnselectedFillColor: Colors.transparent,
              borderRadius: 5.r,
            ),
            showDividers: false,
            showFontFamily: false,
            showFontSize: false,
            showUnderLineButton: false,
            showStrikeThrough: false,
            showColorButton: false,
            showBackgroundColorButton: false,
            showClearFormat: false,
            showHeaderStyle: false,
            showListCheck: false,
            showIndent: false,
            showUndo: false,
            showRedo: false,
            showSearchButton: false,
          ),
        );
      },
    );
  }
}
