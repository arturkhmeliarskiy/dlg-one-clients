import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:matrix/matrix.dart';

class DlsChatMessageText extends DlsChatMessage {
  /// Constructor
  const DlsChatMessageText({
    required super.event,
    required super.createdAt,
    super.updatedAt,
    super.deletedAt,
    this.attachments = const [],
    this.comments = const [],
  }) : super(type: DlsChatMessageType.text);

  final List<DlsChatMessageText> comments;
  final List<DlsChatMessageAttachment> attachments;

  @override
  List<Object?> get props => [
        ...super.props,
        comments,
        attachments,
      ];

  String get plainText {
    final editedContent =
        event!.content.tryGetMap<String, dynamic>('m.new_content');
    return (relatedType == DlsChatMessageRelationType.edit)
        ? editedContent?.tryGet('body')?.toString() ?? ''
        : event!.text.split('\n\n').last;
  }

  DlsChatMessageContent? get formattedText {
    final editedContent =
        event!.content.tryGetMap<String, dynamic>('m.new_content');
    final formattedBody = (relatedType == DlsChatMessageRelationType.edit)
        ? editedContent?.tryGet('formatted_body')
        : event!.content.tryGet('formatted_body');
    return (formattedBody != null && formattedBody is Map<String, dynamic>)
        ? DlsChatMessageContent.fromJson(formattedBody)
        : null;
  }

  DlsChatMessageText copyWith({
    Event? event,
    List<DlsChatMessageText>? comments,
    List<DlsChatMessageAttachment>? attachments,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) {
    return DlsChatMessageText(
      event: event ?? this.event,
      comments: comments?.toList() ?? this.comments,
      attachments: attachments?.toList() ?? this.attachments,
      createdAt: createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}
