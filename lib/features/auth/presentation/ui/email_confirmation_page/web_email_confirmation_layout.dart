import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/features/auth/presentation/bloc/reg_bloc.dart';
import 'package:dls_one/features/auth/presentation/ui/web_auth_header.dart';
import 'package:dls_one/features/auth/presentation/ui/web_screen_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WebEmailConfirmationLayout extends StatelessWidget {
  const WebEmailConfirmationLayout({
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
    return WebScreenFrame(
      child: BlocListener<RegBloc, RegState>(
        listenWhen: (previous, current) => !previous.loading && current.loading,
        listener: (context, state) {
          final bloc = BlocProvider.of<RegBloc>(context);
          DLSLoaderScope.showLoaderOf(
            context,
            future: bloc.stream.firstWhere((state) => !state.loading),
          );
        },
        child: BlocBuilder<RegBloc, RegState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                WebAuthHeader(
                  title: title,
                  subtitle:
                      S.current.registration_sms_send_to_tel(state.login ?? ''),
                ),
                SizedBox(height: 24.h),
                DLSInput(
                  hint: '0000',
                  label: S.current.registration_approve_code,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(4),
                  ],
                  errorMessage: state.failure,
                  onChanged: onUpdateCode,
                  onSubmitted: onUpdateCode,
                ),
                SizedBox(height: 8.4.h),
                Align(
                  alignment: Alignment.topLeft,
                  child: elapsed != Duration.zero
                      ? Text(
                          S.current.registration_approve_code_resend_time(
                            '00:${(59 - elapsed.inSeconds).toString().padLeft(2, '0')}',
                          ),
                          style: context.ts_s12h14w400.copyWith(
                            color: context.c_text_grey,
                          ),
                        )
                      : TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
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
                SizedBox(height: 23.h),
                ElevatedButton(
                  onPressed: onNext,
                  child: Text(S.current.next),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
