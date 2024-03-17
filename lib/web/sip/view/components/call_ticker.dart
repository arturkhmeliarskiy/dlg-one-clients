import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CallTicker extends StatelessWidget {
  const CallTicker({
    required this.chatId,
    super.key,
  });

  final String chatId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SipBloc, SipState>(
      builder: (context, state) {
        final ind = state.activeCalls.indexWhere(
          (element) => element.callMeta.chatId == chatId,
        );
        if (!ind.isNegative && state.activeCalls[ind].callMeta.startAt != null) {
          return CallGreenTickerWidget(
            init: state.activeCalls[ind].callMeta.startAt!,
          );
        }
        return const SizedBox();
      },
    );
  }
}
