import 'package:flutter/widgets.dart';

/// позволяет потерять фокус активного виджета
class Unfocuser extends StatelessWidget {
  /// constr
  const Unfocuser({
    super.key,
    required this.child,
  });

  ///
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => !FocusScope.of(context).hasPrimaryFocus
          ? FocusScope.of(context).unfocus()
          : null,
      child: child,
    );
  }
}
