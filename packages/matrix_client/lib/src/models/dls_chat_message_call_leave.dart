import 'package:dls_matrix_client/dls_matrix_client.dart';

class DlsChatMessageCallLeave extends DlsChatMessage {
  /// Constructor
  DlsChatMessageCallLeave({
    required super.event,
    required super.createdAt,
  }) : super(
          type: DlsChatMessageType.callLeave,
        );
}
