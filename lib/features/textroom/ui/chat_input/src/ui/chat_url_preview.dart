import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/textroom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// превью ссылки в чате
class ChatUrlPreview extends StatelessWidget {
  /// constructor
  ChatUrlPreview({
    super.key,
    this.padding,
  });

  bool _urlClosed = false;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatInputBloc, ChatInputState>(
      builder: (context, state) {
        if (state.url == '' || _urlClosed) {
          return Container();
        }
        return Padding(
          padding: padding ?? EdgeInsets.zero,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: context.c_grey_stoke),
            ),
            child: SimpleUrlPreview(
              key: Key('${state.url}_input'),
              url: state.url,
              titleLines: 1,
              descriptionLines: 1,
              bgColor: context.c_white_text,
              titleStyle: context.ts_s12h14w500.copyWith(
                color: context.c_blue,
              ),
              descriptionStyle: context.ts_s12h14w500.copyWith(
                color: context.c_text,
              ),
              previewContainerPadding: EdgeInsets.symmetric(vertical: 11.h),
              previewHeight: 60.h,
              isClosable: true,
              onClosed: () {
                _urlClosed = true;

                /// чтобы перерисовать
                context.read<ChatInputBloc>().add(
                      ChatInputEvent.update(state.message),
                    );
              },
            ),
          ),
        );
      },
    );
  }
}
