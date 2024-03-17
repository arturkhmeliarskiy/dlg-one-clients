import 'dart:async';
import 'dart:convert';

import 'package:cross_file/cross_file.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:rest_api/rest_api.dart';
import 'package:rest_api/src/models/tasks_models/dls_members_all.dart';
import 'package:storage/storage.dart';

class DlsRestApi with DlsApiMixin {
  /// Constructor
  DlsRestApi({
    required String restApiUrl,
    required SecureTokenStorage tokenStorage,
    required KeyValueStore storage,
  })  : _restApiUrl = restApiUrl,
        _tokenStorage = tokenStorage,
        _store = storage {
    _fresh = Fresh.oAuth2(
      tokenStorage: _tokenStorage,
      refreshToken: refreshToken,
    );
    _dio = Dio(BaseOptions(baseUrl: _restApiUrl))
      ..interceptors.add(
        LogInterceptor(
          request: false,
          requestHeader: false,
          responseHeader: false,
        ),
      )
      ..interceptors.add(_fresh)
      ..interceptors.add(
        RestApiStatusInterceptor(_statusListeners),
      );
    taskEventsApi = TaskEventsApi(_dio);
    sprintsApi = SprintsApi(_dio);
    notificationsApi = NotificationsApi(_dio);
    tasksTagsApi = TasksTagsApi(_dio);
    taskCheckListApi = TaskCheckListApi(_dio);
    todoApi = TodoApi(dio: _dio);
  }

  late final Fresh<OAuth2Token> _fresh;
  final String _restApiUrl;
  final SecureTokenStorage _tokenStorage;
  final KeyValueStore _store;
  late Dio _dio;

  // TODO remove after refactor
  late final TaskEventsApi taskEventsApi;
  late final SprintsApi sprintsApi;
  late final TasksTagsApi tasksTagsApi;
  late final NotificationsApi notificationsApi;
  late final TaskCheckListApi taskCheckListApi;
  late final TodoApi todoApi;
  final _statusListeners = <RestStatusListener>[];

  void addListener(RestStatusListener listener) {
    _statusListeners.add(listener);
  }

  void removeListener(RestStatusListener listener) {
    _statusListeners.remove(listener);
  }

  void cleanListeners() {
    _statusListeners.clear();
  }

  Future<void> clear() async {
    await _tokenStorage.delete();
    _dio.options.headers.remove('Authorization');
    await _fresh.clearToken();
  }

  Future<DLSoAuth2Token> refreshToken(
    OAuth2Token? oldToken,
    Dio client,
  ) async {
    final response = await client.get<dynamic>(
      '$_restApiUrl/api/users/auth/refresh',
      options: Options(
        headers: <String, dynamic>{
          'Authorization':
              'Bearer ${oldToken?.refreshToken ?? oldToken?.accessToken}'
        },
      ),
    );

    if (response.data != null) {
      final data =
          DLSRestStatus.fromJson(response.data as Map<String, dynamic>);
      if (response.statusCode == 200 &&
          data.status == DLSRestStatusMaybe.success) {
        final token = DLSoAuth2Token(
          accessToken: response.headers['authorization']![0],
          refreshToken: response.headers['authorization']![0],
        );
        client.options.headers['authorization'] =
            '${token.tokenType} ${token.accessToken}';
        return token;
      }
    }
    return DLSoAuth2Token(accessToken: 'accessToken');
  }

  Future<DLSUser> login(String username, String password) async {
    try {
      final response = await _dio.post<dynamic>(
        '/api/users/auth/login',
        data: {
          'email': username,
          'password': password,
        },
      );
      if (response.data != null) {
        final data =
            DLSRestStatus.fromJson(response.data as Map<String, dynamic>);
        if (response.statusCode == 200 &&
            data.status == DLSRestStatusMaybe.success) {
          if (response.headers['authorization'] == null) {
            throw ApiError(message: 'Absent "authorization" header!');
          } else {
            final token = DLSoAuth2Token(
              accessToken: response.headers['authorization']![0],
              refreshToken: response.headers['authorization']![0],
            );
            await clear();
            await _tokenStorage.write(token);
            _dio.options.headers['authorization'] =
                '${token.tokenType} ${token.accessToken}';
          }
          return await getMe();
        }
      }
      throw ApiError(message: 'Ошибка входа');
    } catch (error, stack) {
      throw buildApiError(error, stackTrace: stack);
    }
  }

