import 'package:dio/dio.dart';
import 'package:rest_api/rest_api.dart';

/// Api service
class TaskEventsApi with DlsApiMixin {
  const TaskEventsApi(this._dio);

  final Dio _dio;

  Future<TaskEventModel> createEvent(CreateTaskEventRequest request) async {
    try {
      final response = await _dio.post<Map<String, Object?>>(
        '/api/events',
        data: request.toJson(),
      );
      final data = response.data;
      if (response.statusCode == 201 && data != null) {
        return TaskEventModel.fromJson(data);
      }
      // TODO check statusCode create errorHandler
      throw ApiError(
        statusCode: response.statusCode,
        message: response.data.toString(),
      );
    } catch (e, st) {
      throwApiError(e, stackTrace: st);
    }
  }

  Future<void> deleteEvent(int id) async {
    try {
      final response = await _dio.delete<Object?>('/api/events/$id');
      final data = response.data;
      if (response.statusCode == 200 && data != null) {
        return;
      }
      // TODO check statusCode create errorHandler
      throw ApiError(
        statusCode: response.statusCode,
        message: response.data.toString(),
      );
    } catch (e, st) {
      throwApiError(e, stackTrace: st);
    }
  }

  Future<TaskEventModel> updateEvent(
    int id,
    CreateTaskEventRequest request,
  ) async {
    try {
      final response = await _dio.put<Map<String, Object?>>(
        '/api/events/$id',
        data: request.toJson(),
      );
      final data = response.data;
      if (response.statusCode == 200 && data != null) {
        return TaskEventModel.fromJson(data);
      }
      // TODO check statusCode create errorHandler
      throw ApiError(
        statusCode: response.statusCode,
        message: response.data.toString(),
      );
    } catch (e, st) {
      throwApiError(e, stackTrace: st);
    }
  }

  Future<TaskEventModel> updateEventSeries(
    int id,
    CreateTaskEventRequest request,
  ) async {
    try {
      final response = await _dio.put<Map<String, Object?>>(
        '/api/events/$id/update-series',
        data: request.toJson(),
      );
      final data = response.data;
      if (response.statusCode == 200 && data != null) {
        return TaskEventModel.fromJson(data);
      }
      // TODO check statusCode create errorHandler
      throw ApiError(
        statusCode: response.statusCode,
        message: response.data.toString(),
      );
    } catch (e, st) {
      throwApiError(e, stackTrace: st);
    }
  }

  Future<TaskEventModel> makeEventSeries(
    int id,
    EventMakeSeriesRequest request,
  ) async {
    try {
      final response = await _dio.put<Map<String, Object?>>(
        '/api/events/$id/make-series',
        data: request.toJson(),
      );
      final data = response.data;
      if (response.statusCode == 200 && data != null) {
        return TaskEventModel.fromJson(data);
      }
      // TODO check statusCode create errorHandler
      throw ApiError(
        statusCode: response.statusCode,
        message: response.data.toString(),
      );
    } catch (e, st) {
      throwApiError(e, stackTrace: st);
    }
  }

  Future<DlsPaginatedResponse<TaskEventModel>> getEvents([
    GetEventsRequest? request,
  ]) async {
    try {
      final response = await _dio.get<Map<String, Object?>>(
        '/api/events',
        queryParameters: request?.toJson(),
      );
      final data = response.data;
      if (response.statusCode == 200 && data != null) {
        return DlsPaginatedResponse<TaskEventModel>.fromJson(data, (object) {
          // Expected non nullable data from server.
          // ignore: cast_nullable_to_non_nullable
          return TaskEventModel.fromJson(object as Json);
        });
      }
      // TODO check statusCode create errorHandler
      throw ApiError(
        statusCode: response.statusCode,
        message: response.data.toString(),
      );
    } catch (e, st) {
      throwApiError(e, stackTrace: st);
    }
  }

  Future<TaskEventModel> getEventById(int id) async {
    try {
      final response = await _dio.get<Map<String, Object?>>('/api/events/$id');
      final data = response.data;
      if (response.statusCode == 200 && data != null) {
        return TaskEventModel.fromJson(response.data!);
      }
      // TODO check statusCode create errorHandler
      throw ApiError(
        statusCode: response.statusCode,
        message: response.data.toString(),
      );
    } catch (e, st) {
      throwApiError(e, stackTrace: st);
    }
  }
}
