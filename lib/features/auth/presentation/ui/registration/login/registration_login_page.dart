import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/features/auth/presentation/bloc/reg_bloc.dart';
import 'package:dls_one/features/auth/presentation/ui/registration/login/mobile_registration_login_layout.dart';
import 'package:dls_one/features/auth/presentation/ui/registration/login/web_registration_login_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class RegistrationLoginPage extends StatefulWidget {
  const RegistrationLoginPage({super.key});

  @override
  State<RegistrationLoginPage> createState() => _RegistrationLoginPageState();
}

class _RegistrationLoginPageState extends State<RegistrationLoginPage> {
  final _controller = TextEditingController();

  void _onUpdateEmail() {
    final value = _controller.text;
    context.read<RegBloc>().add(
          RegEvent.update(
            login: value,
          ),
        );
  }

  void _onNext() {
    final router = AutoRouter.of(context);
    context.read<RegBloc>().add(
      RegEvent.getApproveCode(
        callback: (bool ok) {
          if (ok) {
            router.push(const RegistrationSMSRoute());
          }
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    _controller.addListener(_onUpdateEmail);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Unfocuser(
      child: DLSPageBuilder(
        wide: WebRegistrationLoginLayout(
          emailController: _controller,
          onNext: _onNext,
        ),
        narrow: MobileRegistrationLoginLayout(
          emailController: _controller,
          onNext: _onNext,
        ),
      ),
    );
  }
}