  Future<DLSUser> getUser(String matrixUserId) async {
    try {
      final id = matrixUserId.replaceAll('@u', '').split(':').first;
      if (id.isEmpty) {
        throw ApiError(message: 'Не удалось вычислить id пользователя');
      }
      final response = await _dio.get<dynamic>('/api/users/$id');
      final u = DLSUser.fromJson(response.data! as Map<String, dynamic>);
      return u;
    } catch (error) {
      throw buildApiError(error);
    }
  }

  Future<DLSUser> fetchUser(String dlsID) async {
    try {
      final response = await _dio.get<dynamic>('/api/users/$dlsID');
      return DLSUser.fromJson(response.data! as Map<String, dynamic>);
    } catch (error) {
      throw buildApiError(error);
    }
  }

  Future<DLSUser> getMe() async {
    try {
      final response = await _dio.get<dynamic>('/api/users/auth/user');
      final me = DLSUser.fromJson(response.data! as Map<String, dynamic>);
      await saveLastUsername(lastLogin: me.email, lastUsername: me.firstName);
      return me;
    } catch (error, stack) {
      throw buildApiError(error, stackTrace: stack);
    }
  }

  Future<DLSUser> changeMe({
    required DLSUser user,
    String? firstName,
    String? lastName,
    String? email,
    String? position,
    String? number,
    String? department,
    String? snils,
    String? secondName,
    String? filePath,
    Uint8List? fileData,
    String? fileName,
    int? deleteAvatar,
  }) async {
    try {
      MultipartFile? multipartFile;
      if (fileData != null) {
        multipartFile = MultipartFile.fromBytes(
          fileData.toList(),
          filename: fileName ?? 'fileName',
        );
      }
      if (filePath != null) {
        multipartFile = await MultipartFile.fromFile(
          filePath,
          filename: fileName ?? 'fileName',
        );
      }
      final data = <String, dynamic>{};
      if (firstName != null && user.firstName != firstName) {
        data['first_name'] = firstName;
      }
      if (lastName != null && user.lastName != lastName) {
        data['last_name'] = lastName;
      }
      if (email != null && user.email != email) data['email'] = email;
      if (position != null && user.position != position) {
        data['position'] = position;
      }
      if (number != null && user.number != number) data['number'] = number;
      if (department != null && user.department != department) {
        data['department'] = department;
      }
      if (snils != null && user.snils != snils) data['snils'] = snils;
      if (secondName != null && user.secondName != secondName) {
        data['second_name'] = secondName;
      }
      if (deleteAvatar != null) data['file_del'] = deleteAvatar;
      if (multipartFile != null) data['file'] = multipartFile;
      final formData = FormData.fromMap(data);
      final resp =
          await _dio.post<dynamic>('/api/users/profile', data: formData);

      return DLSUser.fromJson(resp.data as Map<String, dynamic>);
    } catch (error) {
      throw buildApiError(error);
    }
  }

  /// сохранить имя и логин последнего входившего пользователя
  Future<void> saveLastUsername({
    String? lastUsername,
    String? lastLogin,
  }) async {
    try {
      await _store.write(StoreKeys.lastLogin, lastLogin);
      await _store.write(StoreKeys.lastUsername, lastUsername);
    } catch (error) {
      throw buildApiError(error);
    }
  }

