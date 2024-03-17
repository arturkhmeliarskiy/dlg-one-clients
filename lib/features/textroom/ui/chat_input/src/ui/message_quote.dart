import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

class MessageQuote extends StatefulWidget {
  const MessageQuote({
    required this.messageQuoteController,
    super.key,
  });

  final quill.QuillController messageQuoteController;

  @override
  State<MessageQuote> createState() => _MessageQuoteState();
}

class _MessageQuoteState extends State<MessageQuote> {
  final _messageQuoteScrollController = ScrollController();
  late final FocusNode _messageQuoteFocusNode;

  @override
  void initState() {
    super.initState();
    _messageQuoteFocusNode = FocusNode(canRequestFocus: false);
    widget.messageQuoteController.addListener(onNewMessageQuote);
  }

  void onNewMessageQuote() => setState(() {});

  @override
  void dispose() {
    widget.messageQuoteController.removeListener(onNewMessageQuote);
    _messageQuoteScrollController.dispose();
    _messageQuoteFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.messageQuoteController.document.isEmpty()) {
      return const SizedBox();
    }
    return ConstrainedBox(
      constraints: BoxConstraints.loose(Size.fromHeight(72.h)),
      child: quill.QuillEditor(
        controller: widget.messageQuoteController,
        readOnly: true,
        scrollController: _messageQuoteScrollController,
        focusNode: _messageQuoteFocusNode,
        scrollable: true,
        padding: EdgeInsets.zero,
        autoFocus: true,
        expands: false,
      ),
    );
  }
}