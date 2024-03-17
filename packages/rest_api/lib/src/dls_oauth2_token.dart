import 'dart:convert';

import 'package:fresh_dio/fresh_dio.dart';

/// токен авторизации
class DLSoAuth2Token extends OAuth2Token {
  DLSoAuth2Token({
    super.tokenType,
    super.expiresIn,
    super.refreshToken,
    super.scope,
    required super.accessToken,
  });

  factory DLSoAuth2Token.fromStringJson(String string) =>
      DLSoAuth2Token.fromJson(jsonDecode(string) as Map<String, dynamic>);

  factory DLSoAuth2Token.fromJson(Map<String, dynamic> json) {
    return DLSoAuth2Token(
      accessToken: json['accessToken'].toString(),
      tokenType: json['tokenType'] != null ? json['tokenType'] as String : null,
      expiresIn: json['expiresIn'] != null ? json['expiresIn'] as int : null,
      refreshToken:
          json['refreshToken'] != null ? json['refreshToken'] as String : null,
      scope: json['scope'] != null ? json['scope'] as String : null,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['accessToken'] = accessToken;
    data['tokenType'] = tokenType;
    data['expiresIn'] = expiresIn;
    data['refreshToken'] = refreshToken;
    data['scope'] = scope;
    return data;
  }

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));
}
