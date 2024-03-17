import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/settings/presentation/bloc/settings_profile_add_contact_bloc.dart';
import 'package:dls_one/models/settings_profile_add_contact_page_args.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

part 'settings_profile_add_contact_data_widget.dart';
part 'settings_profile_add_contact_initial_widget.dart';

@RoutePage()
class SettingsProfileAddContactPage extends StatelessWidget {
  const SettingsProfileAddContactPage({
    required this.info,
    super.key,
  });

  final SettingsProfileAddContactPageArgs info;

  @override
  Widget build(BuildContext context) =>
      BlocProvider<SettingsProfileAddContactBloc>(
        create: (context) => SettingsProfileAddContactBloc(
          info.cType,
          restApi: context.read<DlsRestApi>(),
        ),
        child: _SettingsProfileAddContactLayout(info: info),
      );
}

class _SettingsProfileAddContactLayout extends StatefulWidget {
  const _SettingsProfileAddContactLayout({
    required this.info,
  });

  final SettingsProfileAddContactPageArgs info;

  @override
  State<_SettingsProfileAddContactLayout> createState() =>
      _SettingsProfileAddContactLayoutState();
}

class _SettingsProfileAddContactLayoutState
    extends State<_SettingsProfileAddContactLayout> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsProfileAddContactBloc,
        SettingsProfileAddContactState>(
      listener: (context, state) {
        state.whenOrNull(
          saved: () {
            context.navigateTo(const SettingsProfileRoute());
          },
        );
      },
      listenWhen: (previous, current) {
        return current.maybeWhen(
          orElse: () => false,
          saved: () => true,
        );
      },
      child: BlocBuilder<SettingsProfileAddContactBloc,
          SettingsProfileAddContactState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => Scaffold(
              backgroundColor: context.c_appbar,
              body: DLSPreloader.newDLS,
            ),
            failure: (message) => Scaffold(
              backgroundColor: context.c_appbar,
              body: Center(
                child: Text(message),
              ),
            ),
            initial: (contact, isValid) => Scaffold(
              backgroundColor: context.c_appbar,
              appBar: OldDlsAppBar(
                title: widget.info.titleAdd,
                titleStyle: context.ts_s18h21w500,
                rightButtonIcon: DLSButtonText(
                  isDisabled: !isValid,
                  text: S.current.next,
                  width: S.current.next.length * 10.w,
                  onTap: () => isValid
                      ? context.read<SettingsProfileAddContactBloc>().add(
                            const SettingsProfileAddContactEvent.requestCode(),
                          )
                      : null,
                ),
              ),
              body: _InitialWidget(
                cType: widget.info.cType,
                title: widget.info.titleAdd,
                content: widget.info.contentAdd,
                inputLabel: widget.info.inputLabelAdd,
                inputHint: widget.info.inputHintAdd,
                onChange: (String val) => context
                    .read<SettingsProfileAddContactBloc>()
                    .add(SettingsProfileAddContactEvent.update(contact: val)),
                onSubmit: () => isValid
                    ? context.read<SettingsProfileAddContactBloc>().add(
                          const SettingsProfileAddContactEvent.requestCode(),
                        )
                    : null,
              ),
            ),
            data: (contact, code, message) => Scaffold(
              backgroundColor: context.c_appbar,
              appBar: OldDlsAppBar(
                title: widget.info.titleValidate,
                titleStyle: context.ts_s18h21w500,
              ),
              body: _DataWidget(
                errorMessage: message,
                title: widget.info.titleValidate,
                content: widget.info.contentValidate(contact),
                inputLabel: widget.info.inputLabelValidate,
                inputHint: widget.info.inputHintValidate,
                onChange: (String val) {
                  context
                      .read<SettingsProfileAddContactBloc>()
                      .add(SettingsProfileAddContactEvent.update(code: val));
                  if (val.length == 4) {
                    context.read<SettingsProfileAddContactBloc>().add(
                          const SettingsProfileAddContactEvent.validateCode(),
                        );
                  }
                },
                repeatRequestCode: () => context
                    .read<SettingsProfileAddContactBloc>()
                    .add(const SettingsProfileAddContactEvent.requestCode()),
              ),
            ),
          );
        },
      ),
    );
  }
}
