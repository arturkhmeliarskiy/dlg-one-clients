import 'package:dio/dio.dart';
import 'package:rest_api/rest_api.dart';

typedef Json = Map<String, Object?>;

class TodoApi with DlsApiMixin {
  const TodoApi({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  Future<DlsPaginatedResponse<TodoModelDTO>> fetchAll({
    FetchTodoRequest? request,
  }) async {
    try {
      final response = await _dio.get<Json>(
        '/api/todos',
        queryParameters: request?.toJson(),
      );

      final statusCode = response.statusCode;
      final data = response.data;

      if (statusCode != null && statusCode.isSuccess && data != null) {
        return DlsPaginatedResponse.fromJson(data, (data) {
          // С бэкенда ожидается список из не nullable моделей.
          // ignore: cast_nullable_to_non_nullable
          return TodoModelDTO.fromJson(data as Json);
        });
      } else {
        throw ApiError(
          statusCode: statusCode,
          message: response.statusMessage.toString(),
          data: response.data,
        );
      }
    } catch (error, stackTrace) {
      throwApiError(error, stackTrace: stackTrace);
    }
  }

  Future<TodoModelDTO> create(UpdateTodoModelRequest model) async {
    try {
      final response = await _dio.post<Json>(
        '/api/todos',
        data: model,
      );

      final statusCode = response.statusCode;
      final data = response.data;

      if (statusCode != null && statusCode.isSuccess && data != null) {
        return TodoModelDTO.fromJson(data);
      } else {
        throw ApiError(
          statusCode: statusCode,
          message: response.statusMessage.toString(),
          data: response.data,
        );
      }
    } catch (error, stackTrace) {
      throwApiError(error, stackTrace: stackTrace);
    }
  }

  Future<TodoModelDTO> fetch(int id) async {
    try {
      final response = await _dio.get<Json>('/api/todos/$id');

      final statusCode = response.statusCode;
      final data = response.data;

      if (statusCode != null && statusCode.isSuccess && data != null) {
        return TodoModelDTO.fromJson(data);
      } else {
        throw ApiError(
          statusCode: statusCode,
          message: response.statusMessage.toString(),
          data: response.data,
        );
      }
    } catch (error, stackTrace) {
      throwApiError(error, stackTrace: stackTrace);
    }
  }

  Future<TodoModelDTO> update(int id, UpdateTodoModelRequest model) async {
    try {
      final response = await _dio.put<Json>(
        '/api/todos/$id',
        data: model,
      );

      final statusCode = response.statusCode;
      final data = response.data;

      if (statusCode != null && statusCode.isSuccess && data != null) {
        return TodoModelDTO.fromJson(data);
      } else {
        throw ApiError(
          statusCode: statusCode,
          message: response.statusMessage.toString(),
          data: response.data,
        );
      }
    } catch (error, stackTrace) {
      throwApiError(error, stackTrace: stackTrace);
    }
  }

  Future<TodoModelDTO> delete(int id) async {
    try {
      final response = await _dio.delete<Json>(
        '/api/todos/$id',
      );

      final statusCode = response.statusCode;
      final data = response.data;

      if (statusCode != null && statusCode.isSuccess && data != null) {
        return TodoModelDTO.fromJson(data);
      } else {
        throw ApiError(
          statusCode: statusCode,
          message: response.statusMessage.toString(),
          data: response.data,
        );
      }
    } catch (error, stackTrace) {
      throwApiError(error, stackTrace: stackTrace);
    }
  }
}

extension on int {
  bool get isSuccess => this ~/ 200 == 1;
}
