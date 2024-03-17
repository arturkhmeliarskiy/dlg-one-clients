import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/core/widgets/src/dls_floating_action_button.dart';
import 'package:dls_one/features/settings/presentation/bloc/settings_profile_bloc.dart';
import 'package:dls_one/models/dls_file.dart';
import 'package:dls_one/models/settings_profile_add_contact_page_args.dart';
import 'package:dls_one/web/settings/profile/view/web_settings_profile_page.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage()
class SettingsProfilePage extends StatelessWidget {
  const SettingsProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => SettingsProfileBloc(
          restApi: context.read<DlsRestApi>(),
          users: context.read<UsersBloc>(),
        ),
        child: const DLSPageBuilder(
          wide: WebSettingsProfileLayout(),
          narrow: SettingsProfileLayout(),
        ),
      );
}

class SettingsProfileLayout extends StatefulWidget {
  const SettingsProfileLayout({super.key});

  @override
  State<SettingsProfileLayout> createState() => _SettingsProfileLayoutState();
}

class _SettingsProfileLayoutState extends State<SettingsProfileLayout>
    with NotificationsMixin {
  XFile? file;

  @override
  void initState() {
    super.initState();
    context.read<SettingsProfileBloc>().add(const SettingsProfileEvent.read());
  }

  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final mainPhoneController = TextEditingController();
  final List<TextEditingController> phonesControllers = [];
  final List<TextEditingController> emailsControllers = [];

  @override
  void dispose() {
    nameController.dispose();
    surnameController.dispose();
    mainPhoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.c_appbar,
      appBar: OldDlsAppBar(
        title: S.current.personal_data,
        titleStyle: context.ts_s18h21w500,
        rightButtonIcon: BlocBuilder<SettingsProfileBloc, SettingsProfileState>(
          builder: (context, state) => state.maybeWhen(
            orElse: () => const SizedBox(width: 1),
            data: (
              name,
              surname,
              photo,
              mainPhone,
              phones,
              emails,
              isFormValid,
              errorMessage,
              transaction,
            ) =>
                DLSButtonText(
              isDisabled: !(isFormValid ?? false),
              text: S.current.save,
              width: 75.w,
              onTap: onSave,
            ),
          ),
        ),
        height: 60.h,
      ),
      body: SingleChildScrollView(
        child: BlocListener<SettingsProfileBloc, SettingsProfileState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              data: (
                name,
                surname,
                mainEmail,
                photo,
                phones,
                emails,
                isFormValid,
                errorMessage,
                transaction,
              ) {
                /// загрузка данных в контроллеры
                nameController.text = name;
                surnameController.text = surname;
                mainPhoneController.text = mainEmail;

                /// чистим контроллеры
                for (var i = 0; i < emailsControllers.length; i++) {
                  emailsControllers[i].dispose();
                }
                emailsControllers.clear();
                for (var i = 0; i < phonesControllers.length; i++) {
                  phonesControllers[i].dispose();
                }
                phonesControllers.clear();
                for (var i = 0; i < (emails ?? []).length; i++) {
                  emailsControllers
                      .add(TextEditingController(text: emails![i].contact));
                }
                for (var i = 0; i < (phones ?? []).length; i++) {
                  phonesControllers
                      .add(TextEditingController(text: phones![i].contact));
                }
              },
            );
          },
          listenWhen: (previous, current) => current.maybeWhen(
            orElse: () => false,
            data: (
              name,
              surname,
              mainPhone,
              photo,
              phones,
              emails,
              isFormValid,
              errorMessage,
              transaction,
            ) {
              /// нужна загрузка данных в контроллеры?
              return nameController.text != name ||
                  surnameController.text != surname ||
                  mainPhoneController.text != mainPhone ||
                  phonesControllers.length != phones?.length ||
                  emailsControllers.length != emails?.length;
            },
          ),
          child: BlocBuilder<SettingsProfileBloc, SettingsProfileState>(
            builder: (context, state) {
              return state.when(
                initial: () => DlsPadding.only(
                  top: 50.h,
                  child: DLSPreloader.newDLS,
                ),
                loading: () => DlsPadding.only(
                  top: 50.h,
                  child: DLSPreloader.newDLS,
                ),
                failure: (message) => DlsFailure(message: message),
                data: (
                  name,
                  surname,
                  mainPhone,
                  photo,
                  phones,
                  emails,
                  isFormValid,
                  errorMessage,
                  transaction,
                ) =>
                    Column(
                  children: [
                    SizedBox(height: 20.h),
                    if (photo?.data != null || photo?.path != null)
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 50.r,
                            backgroundImage: photo?.data != null
                                ? ExtendedImage.memory(photo!.data).image
                                : ExtendedImage.network(photo?.path ?? '')
                                    .image,
                          ),
                          Container(
                            width: 108.r,
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                              onTap: _avatarPickerMenu,
                              child: CircleAvatar(
                                backgroundColor: context.c_grey_grey,
                                radius: 16.r,
                                child: Assets.icons.pen1.svg(
                                  height: 18.h,
                                  width: 18.w,
                                  colorFilter: ColorFilter.mode(
                                    context.c_text_grey,
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    else
                      GestureDetector(
                        onTap: _onPickAvatar,
                        child: CircleAvatar(
                          backgroundColor: context.c_grey_hover,
                          radius: 50.r,
                          child: DlsPadding.only(
                            left: 4.w,
                            child: Assets.icons.cameraPlus.svg(
                              width: 48.w,
                              height: 48.h,
                              color: context.c_placeholder,
                            ),
                          ),
                        ),
                      ),
                    SizedBox(height: 20.h),
                    Center(
                      child: Column(
                        children: [
                          DLSInput(
                            width: 288.w,
                            controller: nameController,
                            label: S.current.name,
                            hint: S.current.name,
                            errorMessage: errorMessage,
                            onChanged: onChangedName,
                          ),
                          SizedBox(height: 20.h),
                          DLSInput(
                            width: 288.w,
                            controller: surnameController,
                            label: S.current.surname,
                            hint: S.current.surname,
                            errorMessage: errorMessage,
                            onChanged: onChangedSurname,
                          ),
                          SizedBox(height: 20.h),
                          DLSInput(
                            width: 288.w,
                            enabled: false,
                            controller: mainPhoneController,
                            label: S.current.email,
                            hint: S.current.email,
                            errorMessage: errorMessage,
                            onChanged: onChangedMainEmail,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),

                    /// добавляемые email
                    ..._buildEmailsList(emails),
                    SizedBox(height: 4.h), // тк 12+4 = 16

                    /// добавляемые phones
                    ..._buildPhonesList(phones),
                    SizedBox(height: 80.h),
                  ],
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton:
          BlocBuilder<SettingsProfileBloc, SettingsProfileState>(
        builder: (context, state) => state.maybeWhen(
          orElse: SizedBox.new,
          data: (
            name,
            surname,
            photo,
            mainPhone,
            phones,
            emails,
            isFormValid,
            errorMessage,
            transaction,
          ) =>
              _floatingActionButton(),
        ),
      ),
    );
  }

  Future<void> _onPickAvatar({
    ImageSource source = ImageSource.gallery,
  }) async {
    final xFile = await ImagePicker().pickImage(source: source);
    if (xFile == null) {
      return;
    }
    final dlsFile = await DLSFile.fromXFile(xFile);
    // ignore: use_build_context_synchronously
    context.read<SettingsProfileBloc>().add(
          SettingsProfileEvent.update(photo: dlsFile),
        );
  }

  List<Widget> _buildEmailsList(List<DLSContact>? emails) {
    return List.generate((emails ?? []).length, (index) {
      return DlsPadding.only(
        bottom: 12.h,
        child: Flex(
          direction: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DLSInput(
              enabled: false,
              width: 258.w,
              controller: emailsControllers[index],
            ),
            Container(
              height: 44.h,
              padding: EdgeInsets.only(left: 4.w),
              alignment: Alignment.center,
              child: DLSButtonIcon(
                icon: Assets.icons.trashAlt1.svg(
                  height: 16.r,
                  width: 16.r,
                  colorFilter: ColorFilter.mode(
                    context.c_text_grey,
                    BlendMode.srcIn,
                  ),
                ),
                color: Colors.transparent,
                onTap: () => _onDeleteContact(emails![index]),
              ),
            )
          ],
        ),
      );
    });
  }

  List<Widget> _buildPhonesList(List<DLSContact>? phones) {
    return List.generate((phones ?? []).length, (index) {
      return DlsPadding.only(
        bottom: 12.h,
        child: Flex(
          direction: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DLSInput(
              enabled: false,
              width: 258.w,
              controller: phonesControllers[index],
              label: index == 0 ? S.current.phone : null,
              hint: S.current.phone,
            ),
            Container(
              height: 44.h,
              padding: EdgeInsets.only(left: 4.w),
              alignment: Alignment.center,
              child: DLSButtonIcon(
                icon: Assets.icons.trashAlt1.svg(
                  height: 16.r,
                  width: 16.r,
                  colorFilter: ColorFilter.mode(
                    context.c_text_grey,
                    BlendMode.srcIn,
                  ),
                ),
                color: Colors.transparent,
                onTap: () => _onDeleteContact(phones![index]),
              ),
            )
          ],
        ),
      );
    });
  }

  Future<void> _avatarPickerMenu() {
    return showModalBottomSheet<void>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.r),
      ),
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DLSButtonFlat(
              icon: DlsPadding.only(
                right: 8.w,
                child: Assets.icons.imageV1
                    .svg(width: 18.w, height: 18.h, color: context.c_text_grey),
              ),
              border: Border.all(color: context.c_white_text),
              text: S.current.pick_from_gallery,
              textStyle: context.ts_s14h14w400.copyWith(color: context.c_text),
              height: 48.h,
              mainAxisAlignment: MainAxisAlignment.start,
              horizontalPadding: 16.w,
              onTap: () =>
                  _onPickAvatar().then((value) => Navigator.pop(context)),
            ),
            DLSButtonFlat(
              icon: DlsPadding.only(
                right: 8.w,
                child: Assets.icons.camera
                    .svg(width: 18.w, height: 18.h, color: context.c_text_grey),
              ),
              border: Border.all(color: context.c_white_text),
              text: S.current.take_shot,
              textStyle: context.ts_s14h14w400.copyWith(color: context.c_text),
              height: 48.h,
              mainAxisAlignment: MainAxisAlignment.start,
              horizontalPadding: 16.w,
              onTap: () => _onPickAvatar(source: ImageSource.camera)
                  .then((value) => Navigator.pop(context)),
            ),
            Divider(height: 1, color: context.c_grey_stoke),
            DLSButtonFlat(
              icon: DlsPadding.only(
                right: 8.w,
                child: Assets.icons.trashAlt1
                    .svg(width: 18.w, height: 18.h, color: context.c_red),
              ),
              border: Border.all(color: context.c_white_text),
              text: S.current.delete,
              textStyle: context.ts_s14h14w400.copyWith(color: context.c_red),
              height: 48.h,
              mainAxisAlignment: MainAxisAlignment.start,
              horizontalPadding: 16.w,
              onTap: onDeletePhoto,
            ),
          ],
        );
      },
    );
  }

  Widget _floatingActionButton() {
    return DLSFloatingActionButton(
      onPressed: () async {
        return showModalBottomSheet(
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5.r),
              topRight: Radius.circular(5.r),
            ),
          ),
          builder: (context) {
            return DlsPadding.symmetric(
              horizontal: 16.h,
              vertical: 20.w,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DLSButtonText(
                    text: S.current.phone,
                    textStyle: context.ts_s14h22_4w400.copyWith(
                      color: context.c_text,
                    ),
                    onTap: () {
                      Navigator.pop(context);

                      /// settings_profile_add_contact
                      context.navigateTo(
                        SettingsProfileAddContactRoute(
                          info: SettingsProfileAddContactPageArgs(
                            cType: ContactType.phone,
                            titleAdd: S.current.titleAddPhone,
                            contentAdd: S.current.contentAddPhone,
                            inputLabelAdd: S.current.inputLabelAddPhone,
                            inputHintAdd: S.current.inputHintAddPhone,
                            titleValidate: S.current.titleValidatePhone,
                            contentValidate: S.current.contentValidatePhone,
                            inputLabelValidate:
                                S.current.inputLabelValidatePhone,
                            inputHintValidate: S.current.inputHintValidatePhone,
                          ),
                        ),
                      );
                      AutoRouter.of(context).addListener(watchRouteChange);
                    },
                  ),
                  SizedBox(height: 20.h),
                  DLSButtonText(
                    text: S.current.email,
                    textStyle: context.ts_s14h22_4w400.copyWith(
                      color: context.c_text,
                    ),
                    onTap: () {
                      Navigator.pop(context);

                      /// settings_profile_add_contact
                      context.navigateTo(
                        SettingsProfileAddContactRoute(
                          info: SettingsProfileAddContactPageArgs(
                            cType: ContactType.email,
                            titleAdd: S.current.titleAddEmail,
                            contentAdd: S.current.contentAddEmail,
                            inputLabelAdd: S.current.inputLabelAddEmail,
                            inputHintAdd: S.current.inputHintAddEmail,
                            titleValidate: S.current.titleValidateEmail,
                            contentValidate: S.current.contentValidateEmail,
                            inputLabelValidate:
                                S.current.inputLabelValidateEmail,
                            inputHintValidate: S.current.inputHintValidateEmail,
                          ),
                        ),
                      );
                      AutoRouter.of(context).addListener(watchRouteChange);
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void watchRouteChange() {
    final router = AutoRouter.of(context);
    if (!router.currentPath.contains('/settings_profile_add_contact')) {
      context
          .read<SettingsProfileBloc>()
          .add(const SettingsProfileEvent.read());
      AutoRouter.of(context)
          .removeListener(watchRouteChange); // remove listener
    }
  }

  void deleteContact(DLSContact contact, ContactType? cType) {
    context
        .read<SettingsProfileBloc>()
        .add(SettingsProfileEvent.deleteDLSContact(contact));
  }

  Future<void> _onDeleteContact(DLSContact contact) async {
    final String title;
    final contactValue = contact.contact ?? '';
    switch (contact.cType) {
      case ContactType.email:
        title = S.current.delete_email(contactValue);
        break;
      // TODO: По какой то причине в список телефонов прилетает все подряд.
      case ContactType.unknown:
      case null:
      case ContactType.phone:
        title = S.current.delete_phone(contactValue);
        break;
    }
    final answer = await showDLSDialog(
      context,
      title,
      null,
    );

    if (answer?.value ?? false) {
      deleteContact(
        contact,
        contact.cType,
      );
    }
  }

  void onDeletePhoto() {
    showDLSDialog(context, null, S.current.del_ava, width: 220.w).then(
      (value) {
        if (value == DLSDialogAnswer.confirm) {
          context
              .read<SettingsProfileBloc>()
              .add(const SettingsProfileEvent.deletePhoto());
        }
        Navigator.pop(context);
      },
    );
  }

  void onSave() => context
      .read<SettingsProfileBloc>()
      .add(const SettingsProfileEvent.save());

  void onCancel() => context
      .read<SettingsProfileBloc>()
      .add(const SettingsProfileEvent.read());

  void onChangedName(String val) => context
      .read<SettingsProfileBloc>()
      .add(SettingsProfileEvent.update(name: val));

  void onChangedSurname(String val) => context
      .read<SettingsProfileBloc>()
      .add(SettingsProfileEvent.update(surname: val));

  void onChangedMainEmail(String val) => context
      .read<SettingsProfileBloc>()
      .add(SettingsProfileEvent.update(mainEmail: val));
}
