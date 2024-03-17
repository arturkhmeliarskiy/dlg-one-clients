// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

///
/// Created by Nightwelf 14.03.2023 15:56
/// Telegram: @nightwelf
///

part 'simple_group.freezed.dart';

/// SimpleGroup model
@freezed
class SimpleGroup with _$SimpleGroup {
  factory SimpleGroup({
    String? chatId,
    required String name,
    required List<DLSUser> users,
  }) = _SimpleGroup;
}
