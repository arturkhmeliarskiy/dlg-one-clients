import 'package:freezed_annotation/freezed_annotation.dart';

part 'popup_menu_model.freezed.dart';

@freezed
class PopupMenuModel with _$PopupMenuModel {
  const factory PopupMenuModel ({
    required DateTime startDateTime,
    required DateTime endDateTime,
}) = _PopupMenuModel;
}
