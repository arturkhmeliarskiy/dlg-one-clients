import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class MessageLoadingFailureBuilder extends StatelessWidget {
  const MessageLoadingFailureBuilder({
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      alignment: Alignment.center,
      child: Text(message),
    );
  }
}
