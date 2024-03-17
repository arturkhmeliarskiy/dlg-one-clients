class CalendarFreeIntervalModel {
  const CalendarFreeIntervalModel(
      {required this.startDataTime, required this.endDataTime});

  final DateTime startDataTime;
  final DateTime endDataTime;

  @override
  String toString() {
    final result =
        'CalendarFreeInterval instance, startDataTime : $startDataTime, endDataTime : $endDataTime';
    return result;
  }
}
