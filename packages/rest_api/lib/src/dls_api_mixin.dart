import 'package:dio/dio.dart';
import 'package:rest_api/rest_api.dart';

mixin DlsApiMixin {
  @Deprecated('Use throwApiError instead')
  ApiError buildApiError(dynamic error, {dynamic stackTrace}) {
    if (error is DioError) {
      return ApiError(
        statusCode: error.response?.statusCode,
        message: error.message,
        data: error.response?.data,
        stackTrace: stackTrace,
      );
    } else if (error is ApiError) {
      return error;
    } else {
      return ApiError(
        message: error.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  Never throwApiError(Object error, {required StackTrace stackTrace}) {
    var convertedError = error;
    if (error is DioError) {
      convertedError = ApiError(
        statusCode: error.response?.statusCode,
        message: error.message,
        data: error.response?.data,
        stackTrace: stackTrace,
        parentError: error,
      );
    } else if (error is! ApiError) {
      convertedError = ApiError(
        message: error.toString(),
        stackTrace: stackTrace,
        parentError: error,
      );
    }

    Error.throwWithStackTrace(convertedError, stackTrace);
  }
}
