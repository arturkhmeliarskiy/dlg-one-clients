import 'package:dls_matrix_client/dls_matrix_client.dart';

class DlsChatMessageCallJoin extends DlsChatMessage {
  /// Constructor
  DlsChatMessageCallJoin({
    required super.event,
    required super.createdAt,
  }) : super(
          type: DlsChatMessageType.callJoin,
        );
}
