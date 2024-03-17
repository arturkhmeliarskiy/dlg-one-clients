import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/features/auth/presentation/bloc/reg_bloc.dart';
import 'package:dls_one/features/auth/presentation/ui/web_auth_header.dart';
import 'package:dls_one/features/auth/presentation/ui/web_screen_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WebRegistrationLoginLayout extends StatelessWidget {
  const WebRegistrationLoginLayout({
    required this.emailController,
    required this.onNext,
    super.key,
  });

  final TextEditingController emailController;
  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    return WebScreenFrame(
      child: BlocListener<RegBloc, RegState>(
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
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                WebAuthHeader(
                  title: S.current.registration,
                  subtitle: S.current.registration_text,
                ),
                SizedBox(height: 20.h),
                DLSInput(
                  controller: emailController,
                  hint: S.current.registration_tel_ex,
                  label: S.current.email,
                  errorMessage: state.failure,
                  onSubmitted: (_) {
                    onNext();
                  },
                ),
                SizedBox(height: 24.h),
                ElevatedButton(
                  onPressed: state.loginValid ? onNext : null,
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
