import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

/// для генерации номера транзакции
String get getUuid => const Uuid().v4();

String get getRandomString => const Uuid().v4().replaceAll('-', '');

/// текст
/// перевести первый символ в верхний регистр
String txt(String? text, {bool upperCaseFistSymbol = false}) {
  /// перевести первый символ в верхний регистр?
  if (upperCaseFistSymbol && text?[0] != null) {
    return (text![0].toUpperCase() + text.substring(1))
        .replaceAll('', '\u{200B}');
  }
  return (text ?? '').replaceAll('', '\u{200B}');
}

// Format File Size
String getFileSizeString({required int bytes, int decimals = 0}) {
  if (bytes <= 0) return '0 Bytes';
  const suffixes = [' Bytes', ' KB', ' MB', ' GB', ' TB'];
  final i = (log(bytes) / log(1024)).floor();
  return ((bytes / pow(1024, i)).toStringAsFixed(decimals)) + suffixes[i];
}

Map<String, String> getRoomIdByCurrentPath(BuildContext context) {
  try {
    var routeParams = context.watchRouter.stackData.firstOrNull?.pathParams;

    if (routeParams?.isEmpty ?? true) {
      routeParams = context.topRoute.pathParams;
    }

    final chatId = routeParams?.getString('chatId', '');
    final server = routeParams?.getString('server', '');

    if (chatId?.isEmpty ?? true) {
      return {};
    }

    if (server?.isEmpty ?? true) {
      return {};
    }

    return {chatId!: server!};
  } catch (_) {
    return {};
  }
}
