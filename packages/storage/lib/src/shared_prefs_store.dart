import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storage/storage.dart';

/// Базовая реализация над [KeyValueStore] для [SharedPreferences]
///
/// Перед использованием необходимо вызывать [init]
class SharedPrefsStore implements KeyValueStore {
  /// Constructor
  SharedPrefsStore({
    required bool isWeb,
  }) : _isWeb = isWeb;

  late SharedPreferences _sharedPreferences;
  late FlutterSecureStorage _flutterSecureStorage;
  bool _initialized = false;
  final bool _isWeb;

  @override
  Future<void> init() async {
    if (!_initialized) {
      _sharedPreferences = await SharedPreferences.getInstance();
      _flutterSecureStorage = const FlutterSecureStorage();
      _initialized = true;
    }
  }

  @override
  Future<T?> read<T>(TypeStoreKey<T> typedStoreKey) async {
    await _sharedPreferences.reload();
    if (!typedStoreKey.secure || _isWeb) {
      return _sharedPreferences.get(typedStoreKey.key) as T?;
    }

    /// только тип string
    return await _flutterSecureStorage.read(key: typedStoreKey.key) as T?;
  }

  @override
  Future<bool> contains<T>(TypeStoreKey<T> typedStoreKey) async {
    await _sharedPreferences.reload();
    return _isWeb
        ? _sharedPreferences.containsKey(typedStoreKey.key)
        : await _flutterSecureStorage.containsKey(key: typedStoreKey.key);
  }

  @override
  Future<void> write<T>(TypeStoreKey<T> typedStoreKey, T? value) async {
    await _sharedPreferences.reload();

    /// удаление
    if (value == null) {
      await _flutterSecureStorage.delete(key: typedStoreKey.key);
      await _sharedPreferences.remove(typedStoreKey.key);
      return;
    }

    /// реализация незащищенного хранилища или хранилища веба
    if (!typedStoreKey.secure || _isWeb) {
      switch (T) {
        case int:
          await _sharedPreferences.setInt(
            typedStoreKey.key,
            value as int,
          );
          break;
        case String:
          await _sharedPreferences.setString(
            typedStoreKey.key,
            value as String,
          );
          break;
        case double:
          await _sharedPreferences.setDouble(
            typedStoreKey.key,
            value as double,
          );
          break;
        case bool:
          await _sharedPreferences.setBool(
            typedStoreKey.key,
            value as bool,
          );
          break;
        case List:
          await _sharedPreferences.setStringList(
            typedStoreKey.key,
            value as List<String>,
          );
          break;
      }
      return;
    }

    /// реализация защищенного хранилища других платформ
    /// только тип string
    await _flutterSecureStorage.write(
      key: typedStoreKey.key,
      value: value.toString(),
    );
  }

  @override
  Future<void> clear() async {
    await _sharedPreferences.reload();
    await _flutterSecureStorage.deleteAll();
    await _sharedPreferences.clear();
  }
}
