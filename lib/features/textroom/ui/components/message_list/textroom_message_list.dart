import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/ui/components/components.dart';
import 'package:dls_one/features/textroom/ui/components/message_menu_create_tasks.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class TextRoomMessageList extends StatefulWidget {
  ///
  const TextRoomMessageList({
    required this.matrixUserId,
    required this.messages,
    required this.readMarkers,
    required this.selectedMessageIds,
    required this.isSelectMode,
    required this.lastReadMessageId,
    required this.isDirectChat,
    required this.scrollController,
    required this.positionsListener,
    required this.onMessageScrollChanged,
    required this.onForwardMessage,
    required this.onMessageQuote,
    required this.onMarkEditMessage,
    required this.onDeleteMessage,
    required this.onSelectMessage,
    this.onShowMessageComments,
    this.onCreateEvent,
    this.onCreateTask,
    this.onCreateCase,
    this.threadMessage,
    super.key,
  });

  final String matrixUserId;
  final List<DlsChatMessage> messages;
  final List<RoomReadMarker> readMarkers;
  final List<String> selectedMessageIds;
  final bool isSelectMode;
  final String? lastReadMessageId;
  final bool isDirectChat;
  final ItemScrollController scrollController;
  final ItemPositionsListener positionsListener;
  final ValueChanged<List<int>> onMessageScrollChanged;
  final ValueChanged<DlsChatMessage> onForwardMessage;
  final ValueChanged<DlsChatMessageText>? onShowMessageComments;
  final ValueChanged<DlsChatMessageText> onMessageQuote;
  final ValueChanged<DlsChatMessageText?> onMarkEditMessage;
  final ValueChanged<DlsChatMessage> onDeleteMessage;
  final ValueChanged<DlsChatMessageText> onSelectMessage;
  final ValueChanged<String>? onCreateTask;
  final ValueChanged<String>? onCreateEvent;
  final ValueChanged<String>? onCreateCase;
  final DlsChatMessageText? threadMessage;

  @override
  State<TextRoomMessageList> createState() => _TextRoomMessageListState();
}

class _TextRoomMessageListState extends State<TextRoomMessageList> {
  var _messageTapPosition = Offset.zero;
  String? _menuMessageId;
  final _opponentLastReadDate = ValueNotifier(DateTime(1970));

  @override
  void initState() {
    _updateOpponentLastReadDate();
    super.initState();
    widget.positionsListener.itemPositions.addListener(_listPositionListener);
  }

  @override
  void dispose() {
    _opponentLastReadDate.dispose();
    widget.positionsListener.itemPositions
        .removeListener(_listPositionListener);
    super.dispose();
  }

  @override
  void didUpdateWidget(TextRoomMessageList oldWidget) {
    super.didUpdateWidget(oldWidget);
    _updateOpponentLastReadDate();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.messages.isEmpty && widget.threadMessage != null) {
      return SingleChildScrollView(
        reverse: true,
        child: _ThreadMainMessageBuilder(
          message: widget.threadMessage!,
          count: widget.messages.whereType<DlsChatMessageText>().length,
        ),
      );
    }

    if (widget.messages.isEmpty) {
      return TextRoomMessageListEmptyBuilder(
        isDirectChat: widget.isDirectChat,
      );
    }

