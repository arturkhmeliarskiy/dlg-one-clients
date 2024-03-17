import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class CallTextTickerWidget extends StatefulWidget {
  const CallTextTickerWidget({
    required this.init,
    required this.style,
    super.key,
  });

  final DateTime init;
  final TextStyle style;

  @override
  State<CallTextTickerWidget> createState() => _CallTextTickerWidgetState();
}

class _CallTextTickerWidgetState extends State<CallTextTickerWidget>
    with SingleTickerProviderStateMixin {
  Duration _elapsed = Duration.zero;
  Duration _init = Duration.zero;
  late final Ticker ticker;

  @override
  void dispose() {
    ticker.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _init = DateTime.now().difference(widget.init);
    ticker = createTicker((elapsed) {
      setState(() {
        _elapsed = _init + elapsed;
      });
    })
      ..start();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      formatTimeHHMMSS(_elapsed),
      style: widget.style,
      textHeightBehavior:
      const TextHeightBehavior(applyHeightToFirstAscent: false),
    );
  }
}
