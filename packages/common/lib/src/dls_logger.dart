import 'package:logger/logger.dart';

class DlsLogger {
  /// Constructor
  DlsLogger({
    required bool isDebugMode,
  }) : _isDebugMode = isDebugMode {
    _logger = Logger();
  }

  late final Logger _logger;
  final bool _isDebugMode;

  void errorPrinter(dynamic text, [StackTrace? stackTrace]) {
    if (_isDebugMode) {
      _logger.e(text, null, stackTrace);
    }
  }

  void infoPrinter(dynamic text) {
    if (_isDebugMode) {
      _logger.i(text);
    }
  }

  void todoPrinter(dynamic text) {
    if (_isDebugMode) {
      _logger.w(text);
    }
  }

  void e(dynamic text, [StackTrace? stackTrace]) {
    if (_isDebugMode) {
      _logger.e(text, null, stackTrace);
    }
  }

  void i(dynamic text) {
    if (_isDebugMode) {
      _logger.i(text);
    }
  }

  void w(dynamic text) {
    if (_isDebugMode) {
      _logger.w(text);
    }
  }

  void dPrinter(dynamic text) {
    if (_isDebugMode) {
      _logger.d(text);
    }
  }
}
