import 'package:freezed_annotation/freezed_annotation.dart';

/// тип контакта
enum ContactType {
  /// неизвестно
  unknown,

  /// почта
  @JsonValue('1')
  email,

  ///телефон
  @JsonValue('2')
  phone,
}
