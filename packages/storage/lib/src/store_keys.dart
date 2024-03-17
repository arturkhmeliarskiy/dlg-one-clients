import 'package:storage/storage.dart';

/// Статическое хранилище ключей [TypeStoreKey] используемых в приложении
class StoreKeys {
  StoreKeys._();

  static final prefsVersionKey = TypeStoreKey<int>('prefs_version_key');
  static final settings = TypeStoreKey<String>('settings');
  static final bio = TypeStoreKey<String>('bio', secure: true);
  static final pin = TypeStoreKey<String>('pin', secure: true);
  static final dLSoAuth2Token = TypeStoreKey<String>('dLSoAuth2Token', secure: true);
  static final lastUsername = TypeStoreKey<String>('lastUsername', secure: true);
  static final lastLogin = TypeStoreKey<String>('lastLogin', secure: true);
  static final requestedRoute = TypeStoreKey<String>('requestedRoute');
}
