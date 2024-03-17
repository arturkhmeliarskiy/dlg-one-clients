import 'package:common/common.dart';
import 'package:dls_one/core/async/future_queue.dart';
import 'package:dls_one/core/widgets/dls_loader/square_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DLSLoaderScope extends StatefulWidget {
  const DLSLoaderScope({
    required this.child,
    super.key,
  });

  static void showLoaderOf<T extends Object?>(
    BuildContext context, {
    required Future<T> future,
  }) {
    final state = context.findAncestorStateOfType<_DLSLoaderScopeState>();

    if (state == null) {
      RepositoryProvider.of<DlsLogger>(context)
          .e("DLSLoaderScope: couldn't find DLSLoaderScope in context");
      return;
    }

    state._queue.add(future);
  }

  final Widget child;

  @override
  State<DLSLoaderScope> createState() => _DLSLoaderScopeState();
}

class _DLSLoaderScopeState extends State<DLSLoaderScope> {
  bool _showLoader = false;
  FocusNode? _lastFocusedNode;

  late final _queue = FutureQueue(onUpdate: _onUpdateQueueState);

  void _onUpdateQueueState(bool value) {
    setState(() {
      _showLoader = value;
      if (value) {
        final scope = FocusScope.of(context);
        _lastFocusedNode = scope.focusedChild;
        _lastFocusedNode?.unfocus();
      } else {
        _lastFocusedNode?.requestFocus();
        _lastFocusedNode = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Stack(
      children: [
        widget.child,
        if (_showLoader)
          Positioned.fill(
            child: ColoredBox(
              color: theme.scaffoldBackgroundColor.withOpacity(0.7),
              child: const Center(
                child: SquareProgressIndicator(),
              ),
            ),
          ),
      ],
    );
  }
}
