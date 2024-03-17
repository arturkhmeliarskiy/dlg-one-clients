import 'package:dio/dio.dart';
import 'package:rest_api/rest_api.dart';

/// Sprints Api Http requests with task/sprints endpoint
class SprintsApi with DlsApiMixin {
  /// Constructor of SprintsApi
  const SprintsApi(this._dio);

  final Dio _dio;

  /// Gettting Sprints list
  Future<DlsPaginatedResponse<DlsSprintModel>> getSprints({
    GetSprintsRequest? request,
  }) async {
    try {
      final response = await _dio.get<Map<String, Object?>>(
        '/api/sprints',
        queryParameters: request?.toJson(),
      );
      if (response.statusCode == 200) {
        final map = response.data ?? {};
        return DlsPaginatedResponse<DlsSprintModel>.fromJson(map, (object) {
          // Expected non nullable value from server.
          // ignore: cast_nullable_to_non_nullable
          final json = object as Json;

          return DlsSprintModel.fromJson(json);
        });
      }
      // TODO check statusCode create errorHandler
      throw ApiError(
        statusCode: response.statusCode,
        message: response.data.toString(),
      );
    } catch (e, st) {
      throw buildApiError(e, stackTrace: st);
    }
  }

  Future<DlsSprintModel> getSprintById(int id) async {
    try {
      final response = await _dio.get<Map<String, Object?>>('/api/sprints/$id');
      if (response.statusCode == 200) {
        final map = response.data ?? {};
        return DlsSprintModel.fromJson(map);
      }
      // TODO check statusCode create errorHandler
      throw ApiError(
        statusCode: response.statusCode,
        message: response.data.toString(),
      );
    } catch (e, st) {
      throw buildApiError(e, stackTrace: st);
    }
  }

  Future<DlsSprintModel> createSprint(CreateSprintRequest request) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/sprints',
        data: request,
      );
      if (response.statusCode == 201) {
        final map = response.data ?? {};
        return DlsSprintModel.fromJson(map);
      }
      throw ApiError(
        statusCode: response.statusCode,
        message: response.data.toString(),
      );
    } catch (e, st) {
      throw buildApiError(e, stackTrace: st);
    }
  }

  Future<DlsSprintModel> updateSprint(
    int id,
    CreateSprintRequest request,
  ) async {
    try {
      final response = await _dio.put<Map<String, Object?>>(
        '/api/sprints/$id',
        data: request,
      );
      if (response.statusCode == 200) {
        final map = response.data ?? {};
        return DlsSprintModel.fromJson(map);
      }
      throw ApiError(
        statusCode: response.statusCode,
        message: response.data.toString(),
      );
    } catch (e, st) {
      throw buildApiError(e, stackTrace: st);
    }
  }

  Future<DlsSprintModel> finishSprint(int id) async {
    try {
      final response = await _dio.post<Map<String, Object?>>(
        '/api/sprints/$id/finish',
      );
      if (response.statusCode == 201) {
        final map = response.data ?? {};
        return DlsSprintModel.fromJson(map);
      }
      throw ApiError(
        statusCode: response.statusCode,
        message: response.data.toString(),
      );
    } catch (e, st) {
      throw buildApiError(e, stackTrace: st);
    }
  }
}
