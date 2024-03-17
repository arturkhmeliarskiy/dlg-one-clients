import 'package:dio/dio.dart';
import 'package:rest_api/rest_api.dart';

class TaskCheckListApi with DlsApiMixin {
  const TaskCheckListApi(this._dio);

  final Dio _dio;

  Future<DlsTasksChecklist> create(TasksChecklistCreateRequest checklist) async {
    try {
      final response = await _dio.post<Map<String, Object?>>(
        '/api/tasks/checklists',
        data: checklist,
      );
      if (response.statusCode == 201) {
        final map = response.data ?? {};
        return DlsTasksChecklist.fromJson(map);
      }
      throw ApiError(
        statusCode: response.statusCode,
        message: response.data.toString(),
      );
    } catch (e, st) {
      throw buildApiError(e, stackTrace: st);
    }
  }

  Future<DlsTasksChecklist> update(int id, TasksChecklistCreateRequest checklist) async {
    try {
      final response = await _dio.put<Map<String, Object?>>(
        '/api/tasks/checklists/$id',
        data: checklist,
      );
      if (response.statusCode == 200) {
        final map = response.data ?? {};
        return DlsTasksChecklist.fromJson(map);
      }
      throw ApiError(
        statusCode: response.statusCode,
        message: response.data.toString(),
      );
    } catch (e, st) {
      throw buildApiError(e, stackTrace: st);
    }
  }

  Future<DlsTasksChecklist> delete(int id) async {
    try {
      final response = await _dio.delete<Map<String, Object?>>(
        '/api/tasks/checklists/$id',
      );
      if (response.statusCode == 200) {
        final map = response.data ?? {};
        return DlsTasksChecklist.fromJson(map);
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