  /// получить имя и логин последнего входившего пользователя
  /// возвращает
  /// <String, dynamic>{
  ///   'lastLogin':lastLogin,
  ///   'lastUsername':lastUsername,
  /// }
  Future<Map<String, dynamic>> getLastUsername() async {
    try {
      final lastLogin = await _store.read<String?>(StoreKeys.lastLogin);
      final lastUsername = await _store.read<String?>(StoreKeys.lastUsername);
      return <String, dynamic>{
        'lastLogin': lastLogin,
        'lastUsername': lastUsername,
      };
    } catch (error) {
      throw buildApiError(error);
    }
  }

  Future<List<DLSUser>> getUsersByMatrix(List<String> ids) async {
    try {
      final result = <DLSUser>[];
      if (ids.isEmpty) {
        return result;
      }
      final params = ids.map((e) => 'matrix_id[]=$e').join('&');
      final response =
          await _dio.get<List<dynamic>>('/api/users/by-matrix-ids?$params');
      for (var i = 0; i < response.data!.length; i++) {
        result.add(DLSUser.fromJson(response.data![i] as Map<String, dynamic>));
      }
      return result;
    } catch (error) {
      throw buildApiError(error);
    }
  }

  Future<String?> checkLoginAvailable({String? email, String? tel}) async {
    try {
      if ((email?.isEmpty ?? true) && (tel?.isEmpty ?? true)) {
        throw ApiError(
          message: 'Почта и номер телефона не могут быть одновременно пустые',
        );
      }
      final resp = await _dio
          .get<dynamic>('/api/users/register?email=$email&number=$tel');
      final status = DLSRestStatus.fromJson(resp.data as Map<String, dynamic>);
      if (status.success == true) return null;
      if (status.success == false) {
        if (status.data?.errors?.emails?.isNotEmpty ?? false) {
          return status.data?.errors?.emails!.first;
        }
        if (status.data?.errors?.numbers?.isNotEmpty ?? false) {
          return status.data?.errors?.numbers!.first;
        }
      }
      throw ApiError(message: 'Неизвестная ошибка');
    } catch (error) {
      throw buildApiError(error);
    }
  }

  Future<String> sendCode(String email) async {
    try {
      final resp =
          await _dio.post<dynamic>('/api/users/me/request-code?email=$email');
      final status = DLSRestStatus.fromJson(resp.data as Map<String, dynamic>);
      if (status.success == true) {
        return status.successText ?? 'Код отправлен';
      } else {
        throw ApiError(message: 'Ошибка отправки кода');
      }
    } catch (error) {
      throw buildApiError(error);
    }
  }

  Future<bool> checkCode(String email, String code) async {
    try {
      final formData = FormData.fromMap(<String, dynamic>{
        'email': email,
        'code': code,
      });
      final resp =
          await _dio.post<dynamic>('/api/users/me/check-code', data: formData);
      final status = DLSRestStatus.fromJson(resp.data as Map<String, dynamic>);
      return status.success ?? false;
    } catch (error) {
      throw buildApiError(error);
    }
  }

  Future<bool> register({
    required String email,
    required String code,
    required String password,
    String? fileName,
    String? filePath,
    Uint8List? fileData,
    required String firstName,
    required String lastName,
  }) async {
    try {
      MultipartFile? multipartFile;
      if (fileData != null) {
        multipartFile = MultipartFile.fromBytes(
          fileData.toList(),
          filename: fileName ?? 'fileName',
        );
      } else if (filePath != null) {
        multipartFile = await MultipartFile.fromFile(
          filePath,
          filename: fileName ?? 'fileName',
        );
      }
      final formData = FormData.fromMap(<String, dynamic>{
        'email': email,
        'code': code,
        'password': password,
        'file': multipartFile,
        'first_name': firstName,
        'last_name': lastName,
      });

      final resp =
          await _dio.post<dynamic>('/api/users/register', data: formData);
      final status = DLSRestStatus.fromJson(resp.data as Map<String, dynamic>);
      return status.success ?? false;
    } catch (error) {
      throw buildApiError(error);
    }
  }

