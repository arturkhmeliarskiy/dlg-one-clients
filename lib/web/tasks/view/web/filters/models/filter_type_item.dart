// ignore_for_file: public_member_api_docs
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_type_item.freezed.dart';

@freezed
class TypeItem with _$TypeItem {
  TypeItem._();

  factory TypeItem({
    required String title,
    Widget? icon,
  }) = _TypeItem;
}
