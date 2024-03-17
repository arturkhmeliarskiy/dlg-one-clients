import 'dart:async';

class DlsDebounce {
  DlsDebounce(this.delay);

  final Duration delay;
  Timer? _timer;

  void call(void Function() callback) {
    _timer?.cancel();
    _timer = Timer(delay, callback);
  }

  void dispose() {
    _timer?.cancel();
  }
}
