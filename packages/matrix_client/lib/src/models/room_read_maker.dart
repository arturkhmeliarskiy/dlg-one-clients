import 'package:equatable/equatable.dart';

class RoomReadMarker extends Equatable {
  /// Constructor
  const RoomReadMarker({
    required this.userId,
    required this.eventId,
    required this.timestamp,
  });

  final String userId;
  final String eventId;
  final DateTime timestamp;

  @override
  List<Object?> get props => [
        userId,
        eventId,
        timestamp,
      ];
}
