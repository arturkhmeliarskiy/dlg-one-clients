// ignore_for_file: public_member_api_docs
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'filter_priority_item.freezed.dart';

@freezed
class PriorityItem with _$PriorityItem {
  PriorityItem._();

  factory PriorityItem({
    required String title,
    Widget? icon,
    Color? color,
    TaskPriorityType? priority,
  }) = _PriorityItem;
}
