import 'package:dio/dio.dart';

abstract class RestStatusListener {
  void onRestApiResponse(Response<dynamic> response);
  void onRestApiError(DioError err);
}