  Future<bool> resetPassword({
    required String email,
    required String code,
    required String password,
  }) async {
    try {
      final formData = FormData.fromMap(<String, dynamic>{
        'email': email,
        'code': code,
        'password': password,
      });
      final resp =
          await _dio.post<dynamic>('/api/users/restore', data: formData);
      final status = DLSRestStatus.fromJson(resp.data as Map<String, dynamic>);

      return status.success ?? false;
    } catch (error) {
      throw buildApiError(error);
    }
  }

  Future<Uint8List> getBytes(
    Uri uri, [
    void Function(int count, int total)? onProgress,
  ]) async {
    final rs = await _dio.getUri<List<int>>(
      uri,
      options: Options(responseType: ResponseType.bytes),
      onReceiveProgress: onProgress,
    );
    if (rs.data == null) {
      return Uint8List(0);
    } else {
      return Uint8List.fromList(rs.data!);
    }
  }

  Future<bool> changePassword({
    required String password,
    required String newPassword,
  }) async {
    try {
      final resp = await _dio.put<dynamic>(
        '/api/users/password?password_old=$password&password=$newPassword',
      );
      final status = DLSRestStatus.fromJson(resp.data as Map<String, dynamic>);
      return status.success ?? false;
    } catch (error) {
      throw buildApiError(error);
    }
  }

  Future<Settings> saveSettings({
    required Settings settings,
  }) async {
    await _store.write(StoreKeys.settings, settings.stringify());
    final resp = await _dio.post<dynamic>(
      '/api/users/me/mobile-settings',
      data: settings.toJson(),
    );
    final retSettings = Settings.fromJson(resp.data as Map<String, dynamic>);
    return retSettings;
  }

  Future<Settings> getSettings() async {
    try {
      final resp = await _dio.get<dynamic>('/api/users/me/mobile-settings');
      final settings = Settings.fromJson(resp.data as Map<String, dynamic>);
      await _store.write(StoreKeys.settings, settings.stringify());
      return settings;
    } catch (e) {
      final a = await _store.read<String>(StoreKeys.settings);
      if (a != null) {
        return Settings.fromStringJson(a);
      }
      return Settings.defaultData();
    }
  }

  /// получение звонков онлайн
  @Deprecated('не используется, надо уточнить на сервер про это и удалить')
  Future<List<DLSCall>> fetchOnlineCalls() async {
    final completer = Completer<List<DLSCall>>();
    try {
      final response =
          await _dio.get<List<dynamic>>('/api/asterisk-rooms/online');
      final result = response.data?.map((e) {
        return DLSCall.fromJson(e as Map<String, dynamic>);
      }).toList();
      completer.complete(result);
    } catch (error, stack) {
      completer.completeError(buildApiError(error), stack);
    }
    return completer.future;
  }

  /// получение звонка по ид комнаты
  /// отображается только если звонок онлайн
  @Deprecated('не используется, надо уточнить на сервер про это и удалить')
  Future<DLSCall> fetchCall(String roomId) async {
    try {
      final response = await _dio.get<dynamic>('/api/matrix/$roomId/sip');
      return DLSCall.fromJson(response.data as Map<String, dynamic>);
    } on DioError catch (error) {
      throw ApiError(
        statusCode: error.response?.statusCode,
        message: error.message,
      );
    } catch (error) {
      throw buildApiError(error);
    }
  }

  /// создание звонка
  Future<DLSCall> createCall(String roomId) async {
    try {
      final response = await _dio.post<dynamic>('/api/matrix/$roomId/sip');
      return DLSCall.fromJson(response.data as Map<String, dynamic>);
    } catch (error) {
      throw buildApiError(error);
    }
  }

  /// удаление звонка
  @Deprecated('не используется, надо уточнить на сервер про это и удалить')
  Future<void> deleteCall(String roomId) async {
    try {
      /// если все ок, то вернет 1
      await _dio.delete<dynamic>('/api/matrix/$roomId/sip');
    } catch (error) {
      throw buildApiError(error);
    }
  }

  Future<XFile> downloadUri(String destDir, Uri uri, String? name) async {
    await _dio.downloadUri(uri, '$destDir/${name ?? uri.path.split('/').last}');
    return XFile('$destDir/${name ?? uri.path.split('/').last}');
  }

