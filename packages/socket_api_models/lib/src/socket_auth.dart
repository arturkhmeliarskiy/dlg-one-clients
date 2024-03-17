import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_auth.freezed.dart';
part 'socket_auth.g.dart';

/// SocketAuth model
@freezed
class SocketAuth with _$SocketAuth {

  /// freezed factory
  factory SocketAuth({
    required String token,
  }) = _SocketAuth;

  factory SocketAuth.fromStringJson(String string) =>
      SocketAuth.fromJson(jsonDecode(string) as Map<String, dynamic>);

  SocketAuth._();

  factory SocketAuth.fromJson(Map<String, dynamic> json) =>
      _$SocketAuthFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));

}
