// ignore_for_file: always_put_required_named_parameters_first, prefer_constructors_over_static_methods

import 'package:dls_matrix_client/src/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:matrix/matrix.dart';

enum DlsChatMessageType {
  text,
  audio,
  video,
  image,
  file,
  location,
  callStart,
  callJoin,
  callLeave,
  callEnd,
  roomMember,

  /// Task message
  task,

  /// System message
  system,

  /// Unread message marker
  unread,
  unsupported,

  /// Date message marker
  date,
  template
}

enum DlsChatMessageRelationType {
  none,
  edit,
  reaction,
  replyInThread,
}

/// Base chat message class
abstract class DlsChatMessage extends Equatable {
  /// Constructor
  const DlsChatMessage({
    this.event,
    required this.type,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory DlsChatMessage.fromMatrixEvent(
    Event event, {
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) {
    /// Edited / ReplyInThread / Reaction event.id
    final relatedEventId = event.relationshipEventId;
    final relatedType = getEventRelationType(event);

    if (event.messageType == MessageTypes.Text &&
        event.type == DlsEventTypes.CallStart) {
      return DlsChatMessageCallStart(
        event: event,
        createdAt: event.originServerTs,
      );
    } else if (event.messageType == MessageTypes.Text &&
        event.type == DlsEventTypes.CallEnd) {
      return DlsChatMessageCallEnd(
        event: event,
        createdAt: event.originServerTs,
      );
    } else if (event.messageType == MessageTypes.Text &&
        event.type == DlsEventTypes.CallJoin) {
      return DlsChatMessageCallJoin(
        event: event,
        createdAt: event.originServerTs,
      );
    } else if (event.messageType == MessageTypes.Text &&
        event.type == DlsEventTypes.CallLeave) {
      return DlsChatMessageCallLeave(
        event: event,
        createdAt: event.originServerTs,
      );
    } else if (event.type == EventTypes.RoomMember &&
        event.messageType == MessageTypes.Text) {
      return _buildMessageRoomMember(event);
    } else if (event.messageType == MessageTypes.Text) {
      return _buildMessageText(
        event,
        relatedEventId,
        relatedType,
        updatedAt,
        deletedAt,
      );
    } else if (event.messageType == MessageTypes.Audio ||
        event.messageType == MessageTypes.Video ||
        event.messageType == MessageTypes.File ||
        event.messageType == MessageTypes.Image) {
      return _buildMessageAttachment(
        event,
        relatedEventId,
        relatedType,
        updatedAt,
        deletedAt,
      );
    } else {
      return DlsChatMessageUnsupported(event: event);
    }
  }

  static DlsChatMessageRelationType getEventRelationType(Event event) {
    if (event.relationshipType == RelationshipTypes.edit) {
      return DlsChatMessageRelationType.edit;
    } else if (event.relationshipType == RelationshipTypes.reaction) {
      return DlsChatMessageRelationType.reaction;
    } else if (event.relationshipType == RelationshipTypes.reply) {
      return DlsChatMessageRelationType.replyInThread;
    } else {
      return DlsChatMessageRelationType.none;
    }
  }

  static DlsChatMessageRoomMember _buildMessageRoomMember(
    Event event,
  ) {
    return DlsChatMessageRoomMember(event: event);
  }

  static DlsChatMessageText _buildMessageText(
    Event event,
    String? relatedEventId,
    DlsChatMessageRelationType relatedType,
    DateTime? updatedAt,
    DateTime? deletedAt,
  ) {
    return DlsChatMessageText(
      event: event,
      createdAt: event.originServerTs,
      updatedAt: updatedAt,
      deletedAt: deletedAt ?? event.redactedBecause?.originServerTs,
    );
  }

  static DlsChatMessageAttachment _buildMessageAttachment(
    Event event,
    String? relatedEventId,
    DlsChatMessageRelationType relatedType,
    DateTime? updatedAt,
    DateTime? deletedAt,
  ) {
    final uri = event.getAttachmentUrl();
    if (uri == null) {
      throw Exception('Attachment URI can not be null.');
    }

    var attachType = DlsChatMessageType.file;
    if (event.messageType == MessageTypes.Audio ||
        event.text.split('.').last == 'mp3') {
      attachType = DlsChatMessageType.audio;
    } else if (event.messageType == MessageTypes.Video) {
      attachType = DlsChatMessageType.video;
    } else if (event.messageType == MessageTypes.Image) {
      attachType = DlsChatMessageType.image;
    }
    return DlsChatMessageAttachment(
      event: event,
      type: attachType,
      createdAt: event.originServerTs,
      updatedAt: updatedAt,
      deletedAt: deletedAt ?? event.redactedBecause?.originServerTs,
    );
  }

  /// Matrix [Event]
  final Event? event;

  /// Message type
  final DlsChatMessageType type;

  /// Date when message created
  final DateTime createdAt;

  /// Date when message edited
  final DateTime? updatedAt;

  /// Date when message deleted
  final DateTime? deletedAt;

  String get eventId {
    return event?.eventId ?? '';
  }

  String get roomId {
    return event?.roomId ?? '';
  }

  String get senderId {
    return event?.senderId ?? '';
  }

  String? get relatedEventId {
    return event?.relationshipEventId;
  }

  /// Matrix relation type [None, Edit, ReplyInThread]
  DlsChatMessageRelationType get relatedType {
    if (event == null) {
      return DlsChatMessageRelationType.none;
    } else {
      return getEventRelationType(event!);
    }
  }

  /// Means some attachment, part of other event
  String? get partOfEventId {
    return event?.content['part_of_event']?.toString();
  }

  bool get forwarded {
    return (event?.content['forwarded'] as bool?) ?? false;
  }

  bool get deleted {
    return event?.redacted ?? deletedAt != null;
  }

  bool get canEdit {
    return event?.canRedact ?? false;
  }

  bool get edited {
    return updatedAt != null ||
        relatedType == DlsChatMessageRelationType.edit ||
        (event?.redacted ?? false);
  }

  @override
  List<Object?> get props => [
        eventId,
        type,
        createdAt,
        updatedAt,
        deletedAt,
      ];
}
