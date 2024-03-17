import 'package:dls_matrix_client/dls_matrix_client.dart';

class DlsChatMessageDateMarker extends DlsChatMessage {
  /// Constructor
  const DlsChatMessageDateMarker({
    required super.createdAt,
  }) : super(
          type: DlsChatMessageType.date,
        );
}
