import 'package:dls_one/features/todo/data/upcoming_todo_repository.dart';
import 'package:flutter/foundation.dart';

@immutable
class UpcomingStateData {
  const UpcomingStateData({
    required this.pages,
    required this.loadedDateTime,
    required this.showCompleted,
  });

  final TodoPages pages;

  /// Дата, до которой была произведена загрузка с бэка.
  final DateTime loadedDateTime;
  final bool showCompleted;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is UpcomingStateData &&
        other.pages == pages &&
        other.loadedDateTime == loadedDateTime &&
        other.showCompleted == showCompleted;
  }

  @override
  int get hashCode =>
      pages.hashCode ^ loadedDateTime.hashCode ^ showCompleted.hashCode;

  UpcomingStateData copyWith({
    TodoPages? pages,
    DateTime? loadedDateTime,
    bool? showCompleted,
  }) {
    return UpcomingStateData(
      pages: pages ?? this.pages,
      loadedDateTime: loadedDateTime ?? this.loadedDateTime,
      showCompleted: showCompleted ?? this.showCompleted,
    );
  }
}
