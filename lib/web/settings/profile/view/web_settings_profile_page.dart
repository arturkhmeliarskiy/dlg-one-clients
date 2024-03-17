import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/dls_app_bar.dart';
import 'package:dls_one/models/dls_file.dart';
import 'package:dls_one/models/settings_profile_add_contact_page_args.dart';
import 'package:dls_one/web/settings/profile/bloc/web_settings_profile_bloc.dart';
import 'package:dls_one/web/settings/profile/view/add_contact_dialog.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';
import 'package:url_launcher/url_launcher.dart';

class WebSettingsProfileLayout extends StatefulWidget {
  const WebSettingsProfileLayout({super.key});

  @override
  State<WebSettingsProfileLayout> createState() =>
      _WebSettingsProfileLayoutState();
}

class _WebSettingsProfileLayoutState extends State<WebSettingsProfileLayout> {
  @override
  void initState() {
    super.initState();
    context.read<SettingsProfileBloc>().add(const SettingsProfileEvent.read());
  }

  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final mainPhoneController = TextEditingController();
  final phonesControllers = <TextEditingController>[];
  final emailsControllers = <TextEditingController>[];

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
      backgroundColor: context.c_white_text,
      appBar: DLSAppBar(
        automaticallyImplyLeading: false,
        title: Text(S.current.profile),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
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
                mainEmail,
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
                    mainPhoneController.text != mainEmail ||
                    phonesControllers.length != phones?.length ||
                    emailsControllers.length != emails?.length;
              },
            ),
            child: BlocBuilder<SettingsProfileBloc, SettingsProfileState>(
              builder: (context, state) {
                return state.when(
                  initial: () => DLSPreloader.newDLS.paddingOnly(top: 50.h),
                  loading: () => DLSPreloader.newDLS.paddingOnly(top: 50.h),
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
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: Flex(
                          mainAxisSize: MainAxisSize.min,
                          direction: Axis.vertical,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            WebPhotoPicker(
                              image: photo?.data.isNotEmpty ?? false
                                  ? ExtendedImage.memory(photo!.data).image
                                  : photo?.path != null
                                      ? ExtendedImage.network(photo!.path!)
                                          .image
                                      : null,
                              onChangedPhoto: onChangedPhoto,
                              onDeletePhoto: onDeletePhoto,
                            ),
                            SizedBox(height: 20.h),

                            _buildPersonalData(context, errorMessage),
                            SizedBox(height: 20.h),

                            _buildMainEmail(context, errorMessage),
                            SizedBox(height: 12.h),

                            /// добавляемые email
                            ..._buildEmailsList(emails, context),
                            SizedBox(height: 4.h), // тк 12+4 = 16
                            _buildAddEmailButton(context),
                            SizedBox(height: 20.h),

                            /// добавляемые phones
                            if (phones?.isNotEmpty ?? false)
                              Container(
                                alignment: Alignment.topLeft,
                                child: DLSHeaders.h3(S.current.phone)
                                    .paddingOnly(bottom: 12.h),
                              ),
                            ..._buildPhonesList(phones, context),
                            SizedBox(height: 4.h), // тк 12+4 = 16
                            _buildAddPhoneButton(context),
                            SizedBox(height: 28.h),

                            _buildActionButtons(isFormValid, context),
                          ],
                        ).paddingSymmetric(vertical: 16.h),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),

                      /// todo пока решили убрать
                      /// https://discord.com/channels/463789976501485579/1103236380928254002/1103242269290680410
                      /// Константин Смыков — 03.05.2023 в 11:50 (мск)
                      /// а пока давайте уберем)
                      // SizedBox(
                      //   height: 80.h,
                      //   width: MediaQuery.of(context).size.width * 0.75,
                      //   child: ListView.builder(
                      //     shrinkWrap: true,
                      //     scrollDirection: Axis.horizontal,
                      //     itemCount: links.keys.toList().length,
                      //     itemBuilder: (context, index) {
                      //       final key = links.keys.toList()[index];
                      //       return Padding(
                      //         padding: EdgeInsets.only(right: 84.w),
                      //         child: PlatformUrl(
                      //           uri: Uri.parse(links[key]!),
                      //           title: key,
                      //         ),
                      //       );
                      //     },
                      //   ),
                      // ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  final links = {
    'Android': 'https://ya.ru',
    'iOS': 'https://ya.ru',
    'Windows': 'https://ya.ru',
    'Linux': 'https://ya.ru',
    'macOS': 'https://ya.ru',
    'Web': 'https://ya.ru',
  };

  Flex _buildAddEmailButton(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLSButtonText(
          iconLeft: Assets.icons.plus1.svg(
            width: 12.r,
            height: 12.r,
            colorFilter: ColorFilter.mode(
              context.c_blue,
              BlendMode.srcIn,
            ),
          ),
          text: S.current.add,
          onTap: addEmail,
        ),
      ],
    );
  }

  Flex _buildAddPhoneButton(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (phonesControllers.isEmpty)
          DLSHeaders.h3(S.current.phone).paddingOnly(bottom: 16.h),
        DLSButtonText(
          iconLeft: Assets.icons.plus1.svg(
            width: 12.r,
            height: 12.r,
            colorFilter: ColorFilter.mode(
              context.c_blue,
              BlendMode.srcIn,
            ),
          ),
          text: S.current.add,
          onTap: addPhone,
        ),
      ],
    );
  }

  Flex _buildActionButtons(bool? isFormValid, BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        DLSButtonFlat(
          width: 102.w,
          isBordered: false,
          isDisabled: !(isFormValid ?? false),
          disabledColor: context.c_blue_disabled,
          color: context.c_blue,
          text: S.current.save,
          textStyle:
              context.ts_s14h16_4w400.copyWith(color: context.c_white_text),
          onTap: onSave,
        ),
        const Spacer(),
        DLSButtonFlat(
          width: 102.w,
          border: Border.all(color: context.c_grey_stoke),
          text: S.current.cancel,
          textStyle: context.ts_s14h16_4w400.copyWith(color: context.c_text),
          onTap: onCancel,
        ),
      ],
    );
  }

  Flex _buildPersonalData(BuildContext context, String? errorMessage) {
    return Flex(
      direction: Axis.vertical,
      children: [
        DLSInput(
          autofocus: true,
          width: MediaQuery.of(context).size.width * 0.75,
          controller: nameController,
          label: S.current.name,
          hint: S.current.name,
          errorMessage: errorMessage,
          onChanged: onChangedName,
        ),
        SizedBox(height: 20.h),
        DLSInput(
          width: MediaQuery.of(context).size.width * 0.75,
          controller: surnameController,
          label: S.current.surname,
          hint: S.current.surname,
          errorMessage: errorMessage,
          onChanged: onChangedSurname,
        ),
      ],
    );
  }

  Flex _buildMainEmail(BuildContext context, String? errorMessage) {
    return Flex(
      direction: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        DLSInput(
          enabled: false,
          prefixIcon: Assets.icons.check.svg(
            colorFilter: context.c_blue_color_filter,
            height: 18.h,
            width: 18.w,
          ),
          labelIcon: Assets.icons.infoCircle.svg(width: 18.r, height: 18.r),
          labelTooltip: S.current.auth_phone_message,
          width: MediaQuery.of(context).size.width * 0.75 - 16.w - 16.r,
          controller: mainPhoneController,
          label: S.current.email,
          hint: S.current.email,
          errorMessage: errorMessage,
          onChanged: onChangedMainEmail,
        ),
        Container(
          height: 44.h,
          padding: EdgeInsets.only(left: 4.w),
          alignment: Alignment.center,
          child: DLSButtonIcon(
            icon: Assets.icons.times16.svg(
              height: 16.r,
              width: 16.r,
              colorFilter: ColorFilter.mode(
                context.c_blue,
                BlendMode.srcIn,
              ),
            ),
            color: Colors.transparent,
          ),
        )
      ],
    );
  }

  List<Widget> _buildEmailsList(
    List<DLSContact>? emails,
    BuildContext context,
  ) {
    return List.generate((emails ?? []).length, (index) {
      return Flex(
        direction: Axis.horizontal,
        children: [
          DLSInput(
            enabled: false,
            width: MediaQuery.of(context).size.width * 0.75 - 16.w - 16.r,
            controller: emailsControllers[index],
            hint: S.current.email,
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
      ).paddingOnly(bottom: 12.h);
    });
  }

  List<Widget> _buildPhonesList(
    List<DLSContact>? phones,
    BuildContext context,
  ) {
    return List.generate((phones ?? []).length, (index) {
      return Flex(
        direction: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          DLSInput(
            enabled: false,
            width: MediaQuery.of(context).size.width * 0.75 - 16.w - 16.r,
            controller: phonesControllers[index],
            // label: S.current.phone,
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
      ).paddingOnly(bottom: 12.h);
    });
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

  void onDeletePhoto() {
    showDLSDialog(context, null, S.current.del_ava, width: 220.w).then(
      (value) => value == DLSDialogAnswer.confirm
          ? context
              .read<SettingsProfileBloc>()
              .add(const SettingsProfileEvent.deletePhoto())
          : null,
    );
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
      width: 300.w,
    );

    if (answer?.value ?? false) {
      deleteContact(contact, contact.cType);
    }
  }

  void onChangedPhoto(DLSFile file) {
    context.read<SettingsProfileBloc>().add(
          SettingsProfileEvent.update(photo: file),
        );
  }

  void addEmail() {
    addContactDialog(
      context: context,
      info: SettingsProfileAddContactPageArgs(
        cType: ContactType.email,
        titleAdd: S.current.titleAddEmail,
        contentAdd: S.current.contentAddEmail,
        inputLabelAdd: S.current.inputLabelAddEmail,
        inputHintAdd: S.current.inputHintAddEmail,
        titleValidate: S.current.titleValidateEmail,
        contentValidate: S.current.contentValidateEmail,
        inputLabelValidate: S.current.inputLabelValidateEmail,
        inputHintValidate: S.current.inputHintValidateEmail,
      ),
      callback: () => context
          .read<SettingsProfileBloc>()
          .add(const SettingsProfileEvent.read()),
    );
  }

  void addPhone() {
    addContactDialog(
      context: context,
      info: SettingsProfileAddContactPageArgs(
        cType: ContactType.phone,
        titleAdd: S.current.titleAddPhone,
        contentAdd: S.current.contentAddPhone,
        inputLabelAdd: S.current.inputLabelAddPhone,
        inputHintAdd: S.current.inputHintAddPhone,
        titleValidate: S.current.titleValidatePhone,
        contentValidate: S.current.contentValidatePhone,
        inputLabelValidate: S.current.inputLabelValidatePhone,
        inputHintValidate: S.current.inputHintValidatePhone,
      ),
      callback: () => context
          .read<SettingsProfileBloc>()
          .add(const SettingsProfileEvent.read()),
    );
  }
}

class PlatformUrl extends StatelessWidget {
  const PlatformUrl({
    required this.uri,
    required this.title,
    super.key,
  });

  final Uri uri;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _launchUrl(uri),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.ts_s30h30w500.copyWith(color: context.c_text),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            S.current.linkUp,
            style: context.ts_s14h22_4w400.copyWith(color: context.c_blue),
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl(Uri uri) async {
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }
}
