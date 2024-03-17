import 'package:freezed_annotation/freezed_annotation.dart';

enum EventNotificationType {
  @JsonValue(1)
  min15,
  @JsonValue(2)
  min30,
  @JsonValue(3)
  hour1;

  Duration get duration{
    switch(this){
      case EventNotificationType.min15:
        return const Duration(minutes: 15);
      case EventNotificationType.min30:
        return const Duration(minutes: 30);
      case EventNotificationType.hour1:
        return const Duration(hours: 1);
    }
  }
}
