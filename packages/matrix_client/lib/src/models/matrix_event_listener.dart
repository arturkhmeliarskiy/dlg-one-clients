import 'package:matrix/matrix.dart';

abstract class MatrixEventListener {
  void onMatrixEventUpdate(EventUpdate event) {}
  void onMatrixRoomState(Event event) {}
  void onMatrixSyncUpdate(SyncUpdate event) {}
  void onMatrixPresenceChanged(CachedPresence event) {}
  void onMatrixSyncStatusUpdate(SyncStatusUpdate event) {}
  void onMatrixAccountData(BasicEvent event) {}
}
