import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/textroom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matrix/matrix.dart';

class Bell extends StatelessWidget {
  const Bell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TextRoomBloc, TextRoomState>(
      builder: (context, state) {
        return context.read<TextRoomBloc>().room.pushRuleState == PushRuleState.dontNotify
            ? Assets.icons.bellSlash1.svg(
          width: 18.w,
          height: 18.h,
          color: context.c_placeholder,
        )
            : Container();
      },
    );
  }
}
