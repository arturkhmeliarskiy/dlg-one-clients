import 'package:rest_api/rest_api.dart';

/// данные для генерации формы контакта
///
/// ---------------------
///
/// класс позволяет переиспользовать форму и ее логику
/// для добавления разных контактов одной логикой и версткой
///
/// ---------------------
///
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
///
class SettingsProfileAddContactPageArgs {
  /// constr
  SettingsProfileAddContactPageArgs({
    required this.titleAdd,
    required this.contentAdd,
    required this.inputLabelAdd,
    required this.inputHintAdd,
    required this.titleValidate,
    required this.contentValidate,
    required this.inputLabelValidate,
    required this.inputHintValidate,
    required this.cType,
  });

  final String titleAdd;
  final String contentAdd;
  final String inputLabelAdd;
  final String inputHintAdd;
  final String titleValidate;
  final String Function(String) contentValidate;
  final String inputLabelValidate;
  final String inputHintValidate;
  final ContactType cType;
}
