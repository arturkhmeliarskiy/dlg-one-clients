import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:matrix/matrix.dart';

class RoomTimelineEvents {
  /// Constructor
  RoomTimelineEvents({
    required this.timeline,
    required this.messages,
  });

  final Timeline timeline;
  final List<Event> messages;
}
