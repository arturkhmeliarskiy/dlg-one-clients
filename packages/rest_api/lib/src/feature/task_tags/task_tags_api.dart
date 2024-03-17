import 'package:dio/dio.dart';
import 'package:rest_api/rest_api.dart';

class TasksTagsApi with DlsApiMixin {
  const TasksTagsApi(this._dio);

  final Dio _dio;

  Future<TaskTagModel> createTag(CreateTagRequest request) async {
    try {
      final response = await _dio.post<Map<String, Object?>>(
        '/api/tasks/tags',
        data: request,
      );
      if (response.statusCode == 201) {
        final model = TaskTagModel.fromJson(response.data!);
        return model;
      }
      throw ApiError(
        statusCode: response.statusCode,
        message: response.data.toString(),
      );
    } catch (error, st) {
      throwApiError(error, stackTrace: st);
    }
  }

  Future<DlsPaginatedResponse<TaskTagModel>> getTags(
    GetTagsRequest request,
  ) async {
    try {
      final response = await _dio.get<Map<String, Object?>>(
        '/api/tasks/tags',
        queryParameters: request.toJson(),
      );
      if (response.statusCode == 200) {
        return DlsPaginatedResponse<TaskTagModel>.fromJson(
          response.data!,
          // ignore: cast_nullable_to_non_nullable
          (e) => TaskTagModel.fromJson(e as Json),
        );
      }
      throw ApiError(
        statusCode: response.statusCode,
        message: response.data.toString(),
      );
    } catch (error, st) {
      throwApiError(error, stackTrace: st);
    }
  }
}
