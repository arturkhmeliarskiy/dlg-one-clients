import 'package:flutter/foundation.dart';

enum EditingCredentials {
  own,
  department,
}

enum AccessRights {
  reading,
  editing,
}

@immutable
class PositionPermission {
  const PositionPermission({
    this.task = EditingCredentials.own,
    this.sprint = EditingCredentials.own,
    this.event = EditingCredentials.own,
    this.spaces = AccessRights.reading,
  });

  final EditingCredentials task;
  final EditingCredentials sprint;
  final EditingCredentials event;
  final AccessRights spaces;

  PositionPermission copyWith({
    EditingCredentials? task,
    EditingCredentials? sprint,
    EditingCredentials? event,
    AccessRights? spaces,
  }) {
    return PositionPermission(
      task: task ?? this.task,
      sprint: sprint ?? this.sprint,
      event: event ?? this.event,
      spaces: spaces ?? this.spaces,
    );
  }
}
