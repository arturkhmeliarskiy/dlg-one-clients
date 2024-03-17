import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:cross_file/cross_file.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/auth/stream_auth_scope.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/features/auth/presentation/bloc/reg_bloc.dart';
import 'package:dls_one/features/auth/presentation/ui/registration/personal_data/mobile_registration_personal_data_layout.dart';
import 'package:dls_one/features/auth/presentation/ui/registration/personal_data/web_registration_personal_data_layout.dart';
import 'package:dls_one/features/auth/presentation/ui/web_screen_frame.dart';
import 'package:dls_one/models/dls_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class RegistrationPersonalDataPage extends StatefulWidget {
  const RegistrationPersonalDataPage({super.key});

  @override
  State<RegistrationPersonalDataPage> createState() =>
      _RegistrationPersonalDataPageState();
}

class _RegistrationPersonalDataPageState
    extends State<RegistrationPersonalDataPage> {
  late RegBloc bloc;
  // Костыль пока не исправим логику подгрузки юзера после авторизации
  final GlobalKey _key = GlobalKey();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    bloc = context.read();
  }

  void onDone() {
    bloc.add(
      RegEvent.register(
        callback: (ok) async {
          if (ok && DlsPlatform.dlsPlatform == DlsPlatformType.mobile) {
            await context.router.replaceAll([const AuthSetupLockerRoute()]);
          } else {
            DLSLoaderScope.showLoaderOf(
              _key.currentContext!,
              future: StreamAuthScope.of(context).trySignIn(),
            );
          }
        },
      ),
    );
  }

  void _onDelete() {
    context.read<RegBloc>().add(const RegEvent.deletePhoto());
  }

  void _onPickAvatar(DLSFile file) {
      context.read<RegBloc>().add(RegEvent.update(photo: file));
  }

  void updateName(String value) {
    bloc.add(RegEvent.update(name: value));
  }

  void updateSurname(String value) {
    bloc.add(RegEvent.update(surename: value));
  }

  @override
  Widget build(BuildContext context) {
    final content = BlocListener<RegBloc, RegState>(
      key: _key,
      bloc: bloc,
      listenWhen: (previous, current) => !previous.loading && current.loading,
      listener: (context, state) {
        DLSLoaderScope.showLoaderOf(
          context,
          future: bloc.stream.firstWhere((state) => !state.loading),
        );
      },
      child: BlocBuilder<RegBloc, RegState>(
        bloc: bloc,
        builder: (context, state) {
          final canSave = (state.name?.isNotEmpty ?? false) &&
              (state.surename?.isNotEmpty ?? false);

          return DLSPageBuilder(
            narrow: MobileRegistrationPersonalDataLayout(
              onSelectAvatar: _onPickAvatar,
              deleteAvatar: _onDelete,
              onDone: canSave ? onDone : null,
              avatar: state.photo,
              updateName: updateName,
              updateSurname: updateSurname,
            ),
            wide: WebRegistrationPersonalDataLayout(
              onSelectAvatar: _onPickAvatar,
              deleteAvatar: _onDelete,
              onDone: canSave ? onDone : null,
              avatar: state.photo,
              updateName: updateName,
              updateSurname: updateSurname,
            ),
          );
        },
      ),
    );

    return DLSPageBuilder(
      wide: WebScreenFrame(child: content),
      narrow: content,
    );
  }
}
