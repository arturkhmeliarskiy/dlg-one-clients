// ignore_for_file: always_put_required_named_parameters_first

import 'package:dls_matrix_client/dls_matrix_client.dart';

class DlsChatMessageAttachment extends DlsChatMessage {
  /// Constructor
  DlsChatMessageAttachment({
    required super.event,
    required DlsChatMessageType type,
    required super.createdAt,
    super.updatedAt,
    super.deletedAt,
  })  : assert(
          type == DlsChatMessageType.image ||
              type == DlsChatMessageType.video ||
              type == DlsChatMessageType.audio ||
              type == DlsChatMessageType.file,
          'Unsupported attachment type="${type.name}"',
        ),
        super(
          type: type,
        ) {
    final supportedTypes = [
      DlsChatMessageType.image,
      DlsChatMessageType.video,
      DlsChatMessageType.audio,
      DlsChatMessageType.file,
    ];
    if (!supportedTypes.contains(type)) {
      throw Exception('Unsupported attachment type: ${type.name}');
    }
  }

  bool get isEncrypted {
    return event?.isAttachmentEncrypted ?? false;
  }

  String get fileName {
    return event?.text ?? '';
  }

  int get fileSize {
    return ((event?.content['info'] as Map<String, dynamic>?)?['size']
            as int?) ??
        -1;
  }

  String get mimeType {
    return event?.attachmentMimetype ?? '';
  }

  Uri get url {
    return event!.getAttachmentUrl()!;
  }

  DlsChatMessage copyWith({
    List<DlsChatMessageAttachment>? attachments,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) {
    return DlsChatMessageAttachment(
      event: event,
      type: type,
      createdAt: createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}
