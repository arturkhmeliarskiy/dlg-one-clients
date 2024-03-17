import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'dls_chat_message_content.g.dart';

enum ChatMessageContentType { text, forward }

@JsonSerializable(includeIfNull: false)
class DlsChatMessageContent {
  DlsChatMessageContent({
    required this.messageType,
    required this.data,
    this.forwardOriginalSender,
    this.forwardOriginalDate,
  });

  static DlsChatMessageContent? fromJson(Map<String, dynamic> json) {
    try {
      return _$DlsChatMessageContentFromJson(json);
    } catch (_) {
      return null;
    }
  }

  factory DlsChatMessageContent.buildContent(
    List<Map<String, dynamic>> data,
  ) {
    return DlsChatMessageContent(
      messageType: ChatMessageContentType.text,
      data: data,
    );
  }

  factory DlsChatMessageContent.buildForwardContent(
    String originalSender,
    DateTime originalDate,
    List<Map<String, dynamic>> data,
  ) {
    return DlsChatMessageContent(
      messageType: ChatMessageContentType.forward,
      forwardOriginalSender: originalSender,
      forwardOriginalDate: originalDate,
      data: data,
    );
  }

  @JsonKey(name: 'message_type')
  final ChatMessageContentType messageType;
  // By design we should store original message user
  @JsonKey(name: 'forward_original_sender')
  final String? forwardOriginalSender;
  // By design we should store original message date
  @JsonKey(name: 'forward_original_date')
  final DateTime? forwardOriginalDate;
  @JsonKey(name: 'data')
  final List<Map<String, dynamic>> data;

  Map<String, dynamic> toJson() {
    return _$DlsChatMessageContentToJson(this);
  }

  @override
  String toString() {
    return jsonEncode(toJson());
  }
}
