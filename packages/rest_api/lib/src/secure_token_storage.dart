import 'package:fresh_dio/fresh_dio.dart';
import 'package:rest_api/src/dls_oauth2_token.dart';
import 'package:storage/storage.dart';

/// хранилище токена авторизации
class SecureTokenStorage implements TokenStorage<DLSoAuth2Token> {
  /// Constructor
  SecureTokenStorage({
    required KeyValueStore store,
  })  : _store = store,
        super();

  final KeyValueStore _store;

  @override
  Future<void> delete() async {
    await _store.write(StoreKeys.dLSoAuth2Token, null);
  }

  @override
  Future<DLSoAuth2Token?> read() async {
    final s = await _store.read(StoreKeys.dLSoAuth2Token);
    if (s != null) {
      return DLSoAuth2Token.fromStringJson(s);
    }
    return null;
  }

  @override
  Future<void> write(DLSoAuth2Token token) async {
    await _store.write(StoreKeys.dLSoAuth2Token, token.stringify());
  }
}
