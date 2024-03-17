import 'package:dls_matrix_client/dls_matrix_client.dart';

class DlsChatMessageCallStart extends DlsChatMessage {
  /// Constructor
  DlsChatMessageCallStart({
    required super.event,
    required super.createdAt,
  }) : super(
          type: DlsChatMessageType.callStart,
        );
}
