import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/src/formatters.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class NotifyBeforeDropdownButton extends StatelessWidget {
  const NotifyBeforeDropdownButton({
    super.key,
    this.value,
    required this.onChanged,
  });

  final EventNotificationType? value;
  final ValueChanged<EventNotificationType?> onChanged;

  @override
  Widget build(BuildContext context) {
    return DlsDropDownButton<EventNotificationType>(
      value: value,
      items: EventNotificationType.values,
      onChanged: onChanged,
      onFormat: (v) => formatDurationBefore(v?.duration ?? const Duration(minutes: 15)),
      button: DlsArrowPickButton(
        text: formatDurationBefore(value?.duration ?? const Duration(minutes: 15)),
      ),
    );
  }
}
