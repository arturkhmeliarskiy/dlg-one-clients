import 'package:dio/dio.dart';
import 'package:rest_api/rest_api.dart';

class RestApiStatusInterceptor extends Interceptor {
  RestApiStatusInterceptor(this.listeners);

  List<RestStatusListener> listeners;

  /// The callback will be executed on success.
  /// If you want to continue the response, call [handler.next].
  ///
  /// If you want to complete the response with some custom data directly,
  /// you can resolve a [Response] object with [handler.resolve] and other
  /// response interceptor(s) will not be executed.
  ///
  /// If you want to complete the response with an error message,
  /// you can reject a [DioError] object with [handler.reject].
  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    for (final listener in listeners) {
      listener.onRestApiResponse(response);
    }
    handler.next(response);
  }

  /// The callback will be executed on error.
  ///
  /// If you want to continue the error , call [handler.next].
  ///
  /// If you want to complete the response with some custom data directly,
  /// you can resolve a [Response] object with [handler.resolve] and other
  /// error interceptor(s) will be skipped.
  ///
  /// If you want to complete the response with an error message directly,
  /// you can reject a [DioError] object with [handler.reject], and other
  ///  error interceptor(s) will be skipped.
  @override
  void onError(
    DioError err,
    ErrorInterceptorHandler handler,
  ) {
    for (final listener in listeners) {
      listener.onRestApiError(err);
    }
    handler.next(err);
  }
}