  Future<Response<dynamic>> customGet(String url) {
    try {
      return _dio.get<dynamic>(url);
    } catch (error) {
      throw buildApiError(error);
    }
  }

  /// POST
  /// /api/users/contacts
  /// Добавить контакт
  Future<DLSContact> contactRequestCode(
    String contact,
    ContactType cType,
  ) async {
    try {
      var cTypeInt = 1;
      switch (cType) {
        case ContactType.email:
          cTypeInt = 1;
          break;
        case ContactType.phone:
          cTypeInt = 2;
          break;
        case ContactType.unknown:
          break;
      }
      final formData = FormData.fromMap({
        'type': cTypeInt,
        'contact': contact,
      });
      final resp =
          await _dio.post<dynamic>('/api/users/contacts', data: formData);
      return DLSContact.fromJson(
        resp.data as Map<String, dynamic>,
      );
    } catch (error) {
      throw buildApiError(error);
    }
  }

  /// DELETE
  /// /api/users/contacts/{id}
  /// Удалить контакт
  Future<dynamic> contactDelete(
    int id,
  ) async {
    try {
      final resp = await _dio.delete<dynamic>('/api/users/contacts/$id');
      return resp.data;
    } catch (error) {
      throw buildApiError(error);
    }
  }

  /// PUT
  /// /api/users/me/contacts/check-code
  /// Подтвердить контакт кодом
  Future<bool> contactValidateCode(
    String contact,
    int code,
  ) async {
    try {
      final formData = FormData.fromMap({
        'contact': contact,
        'code': code,
      });
      final resp = await _dio.post<dynamic>(
        '/api/users/me/contacts/check-code',
        data: formData,
      );
      return DLSRestStatus.fromJson(resp.data as Map<String, dynamic>)
              .success ??
          false;
    } catch (error) {
      throw buildApiError(error);
    }
  }

  // GET
  // /api/tasks/
  // получаем список задач
  Future<DlsTasksAll> getTasks([
    GetTaskRequest? parameters,
    Map<String, dynamic>? filter,
  ]) async {
    try {
      final queryParameters = parameters?.toJson();
      var parameter = '';

      if (filter?.keys.contains('filter[tags][]') ?? false) {
        final tags = filter?['filter[tags][]'] as List<int>;

        for (var i = 0; i < tags.length; i++) {
          if (i == 0) {
            parameter = '?filter[tags][]=${tags[i]}';
          } else {
            parameter = '$parameter&filter[tags][]=${tags[i]}';
          }
        }
      }

      final resp = await _dio.get<Map<String, dynamic>>(
        '/api/tasks$parameter',
        queryParameters: queryParameters,
      );
      final task = DlsTasksAll.fromJson(resp.data!);
      return task;
    } catch (e) {
      throw buildApiError(e);
    }
  }

  // GET
  // /api/tasks/
  // получаем список тегов
  Future<DlsTagsAll> getTags([Map<String, dynamic>? parameters]) async {
    try {
      final resp = await _dio.get<Map<String, dynamic>>(
        '/api/tasks/tags',
        queryParameters: parameters,
      );
      final task = DlsTagsAll.fromJson(resp.data!);
      return task;
    } catch (e) {
      throw buildApiError(e);
    }
  }

  // GET
  // /api/tasks/
  // получаем список ролей
  Future<DlsMembersAll> getRole({required int roleId}) async {
    try {
      final resp = await _dio.get<Map<String, dynamic>>(
        '/api/tasks/members/role/$roleId',
      );
      final role = DlsMembersAll.fromJson(resp.data!);
      return role;
    } catch (e) {
      throw buildApiError(e);
    }
  }

