import 'package:dls_matrix_client/dls_matrix_client.dart';

class DlsChatMessageCallEnd extends DlsChatMessage {
  /// Constructor
  DlsChatMessageCallEnd({
    required super.event,
    required super.createdAt,
  }) : super(
          type: DlsChatMessageType.callEnd,
        );
}
