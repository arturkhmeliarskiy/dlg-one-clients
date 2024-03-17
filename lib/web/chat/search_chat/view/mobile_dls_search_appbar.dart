// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/chat/search_chat/bloc/search_chat_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// поле ввода запроса на поиск чата
class MobileDLSSearchAppBar extends StatefulWidget
    implements PreferredSizeWidget {
  const MobileDLSSearchAppBar({
    super.key,
    this.onChange,
    this.onSubmitted,
    this.onClear,
    required this.bottomInformationBar,
  });

  final ValueChanged<String>? onChange;
  final ValueChanged<String>? onSubmitted;
  final VoidCallback? onClear;
  final Widget bottomInformationBar;

  @override
  State<MobileDLSSearchAppBar> createState() => _MobileDLSSearchAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(94.h);
}

class _MobileDLSSearchAppBarState extends State<MobileDLSSearchAppBar> {
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
      child: PreferredSize(
        preferredSize: widget.preferredSize,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1.h,
                color: context.c_grey_stoke,
              ),
            ),
          ),
          child: SizedBox(
            height: widget.preferredSize.height,
            child: Column(
              children: [
                SizedBox(height: 15.h),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: DLSStyledInput(
                    autofocus: true,
                    controller: controller,
                    hint: S.current.search,
                    focusNode: focusNode,
                    onChange: widget.onChange,
                    onSubmitted: widget.onSubmitted,
                    onClear: widget.onClear,
                    prefixIcon: Assets.icons.back
                        .svg(
                          width: 18.w,
                          height: 18.h,
                          colorFilter: context.c_text_grey_color_filter,
                        )
                        .gestureDetector(onTap: () => context.navigateBack()),
                  ),
                ),
                const Spacer(),
                widget.bottomInformationBar
              ],
            ),
          ),
        ),
      ),
    );
  }
}