  // GET
  // /api/tasks/
  // получаем список задач в Kanban
  Future<DlsTasksAll> getTasksKanban([
    GetTask 
    
     Request? parameters,
    Map<String, dynamic>? filter,
  ]) async {
    try {
      final queryParameters = parameters?.toJson();
      var parameter = '';

      if (filter?.keys.contains('filter[tags][]') ?? false) {
        final tags = filter?['filter[tags][]'] as List<int>;

        for (var i = 0; i < tags.length; i++) {
          if (i == 0) {
            parameter = '?filter[tags][]=${tags[i]}';
          } else {
            parameter = '$parameter&filter[tags][]=${tags[i]}';
          }
        }
      }

      final resp = await _dio.get<Map<String, dynamic>>(
        '/api/tasks-kanban$parameter',
        queryParameters: queryParameters,
      );
      final task = DlsTasksAll.fromJson(resp.data!);
      return task;
    } catch (e) {
      throw buildApiError(e);
    }
  }

  Future<DlsTasks> getTask(int id) async {
    try {
      final resp = await _dio.get<Map<String, Object?>>('/api/tasks/$id');
      return DlsTasks.fromJson(resp.data!);
    } catch (e) {
      throw buildApiError(e);
    }
  }

  Future<DlsTaskData> newTask() async {
    final response = await rootBundle.loadString('assets/task.json');
    final data = await jsonDecode(response) as Map<String, dynamic>;
    return DlsTaskData.fromJson(data);
  }

  Future<DlsFileData> postFile(
    List<int> value,
    String fileName,
  ) async {
    final formData = FormData.fromMap(
      {
        'file': MultipartFile.fromBytes(value, filename: fileName),
      },
    );

    final resp = await _dio.post<dynamic>('/api/files', data: formData);
    return DlsFileData.fromJson(resp.data as Map<String, dynamic>);
  }

  Future<DlsTasks> createTask(
    DlsTask task,
  ) async {
    try {
      final resp =
          await _dio.post<Map<String, Object?>>('/api/tasks', data: task);
      return DlsTasks.fromJson(resp.data!);
    } catch (error) {
      throw buildApiError(error);
    }
  }

  Future<void> deleteTask({required int id}) async {
    try {
      await _dio.delete<Map<String, Object?>>('/api/tasks/$id');
    } catch (error, stackTrace) {
      throw buildApiError(error, stackTrace: stackTrace);
    }
  }

  /// GET
  /// /api/users?filter[search]=
  /// получаем список задач
  Future<DLSSearchResultUsers> searchUsers(String query) async {
    try {
      // TODO set queryParameters instead of String
      final resp = await _dio.get<dynamic>('/api/users?filter[search]=$query');
      final searchResp =
          DLSSearchResp.fromJson(resp.data as Map<String, dynamic>);
      return DLSSearchResultUsers(
        data: searchResp.data ?? [],
        nextPage: searchResp.meta?.currentPage != null
            ? searchResp.meta!.currentPage! + 1
            : null,
        prevPage: searchResp.meta?.currentPage != 1
            ? searchResp.meta!.currentPage! - 1
            : null,
      );
    } catch (e, stackTrace) {
      throw buildApiError(e, stackTrace: stackTrace);
    }
  }

  // PUT
  // /api/tasks/{id}
  Future<DlsTasks> updateTask({
    required DlsTask value,
    required int id,
  }) async {
    try {
      final resp =
          await _dio.put<Map<String, Object?>>('/api/tasks/$id', data: value);

      return DlsTasks.fromJson(resp.data ?? {});
    } catch (error, stackTrace) {
      throw buildApiError(error, stackTrace: stackTrace);
    }
  }

  // PUT
  // /api/tasks-kanban/{id}
  Future<DlsTasks> updateTaskKanban({
    required int positionNumber,
    required int statusId,
    required int id,
  }) async {
    try {
      final resp = await _dio.put<dynamic>(
        '/api/tasks-kanban/$id',
        data: {
          'status_id': statusId,
          'position_number': positionNumber,
        },
      );

      return DlsTasks.fromJson(resp.data as Map<String, dynamic>);
    } catch (error, stackTrace) {
      throw buildApiError(error, stackTrace: stackTrace);
    }
  }
}
