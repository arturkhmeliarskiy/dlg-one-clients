import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/expand_text.dart';
import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  const ExpandableText({
    super.key,
    required this.text,
    required this.style,
    this.maxLines = 100,
    this.minLines = 7,
  });

  final String text;
  final TextStyle style;
  final int maxLines;
  final int minLines;

  @override
  ExpandableTextState createState() => ExpandableTextState();
}

class ExpandableTextState extends State<ExpandableText>
    with TickerProviderStateMixin {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedSize(
          duration: const Duration(milliseconds: 250),
          child: ConstrainedBox(
            constraints: expanded
                ? const BoxConstraints()
                : const BoxConstraints(maxHeight: 200),
            child: Text(
              widget.text,
              style: widget.style,
              overflow: TextOverflow.ellipsis,
              maxLines: expanded ? widget.maxLines : widget.minLines,
            ),
          ),
        ),
        expanded
            ? ExpandText(
                onChange: () {
                  setState(() {
                    expanded = false;
                  });
                },
                text: S.current.wrap,
              )
            : ExpandText(
                onChange: () {
                  setState(() {
                    expanded = true;
                  });
                },
                text: S.current.show_full,
                isOpen: true,
              )
      ],
    );
  }
}
