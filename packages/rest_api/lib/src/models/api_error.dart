class ApiError implements Exception {
  ApiError({
    required this.message,
    this.statusCode,
    this.data,
    this.stackTrace,
    this.parentError,
  });

  final int? statusCode;
  final String message;
  final Object? data;
  final Object? stackTrace;
  final Object? parentError;

  @override
  String toString() {
    return 'ApiError:\nstatusCode=${statusCode ?? -1}\nmessage="$message"';
  }
}
