import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/features/auth/presentation/bloc/reg_bloc.dart';
import 'package:dls_one/features/auth/presentation/ui/setup_password/mobile_setup_password_layout.dart';
import 'package:dls_one/features/auth/presentation/ui/setup_password/web_setup_password_layout.dart';
import 'package:dls_one/features/auth/presentation/ui/web_screen_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SetupPasswordPage extends StatefulWidget {
  const SetupPasswordPage({
    required this.onDone,
    super.key,
  });

  final VoidCallback onDone;

  @override
  State<SetupPasswordPage> createState() => _SetupPasswordPageState();
}

class _SetupPasswordPageState extends State<SetupPasswordPage> {
  late RegBloc regBloc;

  void _onDone() {
    final state = regBloc.state;
    if ((state.password?.isNotEmpty ?? false) &&
        state.password == state.repassword) {
      widget.onDone();
    }
  }

  void _onChangePassword(String value) {
    regBloc.add(
      RegEvent.update(password: value),
    );
  }

  void _onChangeRepeatPassword(String value) {
    context.read<RegBloc>().add(
          RegEvent.update(repassword: value),
        );
  }

  void _onSubmitRepeatPassword(String value) {
    _onDone();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    regBloc = context.watch<RegBloc>();
  }

  @override
  Widget build(BuildContext context) {
    final content = BlocConsumer<RegBloc, RegState>(
      bloc: regBloc,
      listenWhen: (previous, current) => !previous.loading && current.loading,
      listener: (context, state) {
        DLSLoaderScope.showLoaderOf(
          context,
          future: regBloc.stream.firstWhere((state) => !state.loading),
        );
      },
      builder: (context, state) {
        return DLSPageBuilder(
          wide: WebSetupPasswordLayout(
            onDone: state.passwordsSame ? _onDone : null,
            onChangePassword: _onChangePassword,
            onChangeRepeatPassord: _onChangeRepeatPassword,
            onSubmitRepeatPassword: _onSubmitRepeatPassword,
          ),
          narrow: MobileSetupPasswordLayout(
            onDone: state.passwordsSame ? _onDone : null,
            onChangePassword: _onChangePassword,
            onChangeRepeatPassord: _onChangeRepeatPassword,
            onSubmitRepeatPassword: _onSubmitRepeatPassword,
          ),
        );
      },
    );

    return DLSPageBuilder(
      wide: WebScreenFrame(
        child: content,
      ),
      narrow: content,
    );
  }
}
