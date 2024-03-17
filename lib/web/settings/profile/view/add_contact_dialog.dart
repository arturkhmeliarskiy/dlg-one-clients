import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/settings/presentation/bloc/settings_profile_add_contact_bloc.dart';
import 'package:dls_one/models/settings_profile_add_contact_page_args.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

part 'add_contact_dialog_data_widget.dart';
part 'add_contact_dialog_initial_widget.dart';

/// диалог добавления контакта к профилю
/// для состояния initial (экрана добавления контакта)
/// titleAdd - заголовок экрана
/// contentAdd - текст экрана
/// inputLabelAdd - заголовок инпута
/// inputHintAdd - подсказка в инпуте
/// для состояния data (экрана валидации через смс)
/// titleValidate - заголовок экрана
/// contentValidate - текст экрана
/// inputLabelValidate - заголовок инпута
/// inputHintValidate - подсказка в инпуте
/// cType - тип контакта
Future<String?> addContactDialog({
  required BuildContext context,
  required SettingsProfileAddContactPageArgs info,
  required VoidCallback callback,
}) {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => Dialog(
      elevation: 0,
      alignment: Alignment.center,
      insetPadding: EdgeInsets.all(12.r),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
      ),
      child: BlocProvider<SettingsProfileAddContactBloc>(
        create: (context) => SettingsProfileAddContactBloc(
          info.cType,
          restApi: context.read<DlsRestApi>(),
        ),
        child: BlocListener<SettingsProfileAddContactBloc,
            SettingsProfileAddContactState>(
          listener: (context, state) {
            state.whenOrNull(
              saved: () {
                Navigator.pop(context);
                // showDLSSnackBar(context, S.current.saved);
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
                orElse: () {
                  return DLSCard(
                    width: 400.w,
                    height: 272.h,
                    child: DLSPreloader.newDLS,
                  );
                },
                failure: (message) => DLSCard(
                  width: 400.w,
                  height: 272.h,
                  child: Center(
                    child: Text(message),
                  ),
                ),
                initial: (contact, isValid) => _InitialWidget(
                  title: info.titleAdd,
                  content: info.contentAdd,
                  inputLabel: info.inputLabelAdd,
                  inputHint: info.inputHintAdd,
                  isValid: isValid,
                  onChange: (String val) => context
                      .read<SettingsProfileAddContactBloc>()
                      .add(SettingsProfileAddContactEvent.update(contact: val)),
                  onSubmit: () => isValid
                      ? context.read<SettingsProfileAddContactBloc>().add(
                            const SettingsProfileAddContactEvent.requestCode(),
                          )
                      : null,
                ),
                data: (contact, code, message) => _DataWidget(
                  errorMessage: message,
                  title: info.titleValidate,
                  content: info.contentValidate(contact),
                  inputLabel: info.inputLabelValidate,
                  inputHint: info.inputHintValidate,
                  onBack: () =>
                      context.read<SettingsProfileAddContactBloc>().add(
                            SettingsProfileAddContactEvent.backToInit(
                              contact: contact,
                            ),
                          ),
                  onChange: (String val) {
                    context
                        .read<SettingsProfileAddContactBloc>()
                        .add(SettingsProfileAddContactEvent.update(code: val));
                    if (val.length == 4) {
                      context.read<SettingsProfileAddContactBloc>().add(
                            SettingsProfileAddContactEvent.validateCode(
                              callbackUpdate: callback,
                            ),
                          );
                    }
                  },
                  repeatRequestCode: () => context
                      .read<SettingsProfileAddContactBloc>()
                      .add(const SettingsProfileAddContactEvent.requestCode()),
                ),
              );
            },
          ),
        ),
      ),
    ),
  );
}
