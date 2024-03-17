import 'package:dio/dio.dart';
import 'package:rest_api/rest_api.dart';

class NotificationsApi with DlsApiMixin {
  const NotificationsApi(this._dio);

  final Dio _dio;

  Future<PushToken> pushToken(PushToken pushToken) async {
    try {
      final resp = await _dio.post<dynamic>(
        '/api/push-tokens',
        data: pushToken,
      );
      return PushToken.fromJson(resp.data as Map<String, dynamic>);
    } catch (error, stackTrace) {
      throwApiError(error, stackTrace: stackTrace);
    }
  }
}
