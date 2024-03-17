import 'package:dls_matrix_client/dls_matrix_client.dart';

enum DlsChatMessageRoomMemberState {
  unknown,
  createdRoom,
  memberInvited,
  memberJoined,
  memberRenamed,
  memberLeave,
  memberKicked
}

class DlsChatMessageRoomMember extends DlsChatMessage {
  /// Constructor
  DlsChatMessageRoomMember({
    required super.event,
  })  : prevName = event?.prevContent?['displayname'].toString() ?? '',
        currentName = event?.content['displayname'].toString() ?? '',
        prevMembership = event?.prevContent?['membership'].toString() ?? '',
        currentMembership = event?.content['membership'].toString() ?? '',
        stateKey = event?.stateKey ?? '',
        _hasPrevContent = event?.prevContent != null,
        super(
          type: DlsChatMessageType.roomMember,
          createdAt: event!.originServerTs,
        );

  final String prevName;
  final String currentName;
  final String prevMembership;
  final String currentMembership;
  // Related UserId stored here
  final String stateKey;
  final bool _hasPrevContent;

  DlsChatMessageRoomMemberState getState() {
    if (currentMembership == 'leave' &&
        prevMembership == 'join' &&
        senderId != stateKey) {
      return DlsChatMessageRoomMemberState.memberKicked;
    } else if (_hasPrevContent && currentMembership == 'leave') {
      return DlsChatMessageRoomMemberState.memberLeave;
    } else if (_hasPrevContent && prevName != currentName) {
      return DlsChatMessageRoomMemberState.memberRenamed;
    } else if (!_hasPrevContent && currentMembership == 'invite') {
      return DlsChatMessageRoomMemberState.memberInvited;
    } else if (_hasPrevContent &&
        prevMembership == 'invite' &&
        currentMembership == 'join') {
      return DlsChatMessageRoomMemberState.memberJoined;
    } else if (!_hasPrevContent && currentMembership == 'join') {
      return DlsChatMessageRoomMemberState.createdRoom;
    } else {
      return DlsChatMessageRoomMemberState.unknown;
    }
  }

  @override
  String toString() {
    return 'RoomMember: prevName=$prevName, prevMembership=$prevMembership, currentName=$currentName, currentMembership=$currentMembership';
  }
}
