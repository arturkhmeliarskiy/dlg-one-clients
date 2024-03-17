// ignore_for_file: public_member_api_docs
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'filter_status_item.freezed.dart';

@freezed
class StatusItem with _$StatusItem {
  StatusItem._();

  factory StatusItem({
    required String title,
    Widget? icon,
    Color? color,
    TaskStatusType? status,
  }) = _StatusItem;
}
