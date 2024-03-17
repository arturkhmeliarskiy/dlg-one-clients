// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dls_chat_message_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DlsChatMessageContent _$DlsChatMessageContentFromJson(
        Map<String, dynamic> json) =>
    DlsChatMessageContent(
      messageType:
          $enumDecode(_$ChatMessageContentTypeEnumMap, json['message_type']),
      data: (json['data'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      forwardOriginalSender: json['forward_original_sender'] as String?,
      forwardOriginalDate: json['forward_original_date'] == null
          ? null
          : DateTime.parse(json['forward_original_date'] as String),
    );

Map<String, dynamic> _$DlsChatMessageContentToJson(
    DlsChatMessageContent instance) {
  final val = <String, dynamic>{
    'message_type': _$ChatMessageContentTypeEnumMap[instance.messageType]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('forward_original_sender', instance.forwardOriginalSender);
  writeNotNull(
      'forward_original_date', instance.forwardOriginalDate?.toIso8601String());
  val['data'] = instance.data;
  return val;
}

const _$ChatMessageContentTypeEnumMap = {
  ChatMessageContentType.text: 'text',
  ChatMessageContentType.forward: 'forward',
};
