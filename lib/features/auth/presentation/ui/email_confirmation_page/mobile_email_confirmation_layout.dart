import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/core/widgets/src/dls_app_bar.dart';
import 'package:dls_one/features/auth/presentation/bloc/reg_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MobileEmailConfirmationLayout extends StatelessWidget {
  const MobileEmailConfirmationLayout({
    required this.title,
    required this.elapsed,
    required this.onNext,
    required this.onResend,
    required this.onUpdateCode,
    super.key,
  });

  final String title;
  final Duration elapsed;
  final VoidCallback? onNext;
  final VoidCallback onResend;
  final ValueChanged<String> onUpdateCode;

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegBloc, RegState>(
      listenWhen: (previous, current) => !previous.loading && current.loading,
      listener: (context, state) {
        DLSLoaderScope.showLoaderOf(
          context,
          future: context
              .read<RegBloc>()
              .stream
              .firstWhere((state) => !state.loading),
        );
      },
      child: BlocBuilder<RegBloc, RegState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: context.c_white_text,
            appBar: DLSAppBar(
              title: Text(title),
              actions: [
                TextButton(
                  onPressed:
                      (state.approveCode?.length ?? 0) >= 4 ? onNext : null,
                  child: Text(S.current.next),
                ),
              ],
            ),
            body: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    S.current.registration_sms_send_to_tel(state.login ?? ''),
                    style: context.ts_s14h22_4w400
                        .copyWith(color: context.c_text_grey),
                  ),
                  SizedBox(height: 20.h),
                  DLSInput(
                    hint: '0000',
                    label: S.current.registration_approve_code,
                    keyboardType: TextInputType.number,
                    errorMessage: state.failure,
                    onChanged: onUpdateCode,
                    onSubmitted: onUpdateCode,
                  ),
                  SizedBox(height: 12.h),
                  if (elapsed != Duration.zero)
                    Text(
                      S.current.registration_approve_code_resend_time(
                        '00:${(59 - elapsed.inSeconds).toString().padLeft(2, '0')}',
                      ),
                      style: context.ts_s12h14w400.copyWith(
                        color: context.c_text_grey,
                      ),
                    ),
                  if (elapsed == Duration.zero)
                    SizedBox(
                      child: TextButton(
                        onPressed: onResend,
                        child: Text(
                          S.current.registration_resend_approve_code,
                          style: TextStyle(
                            fontSize: 12.sp,
                            height: 14.6 / 12.sp,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
