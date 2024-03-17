import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_task/create_task.dart';
import 'package:flutter/material.dart';

class AppBarTaskDefault extends StatelessWidget {
  const AppBarTaskDefault({
    required this.isActive,
    required this.onSave,
    required this.state,
    super.key,
  });

  final bool isActive;
  final VoidCallback onSave;
  final TaskState state;


  bool get _success =>
      state.maybeWhen(null, orElse: () => false, success: (_) => true);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      color: context.c_grey_grey,
      child: Row(
        children: [
          InkWell(
            onTap: onSave,
            child: Container(
              height: 32.h,
              width: 94.w,
              margin: EdgeInsets.only(left: 20.w),
              decoration: BoxDecoration(
                color: isActive ? context.c_blue : context.c_blue_disabled,
                borderRadius: BorderRadius.circular(5),
              ),
              alignment: Alignment.center,
              child: Text(
                S.current.save,
                style: context.ts_s14h14w400.copyWith(color: context.c_white_text),
              ),
            ),
          ),
          if (state.isLoading)
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
          DlsCloseButton(
            onClose: () async {
              final router = context.router;
              final answer = await showDLSDialog2(
                context,
                S.current.areYouSure,
                S.current.dataWontBeSaved,
                width: 390.w,
              );
              if(answer == null) {
                return;
              }
              if(answer.value){
                await router.pop();
              }
            },
          ),
        ],
      ),
    );
  }
}
