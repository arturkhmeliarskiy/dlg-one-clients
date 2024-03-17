import 'package:common/common.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/textroom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatMessageText extends StatefulWidget {
  ///
  const ChatMessageText({
    required this.message,
    required this.onOpenVideo,
    required this.onOpenImage,
    this.isSelected = false,
    this.isSelectMode = false,
    this.opponentLastReadDate,
    this.onOpenComments,
    this.onOpenMenu,
    this.onCreateTask,
    this.messageMenuId,
    this.onBeforeOpenMenu,
    this.onSelectMessage,
    this.canHover = true,
    super.key,
  });

  final DlsChatMessageText message;
  final bool isSelected;
  final bool isSelectMode;
  final ValueNotifier<DateTime>? opponentLastReadDate;
  final String? messageMenuId;
  final VoidCallback? onOpenComments;
  final VoidCallback? onOpenMenu;
  final VoidCallback? onCreateTask;
  final ValueChanged<TapDownDetails>? onBeforeOpenMenu;
  final bool canHover;
  final ValueChanged<DlsChatMessageAttachment> onOpenVideo;
  final void Function(int index, Map<String, dynamic> extra) onOpenImage;
  final VoidCallback? onSelectMessage;

  @override
  State<ChatMessageText> createState() => _ChatMessageTextState();
}

class _ChatMessageTextState extends State<ChatMessageText> {
  bool _isHovered = false;
  final _focusNode = FocusNode();
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _focusNode.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return ChatMessageBloc(
          widget.message,
          users: context.read<UsersBloc>(),
          networkFileCache: context.read<FileManager>(),
        );
      },
      child: BlocBuilder<ChatMessageBloc, ChatMessageState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('Неизвестное состояние'),
                ),
              );
            },
            failure: (failure) {
              return MessageLoadingFailureBuilder(message: failure.message);
            },
            data: (data) {
              if (widget.message.plainText.trim().isEmpty) {
                return const SizedBox();
              }
              return MouseRegion(
                hitTestBehavior: HitTestBehavior.translucent,
                onEnter: (_) {
                  _onHover(true);
                },
                onExit: (_) {
                  _onHover(false);
                },
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onLongPress:
                      (DlsPlatform.dlsPlatform == DlsPlatformType.mobile &&
                              widget.message.deletedAt == null)
                          ? widget.onOpenMenu
                          : null,
                  onTapDown: (value) {
                    if (widget.message.deletedAt == null) {
                      widget.onBeforeOpenMenu?.call(value);
                    }
                    if (!FocusScope.of(context).hasPrimaryFocus) {
                      FocusScope.of(context).unfocus();
                    }
                  },
                  child: MessageContentBuilder(
                    message: data.event as DlsChatMessageText,
                    scrollController: _scrollController,
                    focusNode: _focusNode,
                    opponentLastReadDate: widget.opponentLastReadDate,
                    isHovered: _isHovered ||
                        widget.messageMenuId == data.event.eventId,
                    isSelectedMessage: widget.isSelected,
                    isSelectMode: widget.isSelectMode,
                    onSelectMessage: (value) {
                      widget.onSelectMessage?.call();
                    },
                    user: data.user,
                    onOpenVideo: widget.onOpenVideo,
                    onOpenImage: widget.onOpenImage,
                    onOpenComments: widget.onOpenComments,
                    onBeforeOpenMenu: widget.onBeforeOpenMenu,
                    onOpenMenu: widget.onOpenMenu,
                    onCreateTask: widget.onCreateTask,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  void _onHover(bool isHovered) {
    if (!widget.canHover || widget.message.deletedAt != null) {
      return;
    }
    setState(() {
      _isHovered = isHovered;
    });
  }
}
