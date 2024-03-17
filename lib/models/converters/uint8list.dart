import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// типы должны ПОЛНОСТЬЮ совпадать с типами в модели
class Uint8ListConverter implements JsonConverter<Uint8List?, List<int>?> {
  const Uint8ListConverter();

  @override
  Uint8List? fromJson(List<int>? json) {
    return json == null ? null : Uint8List.fromList(json);
  }

  @override
  List<int>? toJson(Uint8List? object) {
    return object?.toList();
  }
}