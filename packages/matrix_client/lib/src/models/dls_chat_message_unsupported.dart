import 'package:dls_matrix_client/dls_matrix_client.dart';

// we need that model to correctly mark unread messages
class DlsChatMessageUnsupported extends DlsChatMessage {
  DlsChatMessageUnsupported({
    required super.event,
  }) : super(
          type: DlsChatMessageType.unsupported,
          createdAt: event!.originServerTs,
        );
}
