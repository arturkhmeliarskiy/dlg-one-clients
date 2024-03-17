import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/ui/components/chat_message/view/widgets/widgets.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:rest_api/rest_api.dart';

class MessageContentBuilder extends StatelessWidget {
  const MessageContentBuilder({
    required this.message,
    required this.isHovered,
    required this.isSelectedMessage,
    required this.isSelectMode,
    required this.user,
    required this.onOpenVideo,
    required this.onOpenImage,
    required this.focusNode,
    required this.scrollController,
    required this.onSelectMessage,
    this.opponentLastReadDate,
    this.onOpenComments,
    this.onBeforeOpenMenu,
    this.onOpenMenu,
    this.onCreateTask,
    super.key,
  });

  final DlsChatMessageText message;
  final ValueNotifier<DateTime>? opponentLastReadDate;
  final bool isSelectedMessage;
  final bool isSelectMode;
  final bool isHovered;
  final DLSUser? user;
  final ValueChanged<DlsChatMessageAttachment> onOpenVideo;
  final void Function(int index, Map<String, dynamic> extra) onOpenImage;
  final ValueChanged<bool> onSelectMessage;
  final VoidCallback? onOpenComments;
  final ValueChanged<TapDownDetails>? onBeforeOpenMenu;
  final VoidCallback? onOpenMenu;
  final VoidCallback? onCreateTask;
  final FocusNode focusNode;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final isForwardedMessage =
        message.formattedText?.messageType == ChatMessageContentType.forward;
    final actualDocument = message.getActualDocument();
    final attachments = message.attachments;
    final comments = message.comments;
    final eventInThread =
        message.relatedType == DlsChatMessageRelationType.replyInThread;
    Color? bgColor;
    if (isHovered) {
      bgColor = context.c_grey_grey;
    }
    if (isSelectedMessage) {
      bgColor = context.c_blue_container;
    }
    return Container(
      margin: EdgeInsets.only(left: 5.w, top: 4.h, right: 8.w, bottom: 4.h),
      padding: EdgeInsets.only(left: 8.w, top: 8.h, right: 8.w, bottom: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        color: bgColor,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MessageUserAvatarBuilder(user: user),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 28.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: MessageUsernameTimeBuilder(
                              userName: user?.DLSUserName ?? '',
                              createdAt: message.createdAt,
                              updatedAt: message.updatedAt,
                              deletedAt: message.deletedAt,
                              opponentLastReadDate: opponentLastReadDate,
                            ),
                          ),
                          if (isHovered || isSelectedMessage || isSelectMode)
                            MessageActionsBuilder(
                              isSelected: isSelectedMessage,
                              isSelectMode: isSelectMode,
                              onSelectMessage: onSelectMessage,
                              onOpenComments:
                                  eventInThread ? null : onOpenComments,
                              onBeforeOpenMenu: onBeforeOpenMenu,
                              onOpenMenu: onOpenMenu,
                              onCreateTask: onCreateTask,
                            ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.h),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        border: isForwardedMessage
                            ? Border(
                                left: BorderSide(
                                  width: 4.w,
                                  color: context.c_grey_stoke,
                                ),
                              )
                            : null,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// тело сообщения до maxLines
                          if (!actualDocument.isEmpty())
                            Padding(
                              padding: EdgeInsets.only(
                                right: 8.w,
                                left: isForwardedMessage ? 8.w : 0,
                              ),
                              child: ChatTextMessageBuilder(
                                document: actualDocument,
                                deletedAt: message.deletedAt,
                                focusNode: focusNode,
                                isForwardedMessage: isForwardedMessage,
                                forwardedMessageSender: message
                                    .formattedText?.forwardOriginalSender,
                                forwardedMessageDate:
                                    message.formattedText?.forwardOriginalDate,
                                scrollController: scrollController,
                              ),
                            ),

                          /// комментарии
                          if (comments.isNotEmpty &&
                              onOpenComments != null &&
                              message.deletedAt == null)
                            Padding(
                              padding: EdgeInsets.only(top: 6.h),
                              child: MessageCommentsBuilder(
                                comments: comments,
                                onOpenComments: () => onOpenComments?.call(),
                              ),
                            ),

                          /// аудиофайлы
                          if (message.deletedAt == null &&
                              attachments.any(
                                (e) => e.type == DlsChatMessageType.audio,
                              ))
                            MessageAudioAttachmentBuilder(
                              attachments: attachments
                                  .where(
                                    (e) => e.type == DlsChatMessageType.audio,
                                  )
                                  .toList(),
                            ),

                          /// галерея картинок и видео
                          if (message.deletedAt == null &&
                              attachments.isNotEmpty)
                            Padding(
                              padding: EdgeInsets.only(
                                top: 4.h,
                                left: message.forwarded ? 8.w : 0,
                              ),
                              child: MediaGalleryPreview(
                                key: ValueKey(
                                  'MediaGalleryPreview_${attachments.map((e) => e.eventId).join('_')}',
                                ),
                                files: attachments,
                                onOpenVideo: onOpenVideo,
                                onOpenImage: onOpenImage,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: message.forwarded ? 4.h : 0),

          /// документы
          MessageFileAttachmentBuilder(
            attachments: attachments
                .where((e) => e.type == DlsChatMessageType.file)
                .toList(),
          ),

          /// ссылка
          Padding(
            padding: EdgeInsets.only(left: 64.w - 16.w - 16.w),
            child: MessageUrlPreviewBuilder(document: actualDocument),
          ),
        ],
      ),
    );
  }
}

extension ChatMessageContentExtension on DlsChatMessageText {
  quill.Document getActualDocument() {
    if (formattedText == null) {
      return QuillEditorHelper.buildDocument(plainText);
    } else {
      return QuillEditorHelper.buildFromList(formattedText!.data);
    }
  }
}
