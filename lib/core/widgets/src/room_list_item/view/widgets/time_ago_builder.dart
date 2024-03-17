import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/ui/components/chat_message/chat_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

class TimeAgoBuilder extends StatelessWidget {
  const TimeAgoBuilder({
    required this.lastUpdateTime,
    super.key,
  });

  final DateTime lastUpdateTime;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AgoUpdaterBloc, AgoUpdaterState>(
      builder: (context, state) {
        return Text(
          timeago.format(lastUpdateTime),
          style: context.ts_s10h11_7w400.copyWith(color: context.c_text_grey),
          maxLines: 1,
          textAlign: TextAlign.end,
        );
      },
    );
  }
}
