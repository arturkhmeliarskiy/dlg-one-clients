// ignore_for_file: public_member_api_docs

import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/chat/search_chat/bloc/search_chat_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// поле ввода запроса на поиск чата
class DLSSearchChatAppBar extends StatefulWidget
    implements PreferredSizeWidget {
  const DLSSearchChatAppBar({
    super.key,
    this.onChange,
    this.onSubmitted,
    this.onClear,
    this.isGroup = false,
  });

  final ValueChanged<String>? onChange;
  final ValueChanged<String>? onSubmitted;
  final VoidCallback? onClear;
  final bool isGroup;

  @override
  State<DLSSearchChatAppBar> createState() => _DLSSearchChatAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(52.h);
}

class _DLSSearchChatAppBarState extends State<DLSSearchChatAppBar> {
  final controller = TextEditingController();
  final focusNode = FocusNode();

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SearchChatBloc, SearchChatState>(
      listener: (context, state) {
        controller.clear();
      },
      listenWhen: (previous, current) => current.maybeWhen(
        orElse: () => false,
        initial: () => true,
      ),
      child: Container(
        width: double.infinity,
        height: widget.preferredSize.height,
        decoration: BoxDecoration(
          color: widget.isGroup ? null : context.c_white_text,
          border: widget.isGroup
              ? null
              : Border(
                  bottom: BorderSide(
                    color: context.c_grey_stoke,
                    width: 1.h,
                  ),
                ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: widget.isGroup ? 0 : 8.w,
          vertical: 10.h,
        ),
        child: DLSStyledInput(
          controller: controller,
          hint: S.current.search,
          focusNode: focusNode,
          onChange: widget.onChange,
          onSubmitted: widget.onSubmitted,
          onClear: () {
            widget.onClear?.call();

            controller.clear();
          },
          revertFocusColor: widget.isGroup,
          prefixIcon: Assets.icons.search1.svg(
            width: 18.w,
            height: 18.h,
            colorFilter: context.c_text_grey_color_filter,
          ),
        ),
      ),
    );
  }
}