    return ScrollablePositionedList.separated(
      separatorBuilder: (context, index) {
        return TextRoomMessageListSeparator(
          userId: widget.matrixUserId,
          messages: widget.messages,
          lastReadMessageId: widget.lastReadMessageId,
          itemIndex: index,
        );
      },
      itemCount: widget.messages.length,
      itemBuilder: (context, index) {
        final message = ChatMessageWrapper(
          key: ObjectKey(widget.messages[index]),
          message: widget.messages[index],
          isSelected: widget.selectedMessageIds.contains(
            widget.messages[index].eventId,
          ),
          isSelectMode: widget.isSelectMode,
          opponentLastReadDate: _opponentLastReadDate,
          menuMessageId: _menuMessageId,
          onSelectMessage: () {
            final msg = widget.messages[index].safeCast<DlsChatMessageText>();
            if (msg == null) {
              return;
            }
            widget.onSelectMessage(msg);
          },
          onShowMessageComments: widget.onShowMessageComments,
          onOpenVideo: (value) {
            context.pushRoute(
              VideoPlayerRoute(
                name: value.eventId.split('\n\n').last,
                attachment: value,
              ),
            );
          },
          onOpenImage: (index, extra) {
            context.pushRoute(
              GalleryRoute(
                initImageIndex: index,
                urls: extra['urls'] as List<String>,
                names: extra['names'] as List<String>,
                ids: extra['ids'] as List<String>,
                roomId: extra['roomId'] as String,
              ),
            );
          },
          onBeforeOpenMenu: _onMessageTapPosition,
          onShowCustomMenu: _onShowMessageCustomMenu,
          onCreateTask: () {
            _onCreateTask(widget.messages[index].event?.text ?? '');
          },
        );

        if (index == widget.messages.length - 1 &&
            widget.threadMessage != null) {
          return _ThreadMainMessageBuilder(
            message: widget.threadMessage!,
            count: widget.messages.whereType<DlsChatMessageText>().length,
            nextMessage: message,
          );
        }

        return message;
      },
      itemScrollController: widget.scrollController,
      itemPositionsListener: widget.positionsListener,
      reverse: true,
    );
  }

  void _listPositionListener() {
    final scrollPositions = widget.positionsListener.itemPositions.value
        .map((e) => e.index)
        .toList();
    if (scrollPositions.isEmpty) {
      return;
    }
    widget.onMessageScrollChanged(scrollPositions);
  }

  void _onMessageTapPosition(TapDownDetails details) {
    _messageTapPosition = details.globalPosition;
  }

  Future<int?> _onCreateTask(String value) {
    final message = QuillEditorHelper.buildDocument(value).toPlainText();
    return showMenu<int>(
      color: Colors.transparent,
      elevation: 0,
      context: context,
      position: RelativeRect.fromLTRB(
        _messageTapPosition.dx - 350,
        _messageTapPosition.dy + 8,
        _messageTapPosition.dx + 20,
        _messageTapPosition.dy,
      ),
      items: [
        MessageMenuCreateTasks(
          onTapCase: () {
            widget.onCreateCase?.call(message);
          },
          onTapEvent: () {
            widget.onCreateEvent?.call(message);
          },
          onTapTask: () {
            widget.onCreateTask?.call(message);
          },
        )
      ],
    );
  }

  Future<int?> _onShowMessageCustomMenu(DlsChatMessage event) {
    setState(() {
      _menuMessageId = event.eventId;
    });
    final eventInThread =
        event.relatedType == DlsChatMessageRelationType.replyInThread;
    return showMenu<int>(
      color: Colors.transparent,
      elevation: 0,
      context: context,
      position: RelativeRect.fromLTRB(
        _messageTapPosition.dx - 480,
        _messageTapPosition.dy + 8,
        _messageTapPosition.dx + 20,
        _messageTapPosition.dy,
      ),
      items: [
        MessageMenu(
          onTapCopy: () {
            final text = (event as DlsChatMessageText?)?.plainText ?? '';
            if (text.isNotEmpty) {
              final plainText =
                  QuillEditorHelper.buildDocument(text).toPlainText();
              Clipboard.setData(ClipboardData(text: plainText));
            }
          },
          onTapReplyInThread: eventInThread
              ? null
              : () {
                  final msg = event.safeCast<DlsChatMessageText>();
                  if (msg == null) {
                    return;
                  }
                  widget.onShowMessageComments?.call(msg);
                },
          onTapQuote: () {
            final msg = event.safeCast<DlsChatMessageText>();
            if (msg == null) {
              return;
            }
            widget.onMessageQuote(msg);
          },
          onTapForward: () {
            widget.onForwardMessage(event);
          },
          onTapEdit: event.senderId == widget.matrixUserId && event.canEdit
              ? () {
                  final msg = event.safeCast<DlsChatMessageText>();
                  if (msg == null) {
                    return;
                  }
                  widget.onMarkEditMessage(msg);
                }
              : null,
          onTapDelete: event.senderId == widget.matrixUserId && event.canEdit
              ? () {
                  widget.onDeleteMessage(event);
                }
              : null,
          onTapSelect: () {
            final msg = event.safeCast<DlsChatMessageText>();
            if (msg == null) {
              return;
            }
            widget.onSelectMessage(msg);
          },
        ),
      ],
    ).then((value) {
      setState(() {
        _menuMessageId = null;
      });
      return value;
    });
  }

  void _updateOpponentLastReadDate() {
    final sorted = widget.readMarkers
        .where((e) => e.userId != widget.matrixUserId)
        .sorted((a, b) => a.timestamp.compareTo(b.timestamp));
    final lastReadDate = sorted.firstOrNull;
    _opponentLastReadDate.value = lastReadDate?.timestamp ?? DateTime(1970);
  }
}

class _ThreadMainMessageBuilder extends StatelessWidget {
  const _ThreadMainMessageBuilder({
    required this.message,
    required this.count,
    this.nextMessage,
  });

  final int count;
  final DlsChatMessageText message;
  final Widget? nextMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ChatMessageText(
          key: Key('ThreadMessage_${message.hashCode}'),
          message: message,
          canHover: false,
          onOpenVideo: (_) {},
          onOpenImage: (_, __) {},
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(8.w, 4.h, 8.w, 16.h),
          child: Row(
            children: [
              const Expanded(child: DLSDivider()),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Text(
                  S.of(context).chatCommentsCount(count),
                  style: context.ts_s14h22_4w400.copyWith(
                    color: context.c_text_grey,
                  ),
                ),
              ),
              const Expanded(child: DLSDivider()),
            ],
          ),
        ),
        if (nextMessage != null) nextMessage!
      ],
    );
  }
}
