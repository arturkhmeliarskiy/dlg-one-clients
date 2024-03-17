import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CallSnackBarWrapper extends StatelessWidget with NotificationsMixin {
  const CallSnackBarWrapper({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SipBloc, SipState>(
      listener: (context, s) {
        s.mapOrNull(
          hangUp: (state) {
            if (state.status != null) {
              showDLSSnackBar(
                context,
                state.status!.message,
                duration: const Duration(seconds: 5),
              );
            }
          },
        );
      },
      child: child,
    );
  }
}
