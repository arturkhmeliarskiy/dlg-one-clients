import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_sprint/create_sprint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewSprintAppBar extends StatelessWidget {
  const NewSprintAppBar({required this.state, super.key});

  final SprintAuthorState state;

  bool get _success =>
      state.maybeWhen(orElse: () => false, success: (_) => true);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      color: context.c_grey_grey,
      child: Row(
        children: [
          InkWell(
            onTap: () => context
                .read<SprintAuthorBloc>()
                .add(const SprintAuthorEvent.save()),
            child: Container(
              height: 32,
              width: 154,
              margin: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: context.c_blue,
                borderRadius: BorderRadius.circular(5),
              ),
              alignment: Alignment.center,
              child: Text(
                S.current.send_to_work,
                style: context.ts_s14h14w400.copyWith(color: context.c_white_text),
              ),
            ),
          ),
          if (state.loading)
            DlsPadding.only(
              left: 8.w,
              child: SizedBox(
                width: 20.w,
                height: 20.h,
                child: const DLSPreloader(),
              ),
            ),
          if (_success)
            DlsPadding.only(
              left: 8.w,
              child: Assets.icons.check.svg(),
            ),
          const Spacer(),
          Assets.icons.ellipsisV2.svg(),
          ElevatedButton(
            onPressed: context.router.pop,
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              elevation: 0,
              shadowColor: Colors.transparent,
              backgroundColor: context.c_grey_grey,
            ),
            child: Assets.icons.times14.svg(),
          ),
        ],
      ),
    );
  }
}
