import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/core/widgets/src/dls_app_bar.dart';
import 'package:dls_one/features/auth/presentation/bloc/reg_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MobileRegistrationLoginLayout extends StatelessWidget {
  const MobileRegistrationLoginLayout({
    required this.emailController,
    required this.onNext,
    super.key,
  });

  final TextEditingController emailController;
  final VoidCallback onNext;

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
              title: Text(S.current.registration),
              actions: [
                TextButton(
                  onPressed: state.loginValid ? onNext : null,
                  child: Text(S.current.next),
                ),
              ],
            ),
            body: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              child: Column(
                children: [
                  Text(
                    S.current.registration_text,
                    style: context.ts_s14h22_4w400
                        .copyWith(color: context.c_text_grey),
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
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
