import 'package:flutter/material.dart';

/// Shows site name of URL
class PreviewSiteName extends StatelessWidget {
  const PreviewSiteName(
    this._siteName,
    this._textStyle, {
    Key? key,
  }) : super(key: key);
  final String? _siteName;
  final TextStyle? _textStyle;

  @override
  Widget build(BuildContext context) {
    if (_siteName == null) {
      return const SizedBox();
    }

    return Text(
      _siteName!,
      textAlign: TextAlign.left,
      style: _textStyle,
    );
  }
}
