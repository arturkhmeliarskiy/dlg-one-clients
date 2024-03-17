// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Назад`
  String get back {
    return Intl.message(
      'Назад',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Авторизация`
  String get authorization {
    return Intl.message(
      'Авторизация',
      name: 'authorization',
      desc: '',
      args: [],
    );
  }

  /// `Введите пароль`
  String get authorization_enter_password {
    return Intl.message(
      'Введите пароль',
      name: 'authorization_enter_password',
      desc: '',
      args: [],
    );
  }

  /// `Войти`
  String get login {
    return Intl.message(
      'Войти',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Укажите email, к которой привязан аккаунт DLS One`
  String get code_sent_to_email {
    return Intl.message(
      'Укажите email, к которой привязан аккаунт DLS One',
      name: 'code_sent_to_email',
      desc: '',
      args: [],
    );
  }

  /// `На email {useremail} отправлен код подтверждения`
  String code_sent_to_email_useremail(Object useremail) {
    return Intl.message(
      'На email $useremail отправлен код подтверждения',
      name: 'code_sent_to_email_useremail',
      desc: '',
      args: [useremail],
    );
  }

  /// `Код выслан. Повторная отправка через 00:{sec}`
  String code_resent_to_email_sec(Object sec) {
    return Intl.message(
      'Код выслан. Повторная отправка через 00:$sec',
      name: 'code_resent_to_email_sec',
      desc: '',
      args: [sec],
    );
  }

  /// `Придумайте пароль`
  String get create_password {
    return Intl.message(
      'Придумайте пароль',
      name: 'create_password',
      desc: '',
      args: [],
    );
  }

  /// `Готово`
  String get done {
    return Intl.message(
      'Готово',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Новый пароль`
  String get new_password {
    return Intl.message(
      'Новый пароль',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Пароль`
  String get password {
    return Intl.message(
      'Пароль',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Повторите пароль`
  String get repeat_password {
    return Intl.message(
      'Повторите пароль',
      name: 'repeat_password',
      desc: '',
      args: [],
    );
  }

  /// `Код подтверждения`
  String get confirm_code {
    return Intl.message(
      'Код подтверждения',
      name: 'confirm_code',
      desc: '',
      args: [],
    );
  }

  /// `Выслать код повторно`
  String get resend_code {
    return Intl.message(
      'Выслать код повторно',
      name: 'resend_code',
      desc: '',
      args: [],
    );
  }

  /// `Далее`
  String get next {
    return Intl.message(
      'Далее',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Все чаты`
  String get all_chats {
    return Intl.message(
      'Все чаты',
      name: 'all_chats',
      desc: '',
      args: [],
    );
  }

  /// `Чаты`
  String get chats {
    return Intl.message(
      'Чаты',
      name: 'chats',
      desc: '',
      args: [],
    );
  }

  /// `Личные чаты`
  String get personal_chats {
    return Intl.message(
      'Личные чаты',
      name: 'personal_chats',
      desc: '',
      args: [],
    );
  }

  /// `Важные`
  String get important {
    return Intl.message(
      'Важные',
      name: 'important',
      desc: '',
      args: [],
    );
  }

  /// `Мои ответы`
  String get my_replies {
    return Intl.message(
      'Мои ответы',
      name: 'my_replies',
      desc: '',
      args: [],
    );
  }

  /// `Группы`
  String get groups {
    return Intl.message(
      'Группы',
      name: 'groups',
      desc: '',
      args: [],
    );
  }

  /// `Добавить`
  String get add {
    return Intl.message(
      'Добавить',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Онлайн`
  String get online {
    return Intl.message(
      'Онлайн',
      name: 'online',
      desc: '',
      args: [],
    );
  }

  /// `Оффлайн`
  String get offline {
    return Intl.message(
      'Оффлайн',
      name: 'offline',
      desc: '',
      args: [],
    );
  }

  /// `Alex_1@gmail.com`
  String get email_example {
    return Intl.message(
      'Alex_1@gmail.com',
      name: 'email_example',
      desc: '',
      args: [],
    );
  }

  /// `seCRETpass00rD`
  String get password_example {
    return Intl.message(
      'seCRETpass00rD',
      name: 'password_example',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get email {
    return Intl.message(
      'E-mail',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Задайте код доступа`
  String get create_access_code {
    return Intl.message(
      'Задайте код доступа',
      name: 'create_access_code',
      desc: '',
      args: [],
    );
  }

  /// `Повторите код доступа`
  String get repeat_access_code {
    return Intl.message(
      'Повторите код доступа',
      name: 'repeat_access_code',
      desc: '',
      args: [],
    );
  }

  /// `Введите код доступа`
  String get type_pin_code {
    return Intl.message(
      'Введите код доступа',
      name: 'type_pin_code',
      desc: '',
      args: [],
    );
  }

  /// `Выйти`
  String get exit {
    return Intl.message(
      'Выйти',
      name: 'exit',
      desc: '',
      args: [],
    );
  }

  /// `Выйти из аккаунта`
  String get exit_from_account {
    return Intl.message(
      'Выйти из аккаунта',
      name: 'exit_from_account',
      desc: '',
      args: [],
    );
  }

  /// `Отмена`
  String get cancel {
    return Intl.message(
      'Отмена',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Сбросить`
  String get reset {
    return Intl.message(
      'Сбросить',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `Вы уверены, что хотите сбросить код доступа?`
  String get you_sure_want_reset_pin {
    return Intl.message(
      'Вы уверены, что хотите сбросить код доступа?',
      name: 'you_sure_want_reset_pin',
      desc: '',
      args: [],
    );
  }

  /// `Настройки`
  String get settings {
    return Intl.message(
      'Настройки',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Изменение пароля`
  String get change_password {
    return Intl.message(
      'Изменение пароля',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `Старый пароль`
  String get old_password {
    return Intl.message(
      'Старый пароль',
      name: 'old_password',
      desc: '',
      args: [],
    );
  }

  /// `Повторите новый пароль`
  String get repeat_new_password {
    return Intl.message(
      'Повторите новый пароль',
      name: 'repeat_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Пароли не совпадают`
  String get the_passwords_are_different {
    return Intl.message(
      'Пароли не совпадают',
      name: 'the_passwords_are_different',
      desc: '',
      args: [],
    );
  }

  /// `Биометрия`
  String get biometrics {
    return Intl.message(
      'Биометрия',
      name: 'biometrics',
      desc: '',
      args: [],
    );
  }

  /// `Персональные`
  String get personal {
    return Intl.message(
      'Персональные',
      name: 'personal',
      desc: '',
      args: [],
    );
  }

  /// `Введите текст сообщения...`
  String get type_message_text {
    return Intl.message(
      'Введите текст сообщения...',
      name: 'type_message_text',
      desc: '',
      args: [],
    );
  }

  /// `Показать информацию`
  String get show_info {
    return Intl.message(
      'Показать информацию',
      name: 'show_info',
      desc: '',
      args: [],
    );
  }

  /// `Выключить уведомления`
  String get mute {
    return Intl.message(
      'Выключить уведомления',
      name: 'mute',
      desc: '',
      args: [],
    );
  }

  /// `Включить уведомления`
  String get unmute {
    return Intl.message(
      'Включить уведомления',
      name: 'unmute',
      desc: '',
      args: [],
    );
  }

  /// `Информация`
  String get information {
    return Intl.message(
      'Информация',
      name: 'information',
      desc: '',
      args: [],
    );
  }

  /// `Телефон`
  String get phone {
    return Intl.message(
      'Телефон',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Должность`
  String get job_position {
    return Intl.message(
      'Должность',
      name: 'job_position',
      desc: '',
      args: [],
    );
  }

  /// `Отдел`
  String get department {
    return Intl.message(
      'Отдел',
      name: 'department',
      desc: '',
      args: [],
    );
  }

  /// `файлов`
  String get files {
    return Intl.message(
      'файлов',
      name: 'files',
      desc: '',
      args: [],
    );
  }

  /// `ссылка`
  String get link {
    return Intl.message(
      'ссылка',
      name: 'link',
      desc: '',
      args: [],
    );
  }

  /// `ссылок`
  String get links {
    return Intl.message(
      'ссылок',
      name: 'links',
      desc: '',
      args: [],
    );
  }

  /// `картинок`
  String get images {
    return Intl.message(
      'картинок',
      name: 'images',
      desc: '',
      args: [],
    );
  }

  /// `Переслать`
  String get share {
    return Intl.message(
      'Переслать',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Ответить`
  String get reply {
    return Intl.message(
      'Ответить',
      name: 'reply',
      desc: '',
      args: [],
    );
  }

  /// `Добавить в важное`
  String get add_to_important {
    return Intl.message(
      'Добавить в важное',
      name: 'add_to_important',
      desc: '',
      args: [],
    );
  }

  /// `Копировать`
  String get copy {
    return Intl.message(
      'Копировать',
      name: 'copy',
      desc: '',
      args: [],
    );
  }

  /// `Редактировать`
  String get edit {
    return Intl.message(
      'Редактировать',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Удалить`
  String get delete {
    return Intl.message(
      'Удалить',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Ответы`
  String get replies {
    return Intl.message(
      'Ответы',
      name: 'replies',
      desc: '',
      args: [],
    );
  }

  /// `Добавление группы`
  String get group_adding {
    return Intl.message(
      'Добавление группы',
      name: 'group_adding',
      desc: '',
      args: [],
    );
  }

  /// `Добавление людей`
  String get people_adding {
    return Intl.message(
      'Добавление людей',
      name: 'people_adding',
      desc: '',
      args: [],
    );
  }

  /// `Пропустить`
  String get skip {
    return Intl.message(
      'Пропустить',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Название`
  String get title {
    return Intl.message(
      'Название',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Не помню пароль`
  String get dont_remember_password {
    return Intl.message(
      'Не помню пароль',
      name: 'dont_remember_password',
      desc: '',
      args: [],
    );
  }

  /// `Вы уверены, что хотите сбросить код доступа?`
  String get are_you_sure_want_reset_pincode {
    return Intl.message(
      'Вы уверены, что хотите сбросить код доступа?',
      name: 'are_you_sure_want_reset_pincode',
      desc: '',
      args: [],
    );
  }

  /// `Имя сотрудника...`
  String get employee_name {
    return Intl.message(
      'Имя сотрудника...',
      name: 'employee_name',
      desc: '',
      args: [],
    );
  }

  /// `Название группы`
  String get group_name {
    return Intl.message(
      'Название группы',
      name: 'group_name',
      desc: '',
      args: [],
    );
  }

  /// `Touch ID включен`
  String get touch_id_on {
    return Intl.message(
      'Touch ID включен',
      name: 'touch_id_on',
      desc: '',
      args: [],
    );
  }

  /// `Touch ID выключен`
  String get touch_id_off {
    return Intl.message(
      'Touch ID выключен',
      name: 'touch_id_off',
      desc: '',
      args: [],
    );
  }

  /// `Face ID включен`
  String get face_id_on {
    return Intl.message(
      'Face ID включен',
      name: 'face_id_on',
      desc: '',
      args: [],
    );
  }

  /// `Face ID выключен`
  String get face_id_off {
    return Intl.message(
      'Face ID выключен',
      name: 'face_id_off',
      desc: '',
      args: [],
    );
  }

  /// `Биометрия включена`
  String get biometrics_on {
    return Intl.message(
      'Биометрия включена',
      name: 'biometrics_on',
      desc: '',
      args: [],
    );
  }

  /// `Биометрия выключена`
  String get biometrics_off {
    return Intl.message(
      'Биометрия выключена',
      name: 'biometrics_off',
      desc: '',
      args: [],
    );
  }

  /// `Уведомления включен`
  String get notifications_unmute {
    return Intl.message(
      'Уведомления включен',
      name: 'notifications_unmute',
      desc: '',
      args: [],
    );
  }

  /// `Уведомления выключен`
  String get notifications_mute {
    return Intl.message(
      'Уведомления выключен',
      name: 'notifications_mute',
      desc: '',
      args: [],
    );
  }

  /// `Имя, должность, отдел...`
  String get name_job_department {
    return Intl.message(
      'Имя, должность, отдел...',
      name: 'name_job_department',
      desc: '',
      args: [],
    );
  }

  /// `ответ`
  String get reply1 {
    return Intl.message(
      'ответ',
      name: 'reply1',
      desc: '',
      args: [],
    );
  }

  /// `ответа`
  String get replies2 {
    return Intl.message(
      'ответа',
      name: 'replies2',
      desc: '',
      args: [],
    );
  }

  /// `ответов`
  String get replies5 {
    return Intl.message(
      'ответов',
      name: 'replies5',
      desc: '',
      args: [],
    );
  }

  /// `из`
  String get from {
    return Intl.message(
      'из',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `Сохранить как...`
  String get saveAs {
    return Intl.message(
      'Сохранить как...',
      name: 'saveAs',
      desc: '',
      args: [],
    );
  }

  /// `участник`
  String get member1 {
    return Intl.message(
      'участник',
      name: 'member1',
      desc: '',
      args: [],
    );
  }

  /// `участника`
  String get member2 {
    return Intl.message(
      'участника',
      name: 'member2',
      desc: '',
      args: [],
    );
  }

  /// `участников`
  String get member5 {
    return Intl.message(
      'участников',
      name: 'member5',
      desc: '',
      args: [],
    );
  }

  /// `Переименовать`
  String get rename {
    return Intl.message(
      'Переименовать',
      name: 'rename',
      desc: '',
      args: [],
    );
  }

  /// `Удалить из группы`
  String get delete_from_group {
    return Intl.message(
      'Удалить из группы',
      name: 'delete_from_group',
      desc: '',
      args: [],
    );
  }

  /// `Удалить и покинуть`
  String get delete_and_leave_group {
    return Intl.message(
      'Удалить и покинуть',
      name: 'delete_and_leave_group',
      desc: '',
      args: [],
    );
  }

  /// `Покинуть группу`
  String get leave_group {
    return Intl.message(
      'Покинуть группу',
      name: 'leave_group',
      desc: '',
      args: [],
    );
  }

  /// `Удалить и выйти из чата`
  String get delete_and_leave_chat {
    return Intl.message(
      'Удалить и выйти из чата',
      name: 'delete_and_leave_chat',
      desc: '',
      args: [],
    );
  }

  /// `Выйти из чата`
  String get leave_chat {
    return Intl.message(
      'Выйти из чата',
      name: 'leave_chat',
      desc: '',
      args: [],
    );
  }

  /// `Поиск по сообщениям`
  String get message_search {
    return Intl.message(
      'Поиск по сообщениям',
      name: 'message_search',
      desc: '',
      args: [],
    );
  }

  /// `Чат`
  String get chat {
    return Intl.message(
      'Чат',
      name: 'chat',
      desc: '',
      args: [],
    );
  }

  /// `Группа`
  String get group {
    return Intl.message(
      'Группа',
      name: 'group',
      desc: '',
      args: [],
    );
  }

  /// `Фото`
  String get photo {
    return Intl.message(
      'Фото',
      name: 'photo',
      desc: '',
      args: [],
    );
  }

  /// `Документ`
  String get document {
    return Intl.message(
      'Документ',
      name: 'document',
      desc: '',
      args: [],
    );
  }

  /// `Показать все {count}`
  String show_all_count(Object count) {
    return Intl.message(
      'Показать все $count',
      name: 'show_all_count',
      desc: '',
      args: [count],
    );
  }

  /// `Скрыть все {count}`
  String hide_all_count(Object count) {
    return Intl.message(
      'Скрыть все $count',
      name: 'hide_all_count',
      desc: '',
      args: [count],
    );
  }

  /// `Показать полностью`
  String get show_full {
    return Intl.message(
      'Показать полностью',
      name: 'show_full',
      desc: '',
      args: [],
    );
  }

  /// `Сохранить в галерею`
  String get save_to_gallery {
    return Intl.message(
      'Сохранить в галерею',
      name: 'save_to_gallery',
      desc: '',
      args: [],
    );
  }

  /// `Изображение сохранено в галерею`
  String get image_saved_to_gallery {
    return Intl.message(
      'Изображение сохранено в галерею',
      name: 'image_saved_to_gallery',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка сохранения изображения в галерею`
  String get error_image_saving_to_gallery {
    return Intl.message(
      'Ошибка сохранения изображения в галерею',
      name: 'error_image_saving_to_gallery',
      desc: '',
      args: [],
    );
  }

  /// `Изображение удалено`
  String get image_deleted {
    return Intl.message(
      'Изображение удалено',
      name: 'image_deleted',
      desc: '',
      args: [],
    );
  }

  /// `Мероприятие удалено`
  String get eventDeleted {
    return Intl.message(
      'Мероприятие удалено',
      name: 'eventDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Звонок`
  String get call {
    return Intl.message(
      'Звонок',
      name: 'call',
      desc: '',
      args: [],
    );
  }

  /// `Принудительно завершить текущий звонок`
  String get hangup {
    return Intl.message(
      'Принудительно завершить текущий звонок',
      name: 'hangup',
      desc: '',
      args: [],
    );
  }

  /// `Выберите получателя`
  String get select_receiver {
    return Intl.message(
      'Выберите получателя',
      name: 'select_receiver',
      desc: '',
      args: [],
    );
  }

  /// `Введен неверный код`
  String get pin_is_invalid {
    return Intl.message(
      'Введен неверный код',
      name: 'pin_is_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Исходящий звонок`
  String get outgoing_call {
    return Intl.message(
      'Исходящий звонок',
      name: 'outgoing_call',
      desc: '',
      args: [],
    );
  }

  /// `Пропущенный звонок`
  String get missed_call {
    return Intl.message(
      'Пропущенный звонок',
      name: 'missed_call',
      desc: '',
      args: [],
    );
  }

  /// `Вызов`
  String get calling_call {
    return Intl.message(
      'Вызов',
      name: 'calling_call',
      desc: '',
      args: [],
    );
  }

  /// `Входящий звонок`
  String get incoming_call {
    return Intl.message(
      'Входящий звонок',
      name: 'incoming_call',
      desc: '',
      args: [],
    );
  }

  /// `Отмененный звонок`
  String get canceled_call {
    return Intl.message(
      'Отмененный звонок',
      name: 'canceled_call',
      desc: '',
      args: [],
    );
  }

  /// `Неопределено`
  String get undefined {
    return Intl.message(
      'Неопределено',
      name: 'undefined',
      desc: '',
      args: [],
    );
  }

  /// `час`
  String get hour1 {
    return Intl.message(
      'час',
      name: 'hour1',
      desc: '',
      args: [],
    );
  }

  /// `часа`
  String get hour2 {
    return Intl.message(
      'часа',
      name: 'hour2',
      desc: '',
      args: [],
    );
  }

  /// `часов`
  String get hour5 {
    return Intl.message(
      'часов',
      name: 'hour5',
      desc: '',
      args: [],
    );
  }

  /// `минута`
  String get minute1 {
    return Intl.message(
      'минута',
      name: 'minute1',
      desc: '',
      args: [],
    );
  }

  /// `минуты`
  String get minute2 {
    return Intl.message(
      'минуты',
      name: 'minute2',
      desc: '',
      args: [],
    );
  }

  /// `минут`
  String get minute5 {
    return Intl.message(
      'минут',
      name: 'minute5',
      desc: '',
      args: [],
    );
  }

  /// `секунда`
  String get second1 {
    return Intl.message(
      'секунда',
      name: 'second1',
      desc: '',
      args: [],
    );
  }

  /// `секунды`
  String get second2 {
    return Intl.message(
      'секунды',
      name: 'second2',
      desc: '',
      args: [],
    );
  }

  /// `секунд`
  String get second5 {
    return Intl.message(
      'секунд',
      name: 'second5',
      desc: '',
      args: [],
    );
  }

  /// `набирает текст...`
  String get typing {
    return Intl.message(
      'набирает текст...',
      name: 'typing',
      desc: '',
      args: [],
    );
  }

  /// `Повтор`
  String get repeat {
    return Intl.message(
      'Повтор',
      name: 'repeat',
      desc: '',
      args: [],
    );
  }

  /// `Администратор группы`
  String get group_admin {
    return Intl.message(
      'Администратор группы',
      name: 'group_admin',
      desc: '',
      args: [],
    );
  }

  /// `Владелец группы`
  String get group_owner {
    return Intl.message(
      'Владелец группы',
      name: 'group_owner',
      desc: '',
      args: [],
    );
  }

  /// `Скрыть`
  String get hide {
    return Intl.message(
      'Скрыть',
      name: 'hide',
      desc: '',
      args: [],
    );
  }

  /// `Загрузка`
  String get loading {
    return Intl.message(
      'Загрузка',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка`
  String get error {
    return Intl.message(
      'Ошибка',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Переименование`
  String get rename_group {
    return Intl.message(
      'Переименование',
      name: 'rename_group',
      desc: '',
      args: [],
    );
  }

  /// `Изменение участников`
  String get change_members {
    return Intl.message(
      'Изменение участников',
      name: 'change_members',
      desc: '',
      args: [],
    );
  }

  /// `Видеозвонок`
  String get video_call {
    return Intl.message(
      'Видеозвонок',
      name: 'video_call',
      desc: '',
      args: [],
    );
  }

  /// `Укажите email, к которому привязан аккаунт DLS One`
  String get auth_phone_message {
    return Intl.message(
      'Укажите email, к которому привязан аккаунт DLS One',
      name: 'auth_phone_message',
      desc: '',
      args: [],
    );
  }

  /// `На email {param} отправлено письмо с кодом`
  String auth_sms_sent_to_phone(Object param) {
    return Intl.message(
      'На email $param отправлено письмо с кодом',
      name: 'auth_sms_sent_to_phone',
      desc: '',
      args: [param],
    );
  }

  /// `Код из письма`
  String get auth_sms_code {
    return Intl.message(
      'Код из письма',
      name: 'auth_sms_code',
      desc: '',
      args: [],
    );
  }

  /// `Код выслан. Повторная отправка через {param}`
  String auth_sms_code_resend(Object param) {
    return Intl.message(
      'Код выслан. Повторная отправка через $param',
      name: 'auth_sms_code_resend',
      desc: '',
      args: [param],
    );
  }

  /// `Да`
  String get yes {
    return Intl.message(
      'Да',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Нет`
  String get no {
    return Intl.message(
      'Нет',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Использовать проверку по биометрии для входа в приложение?`
  String get enable_bio {
    return Intl.message(
      'Использовать проверку по биометрии для входа в приложение?',
      name: 'enable_bio',
      desc: '',
      args: [],
    );
  }

  /// `видео`
  String get video {
    return Intl.message(
      'видео',
      name: 'video',
      desc: '',
      args: [],
    );
  }

  /// `аудио`
  String get audio {
    return Intl.message(
      'аудио',
      name: 'audio',
      desc: '',
      args: [],
    );
  }

  /// `фото`
  String get photo1 {
    return Intl.message(
      'фото',
      name: 'photo1',
      desc: '',
      args: [],
    );
  }

  /// `фото`
  String get photo2 {
    return Intl.message(
      'фото',
      name: 'photo2',
      desc: '',
      args: [],
    );
  }

  /// `фото`
  String get photo5 {
    return Intl.message(
      'фото',
      name: 'photo5',
      desc: '',
      args: [],
    );
  }

  /// `ссылка`
  String get link1 {
    return Intl.message(
      'ссылка',
      name: 'link1',
      desc: '',
      args: [],
    );
  }

  /// `ссылки`
  String get link2 {
    return Intl.message(
      'ссылки',
      name: 'link2',
      desc: '',
      args: [],
    );
  }

  /// `ссылок`
  String get link5 {
    return Intl.message(
      'ссылок',
      name: 'link5',
      desc: '',
      args: [],
    );
  }

  /// `файл`
  String get file1 {
    return Intl.message(
      'файл',
      name: 'file1',
      desc: '',
      args: [],
    );
  }

  /// `файла`
  String get file2 {
    return Intl.message(
      'файла',
      name: 'file2',
      desc: '',
      args: [],
    );
  }

  /// `файлов`
  String get file5 {
    return Intl.message(
      'файлов',
      name: 'file5',
      desc: '',
      args: [],
    );
  }

  /// `аудиофайл`
  String get audio1 {
    return Intl.message(
      'аудиофайл',
      name: 'audio1',
      desc: '',
      args: [],
    );
  }

  /// `аудиофайла`
  String get audio2 {
    return Intl.message(
      'аудиофайла',
      name: 'audio2',
      desc: '',
      args: [],
    );
  }

  /// `аудиофайлов`
  String get audio5 {
    return Intl.message(
      'аудиофайлов',
      name: 'audio5',
      desc: '',
      args: [],
    );
  }

  /// `видео`
  String get video1 {
    return Intl.message(
      'видео',
      name: 'video1',
      desc: '',
      args: [],
    );
  }

  /// `видео`
  String get video2 {
    return Intl.message(
      'видео',
      name: 'video2',
      desc: '',
      args: [],
    );
  }

  /// `видео`
  String get video5 {
    return Intl.message(
      'видео',
      name: 'video5',
      desc: '',
      args: [],
    );
  }

  /// `Сообщения`
  String get messages {
    return Intl.message(
      'Сообщения',
      name: 'messages',
      desc: '',
      args: [],
    );
  }

  /// `Поиск`
  String get search {
    return Intl.message(
      'Поиск',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Дополнительно`
  String get advanced {
    return Intl.message(
      'Дополнительно',
      name: 'advanced',
      desc: '',
      args: [],
    );
  }

  /// `Отправить`
  String get send {
    return Intl.message(
      'Отправить',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Добавить группу`
  String get add_group {
    return Intl.message(
      'Добавить группу',
      name: 'add_group',
      desc: '',
      args: [],
    );
  }

  /// `Записать видеосообщение`
  String get rec_video {
    return Intl.message(
      'Записать видеосообщение',
      name: 'rec_video',
      desc: '',
      args: [],
    );
  }

  /// `Записать аудиосообщение`
  String get rec_audio {
    return Intl.message(
      'Записать аудиосообщение',
      name: 'rec_audio',
      desc: '',
      args: [],
    );
  }

  /// `Начать запись`
  String get start_rec {
    return Intl.message(
      'Начать запись',
      name: 'start_rec',
      desc: '',
      args: [],
    );
  }

  /// `Чатов нет`
  String get chats_empty {
    return Intl.message(
      'Чатов нет',
      name: 'chats_empty',
      desc: '',
      args: [],
    );
  }

  /// `Личные данные`
  String get personal_data {
    return Intl.message(
      'Личные данные',
      name: 'personal_data',
      desc: '',
      args: [],
    );
  }

  /// `Изменить`
  String get change {
    return Intl.message(
      'Изменить',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `Сохранить`
  String get save {
    return Intl.message(
      'Сохранить',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Имя`
  String get name {
    return Intl.message(
      'Имя',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Фамилия`
  String get surname {
    return Intl.message(
      'Фамилия',
      name: 'surname',
      desc: '',
      args: [],
    );
  }

  /// `Завершить`
  String get stop_rec {
    return Intl.message(
      'Завершить',
      name: 'stop_rec',
      desc: '',
      args: [],
    );
  }

  /// `Введите данные`
  String get enter_data {
    return Intl.message(
      'Введите данные',
      name: 'enter_data',
      desc: '',
      args: [],
    );
  }

  /// `Изменение пин-кода`
  String get change_pin {
    return Intl.message(
      'Изменение пин-кода',
      name: 'change_pin',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация`
  String get registration {
    return Intl.message(
      'Регистрация',
      name: 'registration',
      desc: '',
      args: [],
    );
  }

  /// `Укажите email, к которому будет привязан ваш аккаунт в DLS One`
  String get registration_text {
    return Intl.message(
      'Укажите email, к которому будет привязан ваш аккаунт в DLS One',
      name: 'registration_text',
      desc: '',
      args: [],
    );
  }

  /// `email@.dls.one`
  String get registration_tel_ex {
    return Intl.message(
      'email@.dls.one',
      name: 'registration_tel_ex',
      desc: '',
      args: [],
    );
  }

  /// `На email {param} отправлено письмо с кодом`
  String registration_sms_send_to_tel(Object param) {
    return Intl.message(
      'На email $param отправлено письмо с кодом',
      name: 'registration_sms_send_to_tel',
      desc: '',
      args: [param],
    );
  }

  /// `Код подтверждения`
  String get registration_approve_code {
    return Intl.message(
      'Код подтверждения',
      name: 'registration_approve_code',
      desc: '',
      args: [],
    );
  }

  /// `Код выслан. Повторная отправка через {param}`
  String registration_approve_code_resend_time(Object param) {
    return Intl.message(
      'Код выслан. Повторная отправка через $param',
      name: 'registration_approve_code_resend_time',
      desc: '',
      args: [param],
    );
  }

  /// `Выслать код повторно`
  String get registration_resend_approve_code {
    return Intl.message(
      'Выслать код повторно',
      name: 'registration_resend_approve_code',
      desc: '',
      args: [],
    );
  }

  /// `Придумайте пароль`
  String get registration_create_password {
    return Intl.message(
      'Придумайте пароль',
      name: 'registration_create_password',
      desc: '',
      args: [],
    );
  }

  /// `Загрузить из галереи`
  String get pick_from_gallery {
    return Intl.message(
      'Загрузить из галереи',
      name: 'pick_from_gallery',
      desc: '',
      args: [],
    );
  }

  /// `У вас нет аккаунта?`
  String get have_not_acc {
    return Intl.message(
      'У вас нет аккаунта?',
      name: 'have_not_acc',
      desc: '',
      args: [],
    );
  }

  /// `Пароль успешно изменен`
  String get password_was_changed {
    return Intl.message(
      'Пароль успешно изменен',
      name: 'password_was_changed',
      desc: '',
      args: [],
    );
  }

  /// `Восстановление пароля`
  String get reset_password {
    return Intl.message(
      'Восстановление пароля',
      name: 'reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Вы не являетесь участником данного чата`
  String get not_member {
    return Intl.message(
      'Вы не являетесь участником данного чата',
      name: 'not_member',
      desc: '',
      args: [],
    );
  }

  /// `Переслано успешно`
  String get forwarded_ok {
    return Intl.message(
      'Переслано успешно',
      name: 'forwarded_ok',
      desc: '',
      args: [],
    );
  }

  /// `СНИЛС`
  String get snils {
    return Intl.message(
      'СНИЛС',
      name: 'snils',
      desc: '',
      args: [],
    );
  }

  /// `Отчество`
  String get secondName {
    return Intl.message(
      'Отчество',
      name: 'secondName',
      desc: '',
      args: [],
    );
  }

  /// `Сделать фото`
  String get take_shot {
    return Intl.message(
      'Сделать фото',
      name: 'take_shot',
      desc: '',
      args: [],
    );
  }

  /// `Вы не состоите ни в одной группе`
  String get group_list_is_empty {
    return Intl.message(
      'Вы не состоите ни в одной группе',
      name: 'group_list_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `Вы еще не общались с этим человеком`
  String get chat_mess_empty_pers {
    return Intl.message(
      'Вы еще не общались с этим человеком',
      name: 'chat_mess_empty_pers',
      desc: '',
      args: [],
    );
  }

  /// `В группе нет ни одного сообщения`
  String get chat_mess_empty_group {
    return Intl.message(
      'В группе нет ни одного сообщения',
      name: 'chat_mess_empty_group',
      desc: '',
      args: [],
    );
  }

  /// `Вы еще ни с кем не общались`
  String get personal_list_is_empty {
    return Intl.message(
      'Вы еще ни с кем не общались',
      name: 'personal_list_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `Поиск по людям`
  String get search_by_people {
    return Intl.message(
      'Поиск по людям',
      name: 'search_by_people',
      desc: '',
      args: [],
    );
  }

  /// `Уведомления`
  String get notifications {
    return Intl.message(
      'Уведомления',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Выключить звук уведомлений`
  String get mute_sound_notifications {
    return Intl.message(
      'Выключить звук уведомлений',
      name: 'mute_sound_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Включить звук уведомлений`
  String get unmute_sound_notifications {
    return Intl.message(
      'Включить звук уведомлений',
      name: 'unmute_sound_notifications',
      desc: '',
      args: [],
    );
  }

  /// `График звуковых уведомлений`
  String get notifications_schedule {
    return Intl.message(
      'График звуковых уведомлений',
      name: 'notifications_schedule',
      desc: '',
      args: [],
    );
  }

  /// `Пн`
  String get monday {
    return Intl.message(
      'Пн',
      name: 'monday',
      desc: '',
      args: [],
    );
  }

  /// `Вт`
  String get tuesday {
    return Intl.message(
      'Вт',
      name: 'tuesday',
      desc: '',
      args: [],
    );
  }

  /// `Ср`
  String get wednesday {
    return Intl.message(
      'Ср',
      name: 'wednesday',
      desc: '',
      args: [],
    );
  }

  /// `Чт`
  String get thursday {
    return Intl.message(
      'Чт',
      name: 'thursday',
      desc: '',
      args: [],
    );
  }

  /// `Пт`
  String get friday {
    return Intl.message(
      'Пт',
      name: 'friday',
      desc: '',
      args: [],
    );
  }

  /// `Сб`
  String get saturday {
    return Intl.message(
      'Сб',
      name: 'saturday',
      desc: '',
      args: [],
    );
  }

  /// `Вс`
  String get sunday {
    return Intl.message(
      'Вс',
      name: 'sunday',
      desc: '',
      args: [],
    );
  }

  /// `Период тишины`
  String get mute_interval {
    return Intl.message(
      'Период тишины',
      name: 'mute_interval',
      desc: '',
      args: [],
    );
  }

  /// `Период времени, во время которого будет отключен весь звук уведомлений`
  String get mute_interval_desc {
    return Intl.message(
      'Период времени, во время которого будет отключен весь звук уведомлений',
      name: 'mute_interval_desc',
      desc: '',
      args: [],
    );
  }

  /// `до`
  String get do1 {
    return Intl.message(
      'до',
      name: 'do1',
      desc: '',
      args: [],
    );
  }

  /// `Здравствуйте`
  String get hi {
    return Intl.message(
      'Здравствуйте',
      name: 'hi',
      desc: '',
      args: [],
    );
  }

  /// `Добавление ссылки`
  String get link_adding {
    return Intl.message(
      'Добавление ссылки',
      name: 'link_adding',
      desc: '',
      args: [],
    );
  }

  /// `Текст`
  String get text {
    return Intl.message(
      'Текст',
      name: 'text',
      desc: '',
      args: [],
    );
  }

  /// `Ссылка`
  String get linkUp {
    return Intl.message(
      'Ссылка',
      name: 'linkUp',
      desc: '',
      args: [],
    );
  }

  /// `Начните вводить @имя`
  String get start_enter_user_name {
    return Intl.message(
      'Начните вводить @имя',
      name: 'start_enter_user_name',
      desc: '',
      args: [],
    );
  }

  /// `Удалить группу "{name}"?`
  String delete_group_name(Object name) {
    return Intl.message(
      'Удалить группу "$name"?',
      name: 'delete_group_name',
      desc: '',
      args: [name],
    );
  }

  /// `{count} будут автоматически удалены из группы`
  String count_delete_from_group(Object count) {
    return Intl.message(
      '$count будут автоматически удалены из группы',
      name: 'count_delete_from_group',
      desc: '',
      args: [count],
    );
  }

  /// `человек`
  String get people1 {
    return Intl.message(
      'человек',
      name: 'people1',
      desc: '',
      args: [],
    );
  }

  /// `человека`
  String get people2 {
    return Intl.message(
      'человека',
      name: 'people2',
      desc: '',
      args: [],
    );
  }

  /// `Выберите нового администратора`
  String get selectNewAdmin {
    return Intl.message(
      'Выберите нового администратора',
      name: 'selectNewAdmin',
      desc: '',
      args: [],
    );
  }

  /// `Вы действительно хотите покинуть группу?`
  String get really_leave_group {
    return Intl.message(
      'Вы действительно хотите покинуть группу?',
      name: 'really_leave_group',
      desc: '',
      args: [],
    );
  }

  /// `Текстовый редактор`
  String get text_editor {
    return Intl.message(
      'Текстовый редактор',
      name: 'text_editor',
      desc: '',
      args: [],
    );
  }

  /// `Выйти из редактора?`
  String get text_editor_exit {
    return Intl.message(
      'Выйти из редактора?',
      name: 'text_editor_exit',
      desc: '',
      args: [],
    );
  }

  /// `Все данные будут удалены.`
  String get text_editor_data_remove {
    return Intl.message(
      'Все данные будут удалены.',
      name: 'text_editor_data_remove',
      desc: '',
      args: [],
    );
  }

  /// `Форматирование будет сброшено`
  String get text_editor_data_format_reset {
    return Intl.message(
      'Форматирование будет сброшено',
      name: 'text_editor_data_format_reset',
      desc: '',
      args: [],
    );
  }

  /// `Добавление телефона`
  String get add_phone {
    return Intl.message(
      'Добавление телефона',
      name: 'add_phone',
      desc: '',
      args: [],
    );
  }

  /// `Добавление e-mail`
  String get add_email {
    return Intl.message(
      'Добавление e-mail',
      name: 'add_email',
      desc: '',
      args: [],
    );
  }

  /// `Введите телефон, который Вы хотите добавить к аккаунту DLS`
  String get additional_phone_description {
    return Intl.message(
      'Введите телефон, который Вы хотите добавить к аккаунту DLS',
      name: 'additional_phone_description',
      desc: '',
      args: [],
    );
  }

  /// `Введите e-mail, который Вы хотите добавить к аккаунту DLS`
  String get additional_email_description {
    return Intl.message(
      'Введите e-mail, который Вы хотите добавить к аккаунту DLS',
      name: 'additional_email_description',
      desc: '',
      args: [],
    );
  }

  /// `Новый телефон`
  String get new_phone {
    return Intl.message(
      'Новый телефон',
      name: 'new_phone',
      desc: '',
      args: [],
    );
  }

  /// `Новый e-mail`
  String get new_email {
    return Intl.message(
      'Новый e-mail',
      name: 'new_email',
      desc: '',
      args: [],
    );
  }

  /// `+7 931 456 69 78`
  String get example_phone {
    return Intl.message(
      '+7 931 456 69 78',
      name: 'example_phone',
      desc: '',
      args: [],
    );
  }

  /// `На почту {name} было отправлено письмо с кодом`
  String confirm_code_from_email(Object name) {
    return Intl.message(
      'На почту $name было отправлено письмо с кодом',
      name: 'confirm_code_from_email',
      desc: '',
      args: [name],
    );
  }

  /// `На телефон {name} отправлено СМС с кодом`
  String confirm_code_from_phone(Object name) {
    return Intl.message(
      'На телефон $name отправлено СМС с кодом',
      name: 'confirm_code_from_phone',
      desc: '',
      args: [name],
    );
  }

  /// `Код из СМС`
  String get auth_sms_code_phone {
    return Intl.message(
      'Код из СМС',
      name: 'auth_sms_code_phone',
      desc: '',
      args: [],
    );
  }

  /// `Введите личные данные`
  String get add_personal_data {
    return Intl.message(
      'Введите личные данные',
      name: 'add_personal_data',
      desc: '',
      args: [],
    );
  }

  /// `Нажмите для выбора, или перетащите файл прямо сюда`
  String get press_or_drag_to_pick {
    return Intl.message(
      'Нажмите для выбора, или перетащите файл прямо сюда',
      name: 'press_or_drag_to_pick',
      desc: '',
      args: [],
    );
  }

  /// `Я не {name}`
  String i_am_not_name(Object name) {
    return Intl.message(
      'Я не $name',
      name: 'i_am_not_name',
      desc: '',
      args: [name],
    );
  }

  /// `Задачи`
  String get tasks {
    return Intl.message(
      'Задачи',
      name: 'tasks',
      desc: '',
      args: [],
    );
  }

  /// `Завершить`
  String get to_finish {
    return Intl.message(
      'Завершить',
      name: 'to_finish',
      desc: '',
      args: [],
    );
  }

  /// `0 из 4`
  String get checkpoint_04 {
    return Intl.message(
      '0 из 4',
      name: 'checkpoint_04',
      desc: '',
      args: [],
    );
  }

  /// `2 недели`
  String get two_weeks {
    return Intl.message(
      '2 недели',
      name: 'two_weeks',
      desc: '',
      args: [],
    );
  }

  /// `21.09 - 03.10`
  String get period_21 {
    return Intl.message(
      '21.09 - 03.10',
      name: 'period_21',
      desc: '',
      args: [],
    );
  }

  /// `0/26`
  String get storyPoint_026 {
    return Intl.message(
      '0/26',
      name: 'storyPoint_026',
      desc: '',
      args: [],
    );
  }

  /// `каб. 404`
  String get location_sample {
    return Intl.message(
      'каб. 404',
      name: 'location_sample',
      desc: '',
      args: [],
    );
  }

  /// `9:00 - 9:30`
  String get timeslot_9 {
    return Intl.message(
      '9:00 - 9:30',
      name: 'timeslot_9',
      desc: '',
      args: [],
    );
  }

  /// `21 окт`
  String get date_21 {
    return Intl.message(
      '21 окт',
      name: 'date_21',
      desc: '',
      args: [],
    );
  }

  /// `Утренний планинг`
  String get morning_planning {
    return Intl.message(
      'Утренний планинг',
      name: 'morning_planning',
      desc: '',
      args: [],
    );
  }

  /// `Планирование`
  String get planning {
    return Intl.message(
      'Планирование',
      name: 'planning',
      desc: '',
      args: [],
    );
  }

  /// `13:00 -13:30`
  String get timeslot_13 {
    return Intl.message(
      '13:00 -13:30',
      name: 'timeslot_13',
      desc: '',
      args: [],
    );
  }

  /// `24 окт`
  String get date_24 {
    return Intl.message(
      '24 окт',
      name: 'date_24',
      desc: '',
      args: [],
    );
  }

  /// `Ревью`
  String get review {
    return Intl.message(
      'Ревью',
      name: 'review',
      desc: '',
      args: [],
    );
  }

  /// ` (2)`
  String get two {
    return Intl.message(
      ' (2)',
      name: 'two',
      desc: '',
      args: [],
    );
  }

  /// `Спринт 12-2456`
  String get sprint_sample {
    return Intl.message(
      'Спринт 12-2456',
      name: 'sprint_sample',
      desc: '',
      args: [],
    );
  }

  /// `Это двухнедельный спринт, по которому команда работает на постоянной основе`
  String get sprint_description {
    return Intl.message(
      'Это двухнедельный спринт, по которому команда работает на постоянной основе',
      name: 'sprint_description',
      desc: '',
      args: [],
    );
  }

  /// `Сделать дизайн`
  String get make_design {
    return Intl.message(
      'Сделать дизайн',
      name: 'make_design',
      desc: '',
      args: [],
    );
  }

  /// `завершены (0)`
  String get completed_0 {
    return Intl.message(
      'завершены (0)',
      name: 'completed_0',
      desc: '',
      args: [],
    );
  }

  /// `в работе (0)`
  String get inProgress_2 {
    return Intl.message(
      'в работе (0)',
      name: 'inProgress_2',
      desc: '',
      args: [],
    );
  }

  /// `Брендбук`
  String get task_brandBook {
    return Intl.message(
      'Брендбук',
      name: 'task_brandBook',
      desc: '',
      args: [],
    );
  }

  /// `Верстка`
  String get task_layout {
    return Intl.message(
      'Верстка',
      name: 'task_layout',
      desc: '',
      args: [],
    );
  }

  /// `Изобразить смешное`
  String get task_fun {
    return Intl.message(
      'Изобразить смешное',
      name: 'task_fun',
      desc: '',
      args: [],
    );
  }

  /// `в очереди (0)`
  String get in_queue_2 {
    return Intl.message(
      'в очереди (0)',
      name: 'in_queue_2',
      desc: '',
      args: [],
    );
  }

  /// `Все задачи`
  String get all_tasks {
    return Intl.message(
      'Все задачи',
      name: 'all_tasks',
      desc: '',
      args: [],
    );
  }

  /// `Задача 1`
  String get task_1 {
    return Intl.message(
      'Задача 1',
      name: 'task_1',
      desc: '',
      args: [],
    );
  }

  /// `Спринт`
  String get sprint {
    return Intl.message(
      'Спринт',
      name: 'sprint',
      desc: '',
      args: [],
    );
  }

  /// `Нарисовать сет иконок`
  String get icon_set {
    return Intl.message(
      'Нарисовать сет иконок',
      name: 'icon_set',
      desc: '',
      args: [],
    );
  }

  /// `Михаил Михайлов`
  String get michael_michael {
    return Intl.message(
      'Михаил Михайлов',
      name: 'michael_michael',
      desc: '',
      args: [],
    );
  }

  /// `Команда`
  String get team {
    return Intl.message(
      'Команда',
      name: 'team',
      desc: '',
      args: [],
    );
  }

  /// `Пока пусто`
  String get empty_tab {
    return Intl.message(
      'Пока пусто',
      name: 'empty_tab',
      desc: '',
      args: [],
    );
  }

  /// `Комментарии`
  String get tab_comments {
    return Intl.message(
      'Комментарии',
      name: 'tab_comments',
      desc: '',
      args: [],
    );
  }

  /// `Детали`
  String get details {
    return Intl.message(
      'Детали',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Длительность`
  String get durability {
    return Intl.message(
      'Длительность',
      name: 'durability',
      desc: '',
      args: [],
    );
  }

  /// `Период`
  String get period {
    return Intl.message(
      'Период',
      name: 'period',
      desc: '',
      args: [],
    );
  }

  /// `8`
  String get eight {
    return Intl.message(
      '8',
      name: 'eight',
      desc: '',
      args: [],
    );
  }

  /// `3`
  String get three {
    return Intl.message(
      '3',
      name: 'three',
      desc: '',
      args: [],
    );
  }

  /// `3`
  String get fifteen {
    return Intl.message(
      '3',
      name: 'fifteen',
      desc: '',
      args: [],
    );
  }

  /// `Новая задача`
  String get new_task {
    return Intl.message(
      'Новая задача',
      name: 'new_task',
      desc: '',
      args: [],
    );
  }

  /// `Название задачи`
  String get name_task {
    return Intl.message(
      'Название задачи',
      name: 'name_task',
      desc: '',
      args: [],
    );
  }

  /// `Введите название задачи`
  String get enter_name_task {
    return Intl.message(
      'Введите название задачи',
      name: 'enter_name_task',
      desc: '',
      args: [],
    );
  }

  /// `Введите описание задачи. Для начала редактирования нажмите на этот текст`
  String get enter_description_task {
    return Intl.message(
      'Введите описание задачи. Для начала редактирования нажмите на этот текст',
      name: 'enter_description_task',
      desc: '',
      args: [],
    );
  }

  /// `Надзадача`
  String get the_task {
    return Intl.message(
      'Надзадача',
      name: 'the_task',
      desc: '',
      args: [],
    );
  }

  /// `Спринты`
  String get sprints {
    return Intl.message(
      'Спринты',
      name: 'sprints',
      desc: '',
      args: [],
    );
  }

  /// `Подзадачи`
  String get subtasks {
    return Intl.message(
      'Подзадачи',
      name: 'subtasks',
      desc: '',
      args: [],
    );
  }

  /// `Еще {param, plural, one{{param} подзадача} few{{param} подзадачи} many{{param} подзадач} other{{param} подзадачи}}`
  String more_subtasks(int param) {
    return Intl.message(
      'Еще ${Intl.plural(param, one: '$param подзадача', few: '$param подзадачи', many: '$param подзадач', other: '$param подзадачи')}',
      name: 'more_subtasks',
      desc: '',
      args: [param],
    );
  }

  /// `Зависимости и блокировки`
  String get dependencies_and_locks {
    return Intl.message(
      'Зависимости и блокировки',
      name: 'dependencies_and_locks',
      desc: '',
      args: [],
    );
  }

  /// `Зависимость`
  String get depends {
    return Intl.message(
      'Зависимость',
      name: 'depends',
      desc: '',
      args: [],
    );
  }

  /// `Блокировки`
  String get blocks {
    return Intl.message(
      'Блокировки',
      name: 'blocks',
      desc: '',
      args: [],
    );
  }

  /// `Cтатус`
  String get status {
    return Intl.message(
      'Cтатус',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Приоритет`
  String get priority {
    return Intl.message(
      'Приоритет',
      name: 'priority',
      desc: '',
      args: [],
    );
  }

  /// `Исполнитель`
  String get performer {
    return Intl.message(
      'Исполнитель',
      name: 'performer',
      desc: '',
      args: [],
    );
  }

  /// `Исполнители`
  String get responsible2 {
    return Intl.message(
      'Исполнители',
      name: 'responsible2',
      desc: '',
      args: [],
    );
  }

  /// `Наблюдатели`
  String get observers {
    return Intl.message(
      'Наблюдатели',
      name: 'observers',
      desc: '',
      args: [],
    );
  }

  /// `Дата начала`
  String get start_date {
    return Intl.message(
      'Дата начала',
      name: 'start_date',
      desc: '',
      args: [],
    );
  }

  /// `Дата окончания`
  String get end_date {
    return Intl.message(
      'Дата окончания',
      name: 'end_date',
      desc: '',
      args: [],
    );
  }

  /// `дней`
  String get days {
    return Intl.message(
      'дней',
      name: 'days',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, one{{count} Ответ} few{{count} Ответа} many{{count} Ответов} other{{count} Ответы}}`
  String commentsPlural(int count) {
    return Intl.plural(
      count,
      one: '$count Ответ',
      few: '$count Ответа',
      many: '$count Ответов',
      other: '$count Ответы',
      name: 'commentsPlural',
      desc: '',
      args: [count],
    );
  }

  /// `{days, plural, =0{0 дней} =1{1 день} one{1 день} few{{days} дня} many{{days} дней} other{{days} дней}}`
  String daysPlural(int days) {
    return Intl.plural(
      days,
      zero: '0 дней',
      one: '1 день',
      few: '$days дня',
      many: '$days дней',
      other: '$days дней',
      name: 'daysPlural',
      desc: '',
      args: [days],
    );
  }

  /// `Стори поинты`
  String get story_points {
    return Intl.message(
      'Стори поинты',
      name: 'story_points',
      desc: '',
      args: [],
    );
  }

  /// `Отправить в работу`
  String get send_to_work {
    return Intl.message(
      'Отправить в работу',
      name: 'send_to_work',
      desc: '',
      args: [],
    );
  }

  /// `Добавить планирование`
  String get add_planning {
    return Intl.message(
      'Добавить планирование',
      name: 'add_planning',
      desc: '',
      args: [],
    );
  }

  /// `Добавить ревью`
  String get add_review {
    return Intl.message(
      'Добавить ревью',
      name: 'add_review',
      desc: '',
      args: [],
    );
  }

  /// `Бэклог`
  String get backlog {
    return Intl.message(
      'Бэклог',
      name: 'backlog',
      desc: '',
      args: [],
    );
  }

  /// `Приортиет`
  String get priortiet {
    return Intl.message(
      'Приортиет',
      name: 'priortiet',
      desc: '',
      args: [],
    );
  }

  /// `Еще`
  String get still {
    return Intl.message(
      'Еще',
      name: 'still',
      desc: '',
      args: [],
    );
  }

  /// `Свернуть`
  String get wrap {
    return Intl.message(
      'Свернуть',
      name: 'wrap',
      desc: '',
      args: [],
    );
  }

  /// `Чек-лист`
  String get checklist {
    return Intl.message(
      'Чек-лист',
      name: 'checklist',
      desc: '',
      args: [],
    );
  }

  /// `Добавить файл`
  String get add_file {
    return Intl.message(
      'Добавить файл',
      name: 'add_file',
      desc: '',
      args: [],
    );
  }

  /// `Добавить файл из DOC`
  String get add_file_from_doc {
    return Intl.message(
      'Добавить файл из DOC',
      name: 'add_file_from_doc',
      desc: '',
      args: [],
    );
  }

  /// `Выберите источник файла, или перетащите его сюда`
  String get select_the_file_source {
    return Intl.message(
      'Выберите источник файла, или перетащите его сюда',
      name: 'select_the_file_source',
      desc: '',
      args: [],
    );
  }

  /// `Показывать`
  String get show {
    return Intl.message(
      'Показывать',
      name: 'show',
      desc: '',
      args: [],
    );
  }

  /// `комментарии и действия`
  String get comments_and_actions {
    return Intl.message(
      'комментарии и действия',
      name: 'comments_and_actions',
      desc: '',
      args: [],
    );
  }

  /// `Я сегодня не смогу придти на собрание.`
  String get comment_1 {
    return Intl.message(
      'Я сегодня не смогу придти на собрание.',
      name: 'comment_1',
      desc: '',
      args: [],
    );
  }

  /// `'Представьте, что вам больше не нужно описывать детали проекта третьей стороне и объяснять все процессы. Вы мгновенно делитесь планом, на котором все действительно легко понять. Без создания аккаунта. Да, с DLS это очень просто. Вы мгновенно делитесь планом и потом происходит прекрасное'`
  String get comment_2 {
    return Intl.message(
      '\'Представьте, что вам больше не нужно описывать детали проекта третьей стороне и объяснять все процессы. Вы мгновенно делитесь планом, на котором все действительно легко понять. Без создания аккаунта. Да, с DLS это очень просто. Вы мгновенно делитесь планом и потом происходит прекрасное\'',
      name: 'comment_2',
      desc: '',
      args: [],
    );
  }

  /// `назначил себя исполнителем`
  String get comment_3 {
    return Intl.message(
      'назначил себя исполнителем',
      name: 'comment_3',
      desc: '',
      args: [],
    );
  }

  /// `Вот ссылка на наш сайт - полюбуйся!`
  String get comment_4 {
    return Intl.message(
      'Вот ссылка на наш сайт - полюбуйся!',
      name: 'comment_4',
      desc: '',
      args: [],
    );
  }

  /// `Введите текст сообщения...`
  String get enter_message {
    return Intl.message(
      'Введите текст сообщения...',
      name: 'enter_message',
      desc: '',
      args: [],
    );
  }

  /// `не выбрано`
  String get not_selected {
    return Intl.message(
      'не выбрано',
      name: 'not_selected',
      desc: '',
      args: [],
    );
  }

  /// `Список`
  String get list {
    return Intl.message(
      'Список',
      name: 'list',
      desc: '',
      args: [],
    );
  }

  /// `Канбан`
  String get kanban {
    return Intl.message(
      'Канбан',
      name: 'kanban',
      desc: '',
      args: [],
    );
  }

  /// `Гант`
  String get gantt {
    return Intl.message(
      'Гант',
      name: 'gantt',
      desc: '',
      args: [],
    );
  }

  /// `Файлы`
  String get files_title {
    return Intl.message(
      'Файлы',
      name: 'files_title',
      desc: '',
      args: [],
    );
  }

  /// `С файлами`
  String get with_files {
    return Intl.message(
      'С файлами',
      name: 'with_files',
      desc: '',
      args: [],
    );
  }

  /// `Без файлов`
  String get without_files {
    return Intl.message(
      'Без файлов',
      name: 'without_files',
      desc: '',
      args: [],
    );
  }

  /// `Моя роль`
  String get my_role {
    return Intl.message(
      'Моя роль',
      name: 'my_role',
      desc: '',
      args: [],
    );
  }

  /// `Все роли`
  String get all_roles {
    return Intl.message(
      'Все роли',
      name: 'all_roles',
      desc: '',
      args: [],
    );
  }

  /// `Исполнитель`
  String get executor {
    return Intl.message(
      'Исполнитель',
      name: 'executor',
      desc: '',
      args: [],
    );
  }

  /// `Автор`
  String get author {
    return Intl.message(
      'Автор',
      name: 'author',
      desc: '',
      args: [],
    );
  }

  /// `Ответственный`
  String get responsible {
    return Intl.message(
      'Ответственный',
      name: 'responsible',
      desc: '',
      args: [],
    );
  }

  /// `Наблюдатель`
  String get observer {
    return Intl.message(
      'Наблюдатель',
      name: 'observer',
      desc: '',
      args: [],
    );
  }

  /// `Теги`
  String get tags {
    return Intl.message(
      'Теги',
      name: 'tags',
      desc: '',
      args: [],
    );
  }

  /// `Все теги`
  String get all_tags {
    return Intl.message(
      'Все теги',
      name: 'all_tags',
      desc: '',
      args: [],
    );
  }

  /// `Design`
  String get tag_design {
    return Intl.message(
      'Design',
      name: 'tag_design',
      desc: '',
      args: [],
    );
  }

  /// `IT`
  String get tag_it {
    return Intl.message(
      'IT',
      name: 'tag_it',
      desc: '',
      args: [],
    );
  }

  /// `Разработка`
  String get tag_development {
    return Intl.message(
      'Разработка',
      name: 'tag_development',
      desc: '',
      args: [],
    );
  }

  /// `HR`
  String get tag_hr {
    return Intl.message(
      'HR',
      name: 'tag_hr',
      desc: '',
      args: [],
    );
  }

  /// `Тип`
  String get types_hint {
    return Intl.message(
      'Тип',
      name: 'types_hint',
      desc: '',
      args: [],
    );
  }

  /// `Все типы`
  String get types_all {
    return Intl.message(
      'Все типы',
      name: 'types_all',
      desc: '',
      args: [],
    );
  }

  /// `Задача`
  String get types_task {
    return Intl.message(
      'Задача',
      name: 'types_task',
      desc: '',
      args: [],
    );
  }

  /// `Документооборот`
  String get types_document_flow {
    return Intl.message(
      'Документооборот',
      name: 'types_document_flow',
      desc: '',
      args: [],
    );
  }

  /// `все`
  String get all {
    return Intl.message(
      'все',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `по спринтам`
  String get by_sprints {
    return Intl.message(
      'по спринтам',
      name: 'by_sprints',
      desc: '',
      args: [],
    );
  }

  /// `Все статусы`
  String get status_all {
    return Intl.message(
      'Все статусы',
      name: 'status_all',
      desc: '',
      args: [],
    );
  }

  /// `Все приоритеты`
  String get priorety_all {
    return Intl.message(
      'Все приоритеты',
      name: 'priorety_all',
      desc: '',
      args: [],
    );
  }

  /// `в очереди`
  String get status_todo {
    return Intl.message(
      'в очереди',
      name: 'status_todo',
      desc: '',
      args: [],
    );
  }

  /// `в работе`
  String get status_in_progress {
    return Intl.message(
      'в работе',
      name: 'status_in_progress',
      desc: '',
      args: [],
    );
  }

  /// `завершена`
  String get status_done {
    return Intl.message(
      'завершена',
      name: 'status_done',
      desc: '',
      args: [],
    );
  }

  /// `Статус`
  String get status_hint {
    return Intl.message(
      'Статус',
      name: 'status_hint',
      desc: '',
      args: [],
    );
  }

  /// `Профиль`
  String get profile {
    return Intl.message(
      'Профиль',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Отменить удаление невозможно. Вы действительно хотите удалить фото?`
  String get del_ava {
    return Intl.message(
      'Отменить удаление невозможно. Вы действительно хотите удалить фото?',
      name: 'del_ava',
      desc: '',
      args: [],
    );
  }

  /// `Добавление телефона`
  String get titleAddPhone {
    return Intl.message(
      'Добавление телефона',
      name: 'titleAddPhone',
      desc: '',
      args: [],
    );
  }

  /// `Введите номер телефона, который Вы хотите добавить к аккаунту DLS`
  String get contentAddPhone {
    return Intl.message(
      'Введите номер телефона, который Вы хотите добавить к аккаунту DLS',
      name: 'contentAddPhone',
      desc: '',
      args: [],
    );
  }

  /// `Новый телефон`
  String get inputLabelAddPhone {
    return Intl.message(
      'Новый телефон',
      name: 'inputLabelAddPhone',
      desc: '',
      args: [],
    );
  }

  /// `796321456987`
  String get inputHintAddPhone {
    return Intl.message(
      '796321456987',
      name: 'inputHintAddPhone',
      desc: '',
      args: [],
    );
  }

  /// `Подтверждение телефона`
  String get titleValidatePhone {
    return Intl.message(
      'Подтверждение телефона',
      name: 'titleValidatePhone',
      desc: '',
      args: [],
    );
  }

  /// `На телефон {param} отправлено СМС с кодом`
  String contentValidatePhone(Object param) {
    return Intl.message(
      'На телефон $param отправлено СМС с кодом',
      name: 'contentValidatePhone',
      desc: '',
      args: [param],
    );
  }

  /// `Код из СМС`
  String get inputLabelValidatePhone {
    return Intl.message(
      'Код из СМС',
      name: 'inputLabelValidatePhone',
      desc: '',
      args: [],
    );
  }

  /// `0000`
  String get inputHintValidatePhone {
    return Intl.message(
      '0000',
      name: 'inputHintValidatePhone',
      desc: '',
      args: [],
    );
  }

  /// `Добавление e-mail`
  String get titleAddEmail {
    return Intl.message(
      'Добавление e-mail',
      name: 'titleAddEmail',
      desc: '',
      args: [],
    );
  }

  /// `Введите e-mail, который Вы хотите добавить к аккаунту DLS`
  String get contentAddEmail {
    return Intl.message(
      'Введите e-mail, который Вы хотите добавить к аккаунту DLS',
      name: 'contentAddEmail',
      desc: '',
      args: [],
    );
  }

  /// `Новый e-mail`
  String get inputLabelAddEmail {
    return Intl.message(
      'Новый e-mail',
      name: 'inputLabelAddEmail',
      desc: '',
      args: [],
    );
  }

  /// `dls@dls.one`
  String get inputHintAddEmail {
    return Intl.message(
      'dls@dls.one',
      name: 'inputHintAddEmail',
      desc: '',
      args: [],
    );
  }

  /// `Подтверждение e-mail`
  String get titleValidateEmail {
    return Intl.message(
      'Подтверждение e-mail',
      name: 'titleValidateEmail',
      desc: '',
      args: [],
    );
  }

  /// `На почту {param} было отправлено письмо с кодом`
  String contentValidateEmail(Object param) {
    return Intl.message(
      'На почту $param было отправлено письмо с кодом',
      name: 'contentValidateEmail',
      desc: '',
      args: [param],
    );
  }

  /// `Код из письма`
  String get inputLabelValidateEmail {
    return Intl.message(
      'Код из письма',
      name: 'inputLabelValidateEmail',
      desc: '',
      args: [],
    );
  }

  /// `0000`
  String get inputHintValidateEmail {
    return Intl.message(
      '0000',
      name: 'inputHintValidateEmail',
      desc: '',
      args: [],
    );
  }

  /// `Сохранено`
  String get saved {
    return Intl.message(
      'Сохранено',
      name: 'saved',
      desc: '',
      args: [],
    );
  }

  /// `Доступ запрещен`
  String get access_is_denied {
    return Intl.message(
      'Доступ запрещен',
      name: 'access_is_denied',
      desc: '',
      args: [],
    );
  }

  /// `Добавить период тишины`
  String get add_mute_interval {
    return Intl.message(
      'Добавить период тишины',
      name: 'add_mute_interval',
      desc: '',
      args: [],
    );
  }

  /// `имя не указано`
  String get name_not_set {
    return Intl.message(
      'имя не указано',
      name: 'name_not_set',
      desc: '',
      args: [],
    );
  }

  /// `фамилия не указана`
  String get surname_not_set {
    return Intl.message(
      'фамилия не указана',
      name: 'surname_not_set',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка в коде подтверждения`
  String get confirm_code_error {
    return Intl.message(
      'Ошибка в коде подтверждения',
      name: 'confirm_code_error',
      desc: '',
      args: [],
    );
  }

  /// `Профиль пользователя пуст`
  String get profile_is_empty {
    return Intl.message(
      'Профиль пользователя пуст',
      name: 'profile_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `Пин-коды не совпадают, попробуйте снова`
  String get pins_not_same {
    return Intl.message(
      'Пин-коды не совпадают, попробуйте снова',
      name: 'pins_not_same',
      desc: '',
      args: [],
    );
  }

  /// `Отсканируйте отпечаток пальца для аутентификации`
  String get scan_bio_for_auth {
    return Intl.message(
      'Отсканируйте отпечаток пальца для аутентификации',
      name: 'scan_bio_for_auth',
      desc: '',
      args: [],
    );
  }

  /// `критичный`
  String get task_priority_critical {
    return Intl.message(
      'критичный',
      name: 'task_priority_critical',
      desc: '',
      args: [],
    );
  }

  /// `высокий`
  String get task_priority_high {
    return Intl.message(
      'высокий',
      name: 'task_priority_high',
      desc: '',
      args: [],
    );
  }

  /// `средний`
  String get task_priority_standart {
    return Intl.message(
      'средний',
      name: 'task_priority_standart',
      desc: '',
      args: [],
    );
  }

  /// `низкий`
  String get task_priority_low {
    return Intl.message(
      'низкий',
      name: 'task_priority_low',
      desc: '',
      args: [],
    );
  }

  /// `незначительный`
  String get task_priority_minor {
    return Intl.message(
      'незначительный',
      name: 'task_priority_minor',
      desc: '',
      args: [],
    );
  }

  /// `Дедлайн`
  String get deadline {
    return Intl.message(
      'Дедлайн',
      name: 'deadline',
      desc: '',
      args: [],
    );
  }

  /// `Скрыть все`
  String get hide_all {
    return Intl.message(
      'Скрыть все',
      name: 'hide_all',
      desc: '',
      args: [],
    );
  }

  /// `Прочитать всё и закрыть`
  String get read_all_and_close {
    return Intl.message(
      'Прочитать всё и закрыть',
      name: 'read_all_and_close',
      desc: '',
      args: [],
    );
  }

  /// `Мероприятия`
  String get events {
    return Intl.message(
      'Мероприятия',
      name: 'events',
      desc: '',
      args: [],
    );
  }

  /// `Нет уведомлений`
  String get notifications_empty {
    return Intl.message(
      'Нет уведомлений',
      name: 'notifications_empty',
      desc: '',
      args: [],
    );
  }

  /// `Участвую`
  String get participate {
    return Intl.message(
      'Участвую',
      name: 'participate',
      desc: '',
      args: [],
    );
  }

  /// `Не участвую`
  String get participate_not {
    return Intl.message(
      'Не участвую',
      name: 'participate_not',
      desc: '',
      args: [],
    );
  }

  /// `Присоединиться`
  String get join {
    return Intl.message(
      'Присоединиться',
      name: 'join',
      desc: '',
      args: [],
    );
  }

  /// `Начался звонок в чате {name}`
  String chatCallStart(Object name) {
    return Intl.message(
      'Начался звонок в чате $name',
      name: 'chatCallStart',
      desc: '',
      args: [name],
    );
  }

  /// `Завершился звонок в чате {name}`
  String chatCallEnd(Object name) {
    return Intl.message(
      'Завершился звонок в чате $name',
      name: 'chatCallEnd',
      desc: '',
      args: [name],
    );
  }

  /// `прислал(а) вам личное сообщение`
  String get chatPrivateMessage {
    return Intl.message(
      'прислал(а) вам личное сообщение',
      name: 'chatPrivateMessage',
      desc: '',
      args: [],
    );
  }

  /// `прислал(а) сообщение в чат {name}`
  String chatGroupMessage(Object name) {
    return Intl.message(
      'прислал(а) сообщение в чат $name',
      name: 'chatGroupMessage',
      desc: '',
      args: [name],
    );
  }

  /// `ответил(а) на ваше сообщение`
  String get chatReplyMessage {
    return Intl.message(
      'ответил(а) на ваше сообщение',
      name: 'chatReplyMessage',
      desc: '',
      args: [],
    );
  }

  /// `добавил(а) вас в группу`
  String get chatAddYouToGroup {
    return Intl.message(
      'добавил(а) вас в группу',
      name: 'chatAddYouToGroup',
      desc: '',
      args: [],
    );
  }

  /// `добавил(а) пользователей в группу`
  String get chatAddGroupUsers {
    return Intl.message(
      'добавил(а) пользователей в группу',
      name: 'chatAddGroupUsers',
      desc: '',
      args: [],
    );
  }

  /// `удалил(а) пользователей из группы`
  String get chatRemoveGroupUsers {
    return Intl.message(
      'удалил(а) пользователей из группы',
      name: 'chatRemoveGroupUsers',
      desc: '',
      args: [],
    );
  }

  /// `добавил(а) комментарий к мероприятию`
  String get chatAddEventComment {
    return Intl.message(
      'добавил(а) комментарий к мероприятию',
      name: 'chatAddEventComment',
      desc: '',
      args: [],
    );
  }

  /// `удалил(а) комментарий к мероприятию`
  String get chatRemoveEventComment {
    return Intl.message(
      'удалил(а) комментарий к мероприятию',
      name: 'chatRemoveEventComment',
      desc: '',
      args: [],
    );
  }

  /// `добавил(а) комментарий к задаче`
  String get chatAddTaskComment {
    return Intl.message(
      'добавил(а) комментарий к задаче',
      name: 'chatAddTaskComment',
      desc: '',
      args: [],
    );
  }

  /// `удалил(а) комментарий из задачи`
  String get chatRemoveTaskComment {
    return Intl.message(
      'удалил(а) комментарий из задачи',
      name: 'chatRemoveTaskComment',
      desc: '',
      args: [],
    );
  }

  /// `изменил(а) название группы`
  String get chatChangeGroupName {
    return Intl.message(
      'изменил(а) название группы',
      name: 'chatChangeGroupName',
      desc: '',
      args: [],
    );
  }

  /// `изменил(а) аватар группы`
  String get chatChangeGroupAvatar {
    return Intl.message(
      'изменил(а) аватар группы',
      name: 'chatChangeGroupAvatar',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get eventChangeAnyString {
    return Intl.message(
      '',
      name: 'eventChangeAnyString',
      desc: '',
      args: [],
    );
  }

  /// `пригласил(а) вас на мероприятие`
  String get eventInvite {
    return Intl.message(
      'пригласил(а) вас на мероприятие',
      name: 'eventInvite',
      desc: '',
      args: [],
    );
  }

  /// `удалил(а) мероприятие`
  String get eventRemove {
    return Intl.message(
      'удалил(а) мероприятие',
      name: 'eventRemove',
      desc: '',
      args: [],
    );
  }

  /// `изменил(а) дату мероприятия`
  String get eventChangeDate {
    return Intl.message(
      'изменил(а) дату мероприятия',
      name: 'eventChangeDate',
      desc: '',
      args: [],
    );
  }

  /// `изменил(а) время мероприятия`
  String get eventChangeTime {
    return Intl.message(
      'изменил(а) время мероприятия',
      name: 'eventChangeTime',
      desc: '',
      args: [],
    );
  }

  /// `изменил(а) тип мероприятия`
  String get eventChangeFormat {
    return Intl.message(
      'изменил(а) тип мероприятия',
      name: 'eventChangeFormat',
      desc: '',
      args: [],
    );
  }

  /// `изменил(а) место мероприятия`
  String get eventChangePlace {
    return Intl.message(
      'изменил(а) место мероприятия',
      name: 'eventChangePlace',
      desc: '',
      args: [],
    );
  }

  /// `добавил(а) файлы к мероприятию`
  String get eventAddFiles {
    return Intl.message(
      'добавил(а) файлы к мероприятию',
      name: 'eventAddFiles',
      desc: '',
      args: [],
    );
  }

  /// `удалил(а) файлы из мероприятия`
  String get eventRemoveFiles {
    return Intl.message(
      'удалил(а) файлы из мероприятия',
      name: 'eventRemoveFiles',
      desc: '',
      args: [],
    );
  }

  /// `привязал(а) задачи к мероприятию`
  String get eventLinkTasks {
    return Intl.message(
      'привязал(а) задачи к мероприятию',
      name: 'eventLinkTasks',
      desc: '',
      args: [],
    );
  }

  /// `отвязал(а) задачи от мероприятия`
  String get eventUnlinkTasks {
    return Intl.message(
      'отвязал(а) задачи от мероприятия',
      name: 'eventUnlinkTasks',
      desc: '',
      args: [],
    );
  }

  /// `изменил(а) название мероприятия`
  String get eventChangeName {
    return Intl.message(
      'изменил(а) название мероприятия',
      name: 'eventChangeName',
      desc: '',
      args: [],
    );
  }

  /// `ограничил(а) вам доступ к мероприятию`
  String get eventRestrictAccess {
    return Intl.message(
      'ограничил(а) вам доступ к мероприятию',
      name: 'eventRestrictAccess',
      desc: '',
      args: [],
    );
  }

  /// `предоставил(а) вам доступ к мероприятию`
  String get eventExpandAccess {
    return Intl.message(
      'предоставил(а) вам доступ к мероприятию',
      name: 'eventExpandAccess',
      desc: '',
      args: [],
    );
  }

  /// `Началось мероприятие`
  String get eventStart {
    return Intl.message(
      'Началось мероприятие',
      name: 'eventStart',
      desc: '',
      args: [],
    );
  }

  /// `Завершилось мероприятие`
  String get eventEnd {
    return Intl.message(
      'Завершилось мероприятие',
      name: 'eventEnd',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get taskChangeAnyString {
    return Intl.message(
      '',
      name: 'taskChangeAnyString',
      desc: '',
      args: [],
    );
  }

  /// `назначил(а) вас исполнителем задачи`
  String get taskAddYouAssigner {
    return Intl.message(
      'назначил(а) вас исполнителем задачи',
      name: 'taskAddYouAssigner',
      desc: '',
      args: [],
    );
  }

  /// `изменил(а) исполнителя задачи`
  String get taskChangeAssigner {
    return Intl.message(
      'изменил(а) исполнителя задачи',
      name: 'taskChangeAssigner',
      desc: '',
      args: [],
    );
  }

  /// `изменил(а) статус задачи`
  String get taskChangeStatus {
    return Intl.message(
      'изменил(а) статус задачи',
      name: 'taskChangeStatus',
      desc: '',
      args: [],
    );
  }

  /// `изменил(а) дедлайн задачи`
  String get taskChangeDeadline {
    return Intl.message(
      'изменил(а) дедлайн задачи',
      name: 'taskChangeDeadline',
      desc: '',
      args: [],
    );
  }

  /// `изменил(а) приоритет задачи`
  String get taskChangePriority {
    return Intl.message(
      'изменил(а) приоритет задачи',
      name: 'taskChangePriority',
      desc: '',
      args: [],
    );
  }

  /// `добавил(а) файлы задаче`
  String get taskAddFiles {
    return Intl.message(
      'добавил(а) файлы задаче',
      name: 'taskAddFiles',
      desc: '',
      args: [],
    );
  }

  /// `удалил(а) файлы задачи`
  String get taskRemoveFiles {
    return Intl.message(
      'удалил(а) файлы задачи',
      name: 'taskRemoveFiles',
      desc: '',
      args: [],
    );
  }

  /// `добавил(а) наблюдателей задаче`
  String get taskAddWatchers {
    return Intl.message(
      'добавил(а) наблюдателей задаче',
      name: 'taskAddWatchers',
      desc: '',
      args: [],
    );
  }

  /// `удалил(а) наблюдателей задачи`
  String get taskRemoveWatchers {
    return Intl.message(
      'удалил(а) наблюдателей задачи',
      name: 'taskRemoveWatchers',
      desc: '',
      args: [],
    );
  }

  /// `добавил(а) зависимости задаче`
  String get taskAddDependencies {
    return Intl.message(
      'добавил(а) зависимости задаче',
      name: 'taskAddDependencies',
      desc: '',
      args: [],
    );
  }

  /// `удалил(а) зависимости задачи`
  String get taskRemoveDependencies {
    return Intl.message(
      'удалил(а) зависимости задачи',
      name: 'taskRemoveDependencies',
      desc: '',
      args: [],
    );
  }

  /// `добавил(а) спринты задаче`
  String get taskAddSprints {
    return Intl.message(
      'добавил(а) спринты задаче',
      name: 'taskAddSprints',
      desc: '',
      args: [],
    );
  }

  /// `удалил(а) спринты задачи`
  String get taskRemoveSprints {
    return Intl.message(
      'удалил(а) спринты задачи',
      name: 'taskRemoveSprints',
      desc: '',
      args: [],
    );
  }

  /// `добавил(а) мероприятия задаче`
  String get taskAddEvents {
    return Intl.message(
      'добавил(а) мероприятия задаче',
      name: 'taskAddEvents',
      desc: '',
      args: [],
    );
  }

  /// `удалил(а) мероприятия задачи`
  String get taskRemoveEvents {
    return Intl.message(
      'удалил(а) мероприятия задачи',
      name: 'taskRemoveEvents',
      desc: '',
      args: [],
    );
  }

  /// `добавил(а) пункты в чек-лист задачи`
  String get taskAddTodos {
    return Intl.message(
      'добавил(а) пункты в чек-лист задачи',
      name: 'taskAddTodos',
      desc: '',
      args: [],
    );
  }

  /// `удалил(а) пункты в чек-листе задачи`
  String get taskRemoveTodos {
    return Intl.message(
      'удалил(а) пункты в чек-листе задачи',
      name: 'taskRemoveTodos',
      desc: '',
      args: [],
    );
  }

  /// `добавил(а) подзадачи задаче`
  String get taskAddChildTasks {
    return Intl.message(
      'добавил(а) подзадачи задаче',
      name: 'taskAddChildTasks',
      desc: '',
      args: [],
    );
  }

  /// `удалил(а)`
  String get taskRemoveChildTasks {
    return Intl.message(
      'удалил(а)',
      name: 'taskRemoveChildTasks',
      desc: '',
      args: [],
    );
  }

  /// `ограничил(а) вам доступ к задаче`
  String get taskRestrictAccess {
    return Intl.message(
      'ограничил(а) вам доступ к задаче',
      name: 'taskRestrictAccess',
      desc: '',
      args: [],
    );
  }

  /// `предоставил(а) вам доступ к задаче`
  String get taskExpandAccess {
    return Intl.message(
      'предоставил(а) вам доступ к задаче',
      name: 'taskExpandAccess',
      desc: '',
      args: [],
    );
  }

  /// `заблокировал(а) задачу`
  String get taskLock {
    return Intl.message(
      'заблокировал(а) задачу',
      name: 'taskLock',
      desc: '',
      args: [],
    );
  }

  /// `разблокировал(а) задачу`
  String get taskUnlock {
    return Intl.message(
      'разблокировал(а) задачу',
      name: 'taskUnlock',
      desc: '',
      args: [],
    );
  }

  /// `Начался групповой звонок в задаче`
  String get taskCallStart {
    return Intl.message(
      'Начался групповой звонок в задаче',
      name: 'taskCallStart',
      desc: '',
      args: [],
    );
  }

  /// `Закончился групповой звонок в задаче`
  String get taskCallEnd {
    return Intl.message(
      'Закончился групповой звонок в задаче',
      name: 'taskCallEnd',
      desc: '',
      args: [],
    );
  }

  /// `{param} дедлайн задачи`
  String taskReminder(Object param) {
    return Intl.message(
      '$param дедлайн задачи',
      name: 'taskReminder',
      desc: '',
      args: [param],
    );
  }

  /// `Просрочена задача`
  String get taskOverdue {
    return Intl.message(
      'Просрочена задача',
      name: 'taskOverdue',
      desc: '',
      args: [],
    );
  }

  /// `Новые контакты`
  String get newContacts {
    return Intl.message(
      'Новые контакты',
      name: 'newContacts',
      desc: '',
      args: [],
    );
  }

  /// `Add performer`
  String get tooltip_performer {
    return Intl.message(
      'Add performer',
      name: 'tooltip_performer',
      desc: '',
      args: [],
    );
  }

  /// `Добавить задачу`
  String get tooltip_add_task {
    return Intl.message(
      'Добавить задачу',
      name: 'tooltip_add_task',
      desc: '',
      args: [],
    );
  }

  /// `Add subtask`
  String get tooltip_add_subtask {
    return Intl.message(
      'Add subtask',
      name: 'tooltip_add_subtask',
      desc: '',
      args: [],
    );
  }

  /// `Add supertask`
  String get tooltip_add_supertask {
    return Intl.message(
      'Add supertask',
      name: 'tooltip_add_supertask',
      desc: '',
      args: [],
    );
  }

  /// `Open menu`
  String get tooltip_open_menu {
    return Intl.message(
      'Open menu',
      name: 'tooltip_open_menu',
      desc: '',
      args: [],
    );
  }

  /// `Показать всю иерархию`
  String get show_entire_hierarchy {
    return Intl.message(
      'Показать всю иерархию',
      name: 'show_entire_hierarchy',
      desc: '',
      args: [],
    );
  }

  /// `Добавление людей в группу`
  String get groupAddPeople {
    return Intl.message(
      'Добавление людей в группу',
      name: 'groupAddPeople',
      desc: '',
      args: [],
    );
  }

  /// `К сожалению, на сервере произошла ошибка`
  String get serverError {
    return Intl.message(
      'К сожалению, на сервере произошла ошибка',
      name: 'serverError',
      desc: '',
      args: [],
    );
  }

  /// `К сожалению, произошла ошибка`
  String get appError {
    return Intl.message(
      'К сожалению, произошла ошибка',
      name: 'appError',
      desc: '',
      args: [],
    );
  }

  /// `Начните вводить текст для поиска...`
  String get startTypeForSearch {
    return Intl.message(
      'Начните вводить текст для поиска...',
      name: 'startTypeForSearch',
      desc: '',
      args: [],
    );
  }

  /// `Ничего не найдено`
  String get searchResultsIsEmpty {
    return Intl.message(
      'Ничего не найдено',
      name: 'searchResultsIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Чат не найден`
  String get chatNotFound {
    return Intl.message(
      'Чат не найден',
      name: 'chatNotFound',
      desc: '',
      args: [],
    );
  }

  /// `В чате находитесь только вы`
  String get chatContainsOnlyYou {
    return Intl.message(
      'В чате находитесь только вы',
      name: 'chatContainsOnlyYou',
      desc: '',
      args: [],
    );
  }

  /// `Участников`
  String get participates {
    return Intl.message(
      'Участников',
      name: 'participates',
      desc: '',
      args: [],
    );
  }

  /// `Недостаточно прав`
  String get notEnoughRights {
    return Intl.message(
      'Недостаточно прав',
      name: 'notEnoughRights',
      desc: '',
      args: [],
    );
  }

  /// `Удалить чат?`
  String get deleteChat {
    return Intl.message(
      'Удалить чат?',
      name: 'deleteChat',
      desc: '',
      args: [],
    );
  }

  /// `создал чат`
  String get chatMessageCreatedChat {
    return Intl.message(
      'создал чат',
      name: 'chatMessageCreatedChat',
      desc: '',
      args: [],
    );
  }

  /// `добавил`
  String get chatMessageSendInvite {
    return Intl.message(
      'добавил',
      name: 'chatMessageSendInvite',
      desc: '',
      args: [],
    );
  }

  /// `присоединился`
  String get chatMessageJoinedChat {
    return Intl.message(
      'присоединился',
      name: 'chatMessageJoinedChat',
      desc: '',
      args: [],
    );
  }

  /// `вышел из чата`
  String get chatMessageLeaveChat {
    return Intl.message(
      'вышел из чата',
      name: 'chatMessageLeaveChat',
      desc: '',
      args: [],
    );
  }

  /// `выгнал`
  String get chatMessageKickedChat {
    return Intl.message(
      'выгнал',
      name: 'chatMessageKickedChat',
      desc: '',
      args: [],
    );
  }

  /// `сменил имя`
  String get chatMessageChangedName {
    return Intl.message(
      'сменил имя',
      name: 'chatMessageChangedName',
      desc: '',
      args: [],
    );
  }

  /// `неизвестный статус`
  String get chatMessageUnknownStatus {
    return Intl.message(
      'неизвестный статус',
      name: 'chatMessageUnknownStatus',
      desc: '',
      args: [],
    );
  }

  /// `Новые сообщения`
  String get chatMessageNewMessages {
    return Intl.message(
      'Новые сообщения',
      name: 'chatMessageNewMessages',
      desc: '',
      args: [],
    );
  }

  /// `Редактирование`
  String get chatMessageEdit {
    return Intl.message(
      'Редактирование',
      name: 'chatMessageEdit',
      desc: '',
      args: [],
    );
  }

  /// `{param} отредактировано`
  String chatMessageEditedAt(Object param) {
    return Intl.message(
      '$param отредактировано',
      name: 'chatMessageEditedAt',
      desc: '',
      args: [param],
    );
  }

  /// `сообщение удалено`
  String get chatMessageDeleted {
    return Intl.message(
      'сообщение удалено',
      name: 'chatMessageDeleted',
      desc: '',
      args: [],
    );
  }

  /// `{param} удалено`
  String chatMessageDeletedAt(Object param) {
    return Intl.message(
      '$param удалено',
      name: 'chatMessageDeletedAt',
      desc: '',
      args: [param],
    );
  }

  /// `Прикреплённые файлы`
  String get chatMessageAttachedFiles {
    return Intl.message(
      'Прикреплённые файлы',
      name: 'chatMessageAttachedFiles',
      desc: '',
      args: [],
    );
  }

  /// `Удалено из клиента`
  String get chatMessageRemovedFromClient {
    return Intl.message(
      'Удалено из клиента',
      name: 'chatMessageRemovedFromClient',
      desc: '',
      args: [],
    );
  }

  /// `Цитировать`
  String get chatMessageQuote {
    return Intl.message(
      'Цитировать',
      name: 'chatMessageQuote',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, =0{{count} сообщений} one{{count} сообщение} few{{count} сообщения} other{{count} сообщений}}`
  String chatMessageCount(int count) {
    return Intl.plural(
      count,
      zero: '$count сообщений',
      one: '$count сообщение',
      few: '$count сообщения',
      other: '$count сообщений',
      name: 'chatMessageCount',
      desc: '',
      args: [count],
    );
  }

  /// `Вы: {text}`
  String chatLastMessageMeFormat(Object text) {
    return Intl.message(
      'Вы: $text',
      name: 'chatLastMessageMeFormat',
      desc: '',
      args: [text],
    );
  }

  /// `Отправлен файл`
  String get chatLastMessageFile {
    return Intl.message(
      'Отправлен файл',
      name: 'chatLastMessageFile',
      desc: '',
      args: [],
    );
  }

  /// `Отправлено аудио`
  String get chatLastMessageAudio {
    return Intl.message(
      'Отправлено аудио',
      name: 'chatLastMessageAudio',
      desc: '',
      args: [],
    );
  }

  /// `Отправлено видео`
  String get chatLastMessageVideo {
    return Intl.message(
      'Отправлено видео',
      name: 'chatLastMessageVideo',
      desc: '',
      args: [],
    );
  }

  /// `Отправлено изображение`
  String get chatLastMessageImage {
    return Intl.message(
      'Отправлено изображение',
      name: 'chatLastMessageImage',
      desc: '',
      args: [],
    );
  }

  /// `Отправлено уведомление`
  String get chatLastMessageNotice {
    return Intl.message(
      'Отправлено уведомление',
      name: 'chatLastMessageNotice',
      desc: '',
      args: [],
    );
  }

  /// `Ответы`
  String get chatCommentsReplies {
    return Intl.message(
      'Ответы',
      name: 'chatCommentsReplies',
      desc: '',
      args: [],
    );
  }

  /// `Закрыть`
  String get chatCommentsCloseTooltip {
    return Intl.message(
      'Закрыть',
      name: 'chatCommentsCloseTooltip',
      desc: '',
      args: [],
    );
  }

  /// `{param} ответ(ов)`
  String chatCommentsCount(Object param) {
    return Intl.message(
      '$param ответ(ов)',
      name: 'chatCommentsCount',
      desc: '',
      args: [param],
    );
  }

  /// `Покинуть группу '{param}'?`
  String leaveGroupQuestion(Object param) {
    return Intl.message(
      'Покинуть группу \'$param\'?',
      name: 'leaveGroupQuestion',
      desc: '',
      args: [param],
    );
  }

  /// `Вы потеряете доступ материалам группы`
  String get youLoseGroupData {
    return Intl.message(
      'Вы потеряете доступ материалам группы',
      name: 'youLoseGroupData',
      desc: '',
      args: [],
    );
  }

  /// `Покинуть`
  String get leave {
    return Intl.message(
      'Покинуть',
      name: 'leave',
      desc: '',
      args: [],
    );
  }

  /// `Отменить`
  String get cancel2 {
    return Intl.message(
      'Отменить',
      name: 'cancel2',
      desc: '',
      args: [],
    );
  }

  /// `Назначить`
  String get setAdmin {
    return Intl.message(
      'Назначить',
      name: 'setAdmin',
      desc: '',
      args: [],
    );
  }

  /// `Предоставить права администратора`
  String get setAsAdmin {
    return Intl.message(
      'Предоставить права администратора',
      name: 'setAsAdmin',
      desc: '',
      args: [],
    );
  }

  /// `Введите запрос в строку поиска`
  String get typeQueryToSearchInput {
    return Intl.message(
      'Введите запрос в строку поиска',
      name: 'typeQueryToSearchInput',
      desc: '',
      args: [],
    );
  }

  /// `Права доступа изменены`
  String get rightsChanged {
    return Intl.message(
      'Права доступа изменены',
      name: 'rightsChanged',
      desc: '',
      args: [],
    );
  }

  /// `{param} человек(а) будут автоматически удалены из группы`
  String xPeopleAutoDeleteFromGroup(Object param) {
    return Intl.message(
      '$param человек(а) будут автоматически удалены из группы',
      name: 'xPeopleAutoDeleteFromGroup',
      desc: '',
      args: [param],
    );
  }

  /// `{param1} участник(а), {param2} онлайн`
  String groupTotalAndOnline(Object param1, Object param2) {
    return Intl.message(
      '$param1 участник(а), $param2 онлайн',
      name: 'groupTotalAndOnline',
      desc: '',
      args: [param1, param2],
    );
  }

  /// `Снять права администратора`
  String get kickAdmin {
    return Intl.message(
      'Снять права администратора',
      name: 'kickAdmin',
      desc: '',
      args: [],
    );
  }

  /// `был(а) в сети`
  String get wasOnline {
    return Intl.message(
      'был(а) в сети',
      name: 'wasOnline',
      desc: '',
      args: [],
    );
  }

  /// `Место проведения`
  String get eventLocation {
    return Intl.message(
      'Место проведения',
      name: 'eventLocation',
      desc: '',
      args: [],
    );
  }

  /// `Связь`
  String get eventConnection {
    return Intl.message(
      'Связь',
      name: 'eventConnection',
      desc: '',
      args: [],
    );
  }

  /// `Организатор`
  String get organizer {
    return Intl.message(
      'Организатор',
      name: 'organizer',
      desc: '',
      args: [],
    );
  }

  /// `Занятость участников`
  String get participantsBusy {
    return Intl.message(
      'Занятость участников',
      name: 'participantsBusy',
      desc: '',
      args: [],
    );
  }

  /// `Участники`
  String get members {
    return Intl.message(
      'Участники',
      name: 'members',
      desc: '',
      args: [],
    );
  }

  /// `Тип мероприятия`
  String get eventType {
    return Intl.message(
      'Тип мероприятия',
      name: 'eventType',
      desc: '',
      args: [],
    );
  }

  /// `Онлайн`
  String get onlineName {
    return Intl.message(
      'Онлайн',
      name: 'onlineName',
      desc: '',
      args: [],
    );
  }

  /// `Офлайн`
  String get offlineName {
    return Intl.message(
      'Офлайн',
      name: 'offlineName',
      desc: '',
      args: [],
    );
  }

  /// `Весь день`
  String get allDay {
    return Intl.message(
      'Весь день',
      name: 'allDay',
      desc: '',
      args: [],
    );
  }

  /// `Повторять`
  String get eventRepeat {
    return Intl.message(
      'Повторять',
      name: 'eventRepeat',
      desc: '',
      args: [],
    );
  }

  /// `Участники могут приглашать других`
  String get membersCanInviteInfo {
    return Intl.message(
      'Участники могут приглашать других',
      name: 'membersCanInviteInfo',
      desc: '',
      args: [],
    );
  }

  /// `Дата`
  String get date {
    return Intl.message(
      'Дата',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Время`
  String get time {
    return Intl.message(
      'Время',
      name: 'time',
      desc: '',
      args: [],
    );
  }

  /// `Я`
  String get me {
    return Intl.message(
      'Я',
      name: 'me',
      desc: '',
      args: [],
    );
  }

  /// `(я)`
  String get meComma {
    return Intl.message(
      '(я)',
      name: 'meComma',
      desc: '',
      args: [],
    );
  }

  /// `на сегодня`
  String get forToday {
    return Intl.message(
      'на сегодня',
      name: 'forToday',
      desc: '',
      args: [],
    );
  }

  /// `на неделю`
  String get forWeek {
    return Intl.message(
      'на неделю',
      name: 'forWeek',
      desc: '',
      args: [],
    );
  }

  /// `В спринте {param}`
  String to_sprint(Object param) {
    return Intl.message(
      'В спринте $param',
      name: 'to_sprint',
      desc: '',
      args: [param],
    );
  }

  /// `{minutes, plural, =0{меньше минуты} =1{минуту} one{минуту} few{{minutes} минуты} many{{minutes} минут} other{{minutes} минут}}`
  String minutesDuration(int minutes) {
    return Intl.plural(
      minutes,
      zero: 'меньше минуты',
      one: 'минуту',
      few: '$minutes минуты',
      many: '$minutes минут',
      other: '$minutes минут',
      name: 'minutesDuration',
      desc: '',
      args: [minutes],
    );
  }

  /// `{hours, plural, =1{1 час} few{{hours} часа} many{{hours} часов} other{{hours} часов}}`
  String hoursDuration(int hours) {
    return Intl.plural(
      hours,
      one: '1 час',
      few: '$hours часа',
      many: '$hours часов',
      other: '$hours часов',
      name: 'hoursDuration',
      desc: '',
      args: [hours],
    );
  }

  /// `за {param}`
  String timeBefore(Object param) {
    return Intl.message(
      'за $param',
      name: 'timeBefore',
      desc: '',
      args: [param],
    );
  }

  /// `Выберите задачу`
  String get chooseTask {
    return Intl.message(
      'Выберите задачу',
      name: 'chooseTask',
      desc: '',
      args: [],
    );
  }

  /// `ежедневно`
  String get everyday {
    return Intl.message(
      'ежедневно',
      name: 'everyday',
      desc: '',
      args: [],
    );
  }

  /// `еженедельно`
  String get everyWeek {
    return Intl.message(
      'еженедельно',
      name: 'everyWeek',
      desc: '',
      args: [],
    );
  }

  /// `ежемесячно`
  String get everyMonth {
    return Intl.message(
      'ежемесячно',
      name: 'everyMonth',
      desc: '',
      args: [],
    );
  }

  /// `Неделя месяца`
  String get weekOfMonth {
    return Intl.message(
      'Неделя месяца',
      name: 'weekOfMonth',
      desc: '',
      args: [],
    );
  }

  /// `День недели`
  String get dayOfWeek {
    return Intl.message(
      'День недели',
      name: 'dayOfWeek',
      desc: '',
      args: [],
    );
  }

  /// `Первая`
  String get weekFirst {
    return Intl.message(
      'Первая',
      name: 'weekFirst',
      desc: '',
      args: [],
    );
  }

  /// `Вторая`
  String get weekSecond {
    return Intl.message(
      'Вторая',
      name: 'weekSecond',
      desc: '',
      args: [],
    );
  }

  /// `Третья`
  String get weekThird {
    return Intl.message(
      'Третья',
      name: 'weekThird',
      desc: '',
      args: [],
    );
  }

  /// `Четвертая`
  String get weekFourth {
    return Intl.message(
      'Четвертая',
      name: 'weekFourth',
      desc: '',
      args: [],
    );
  }

  /// `{param} ч.`
  String amount_of_time(Object param) {
    return Intl.message(
      '$param ч.',
      name: 'amount_of_time',
      desc: '',
      args: [param],
    );
  }

  /// `{param} д.`
  String amountOfDays(Object param) {
    return Intl.message(
      '$param д.',
      name: 'amountOfDays',
      desc: '',
      args: [param],
    );
  }

  /// `Создана {param_1} в {param_2}`
  String created_at(Object param_1, Object param_2) {
    return Intl.message(
      'Создана $param_1 в $param_2',
      name: 'created_at',
      desc: '',
      args: [param_1, param_2],
    );
  }

  /// `На данный момент Вы уже находитесь в звонке, завершите его и попробуйте снова`
  String get nowYouInCall {
    return Intl.message(
      'На данный момент Вы уже находитесь в звонке, завершите его и попробуйте снова',
      name: 'nowYouInCall',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Свернуть`
  String get minimize {
    return Intl.message(
      'Свернуть',
      name: 'minimize',
      desc: '',
      args: [],
    );
  }

  /// `Развернуть`
  String get maximize {
    return Intl.message(
      'Развернуть',
      name: 'maximize',
      desc: '',
      args: [],
    );
  }

  /// `Создать мероприятие`
  String get createEvent {
    return Intl.message(
      'Создать мероприятие',
      name: 'createEvent',
      desc: '',
      args: [],
    );
  }

  /// `Выделить`
  String get chatMessageMenuSelect {
    return Intl.message(
      'Выделить',
      name: 'chatMessageMenuSelect',
      desc: '',
      args: [],
    );
  }

  /// `Введите название мероприятия`
  String get enterNameEvent {
    return Intl.message(
      'Введите название мероприятия',
      name: 'enterNameEvent',
      desc: '',
      args: [],
    );
  }

  /// `Введите описание мероприятия. Для начала редактирования нажмите на этот текст`
  String get enderDescriptionEvent {
    return Intl.message(
      'Введите описание мероприятия. Для начала редактирования нажмите на этот текст',
      name: 'enderDescriptionEvent',
      desc: '',
      args: [],
    );
  }

  /// `Все файлы`
  String get all_files {
    return Intl.message(
      'Все файлы',
      name: 'all_files',
      desc: '',
      args: [],
    );
  }

  /// `Сбросить все`
  String get reset_everything {
    return Intl.message(
      'Сбросить все',
      name: 'reset_everything',
      desc: '',
      args: [],
    );
  }

  /// `Удалить дату`
  String get delete_date {
    return Intl.message(
      'Удалить дату',
      name: 'delete_date',
      desc: '',
      args: [],
    );
  }

  /// `Вы уверены?`
  String get areYouSure {
    return Intl.message(
      'Вы уверены?',
      name: 'areYouSure',
      desc: '',
      args: [],
    );
  }

  /// `После повышения уровня доступа изменить его сможет только владелец`
  String get afterPowerLevelUpItCanChangeOnlyOwner {
    return Intl.message(
      'После повышения уровня доступа изменить его сможет только владелец',
      name: 'afterPowerLevelUpItCanChangeOnlyOwner',
      desc: '',
      args: [],
    );
  }

  /// `Выберите нового владельца группы`
  String get selectNewOwner {
    return Intl.message(
      'Выберите нового владельца группы',
      name: 'selectNewOwner',
      desc: '',
      args: [],
    );
  }

  /// `Вы должны сначала добавить пользо\nвателя в чат, а он должен хотя бы \nодин раз войти в чат`
  String get mustInvite {
    return Intl.message(
      'Вы должны сначала добавить пользо\nвателя в чат, а он должен хотя бы \nодин раз войти в чат',
      name: 'mustInvite',
      desc: '',
      args: [],
    );
  }

  /// `Назначаемый пользователь еще ни разу не был в чате`
  String get mustVisit {
    return Intl.message(
      'Назначаемый пользователь еще ни разу не был в чате',
      name: 'mustVisit',
      desc: '',
      args: [],
    );
  }

  /// `Просмотр`
  String get viewing {
    return Intl.message(
      'Просмотр',
      name: 'viewing',
      desc: '',
      args: [],
    );
  }

  /// `Время ожидания ответа сервера истекло`
  String get serverTimeout {
    return Intl.message(
      'Время ожидания ответа сервера истекло',
      name: 'serverTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Сетевая ошибка`
  String get networkError {
    return Intl.message(
      'Сетевая ошибка',
      name: 'networkError',
      desc: '',
      args: [],
    );
  }

  /// `Сервер недоступен, возможно отсутствует подключение к сети Интернет`
  String get failedHostLookup {
    return Intl.message(
      'Сервер недоступен, возможно отсутствует подключение к сети Интернет',
      name: 'failedHostLookup',
      desc: '',
      args: [],
    );
  }

  /// `Необработанная ошибка`
  String get unknownError {
    return Intl.message(
      'Необработанная ошибка',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }

  /// `Пользователь не найден`
  String get userNotFound {
    return Intl.message(
      'Пользователь не найден',
      name: 'userNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Не удается получить доступ к камере или микрофону`
  String get noAccessToMicAndCamera {
    return Intl.message(
      'Не удается получить доступ к камере или микрофону',
      name: 'noAccessToMicAndCamera',
      desc: '',
      args: [],
    );
  }

  /// `Сервер отклонил запрос, попробуйте снова`
  String get serverRejectRequest {
    return Intl.message(
      'Сервер отклонил запрос, попробуйте снова',
      name: 'serverRejectRequest',
      desc: '',
      args: [],
    );
  }

  /// `Абонент отклонил ваш звонок`
  String get userRejectYourCall {
    return Intl.message(
      'Абонент отклонил ваш звонок',
      name: 'userRejectYourCall',
      desc: '',
      args: [],
    );
  }

  /// `Абонент занят и не может принять звонок`
  String get userBusy {
    return Intl.message(
      'Абонент занят и не может принять звонок',
      name: 'userBusy',
      desc: '',
      args: [],
    );
  }

  /// `Абонент завершил звонок`
  String get userEndCall {
    return Intl.message(
      'Абонент завершил звонок',
      name: 'userEndCall',
      desc: '',
      args: [],
    );
  }

  /// `Подготовка звонка {count} из {total}`
  String callInitStep(Object count, Object total) {
    return Intl.message(
      'Подготовка звонка $count из $total',
      name: 'callInitStep',
      desc: '',
      args: [count, total],
    );
  }

  /// `Предоставление доступа`
  String get grantingAccess {
    return Intl.message(
      'Предоставление доступа',
      name: 'grantingAccess',
      desc: '',
      args: [],
    );
  }

  /// `Приложению требуются разрешения к отображению уведомлений, их можно предоставить через настройки, перейти в настройки?`
  String get grantingAccessNotificationQuestion {
    return Intl.message(
      'Приложению требуются разрешения к отображению уведомлений, их можно предоставить через настройки, перейти в настройки?',
      name: 'grantingAccessNotificationQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Приложению требуются доступы к микрофону и камере, их можно предоставить через настройки, перейти в настройки?`
  String get grantingAccessMicOrCameraQuestion {
    return Intl.message(
      'Приложению требуются доступы к микрофону и камере, их можно предоставить через настройки, перейти в настройки?',
      name: 'grantingAccessMicOrCameraQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Приложению требуются доступ к микрофону, его можно предоставить через настройки, перейти в настройки?`
  String get grantingAccessMicQuestion {
    return Intl.message(
      'Приложению требуются доступ к микрофону, его можно предоставить через настройки, перейти в настройки?',
      name: 'grantingAccessMicQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Приложению требуются доступ к камере, его можно предоставить через настройки, перейти в настройки?`
  String get grantingAccessCameraQuestion {
    return Intl.message(
      'Приложению требуются доступ к камере, его можно предоставить через настройки, перейти в настройки?',
      name: 'grantingAccessCameraQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Вы не принимаете участия ни в одном звонке`
  String get currentCallIsEmpty {
    return Intl.message(
      'Вы не принимаете участия ни в одном звонке',
      name: 'currentCallIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Инициализация локального потока`
  String get localStreamerIsEmpty {
    return Intl.message(
      'Инициализация локального потока',
      name: 'localStreamerIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `{count} из {total}`
  String countTotal(Object count, Object total) {
    return Intl.message(
      '$count из $total',
      name: 'countTotal',
      desc: '',
      args: [count, total],
    );
  }

  /// `Я {param}`
  String my_part(Object param) {
    return Intl.message(
      'Я $param',
      name: 'my_part',
      desc: '',
      args: [param],
    );
  }

  /// `{weeks, plural, =0{0 недель} =1{1 неделя} one{{weeks} неделя} few{{weeks} недели} many{{weeks} недель} other{{weeks} недель}}`
  String weeksCount(int weeks) {
    return Intl.plural(
      weeks,
      zero: '0 недель',
      one: '$weeks неделя',
      few: '$weeks недели',
      many: '$weeks недель',
      other: '$weeks недель',
      name: 'weeksCount',
      desc: '',
      args: [weeks],
    );
  }

  /// `перейти в спринт`
  String get goToSprint {
    return Intl.message(
      'перейти в спринт',
      name: 'goToSprint',
      desc: '',
      args: [],
    );
  }

  /// `черновик`
  String get draft {
    return Intl.message(
      'черновик',
      name: 'draft',
      desc: '',
      args: [],
    );
  }

  /// `Пользовательская`
  String get custom {
    return Intl.message(
      'Пользовательская',
      name: 'custom',
      desc: '',
      args: [],
    );
  }

  /// `Неизвестный`
  String get unknown {
    return Intl.message(
      'Неизвестный',
      name: 'unknown',
      desc: '',
      args: [],
    );
  }

  /// `Повторять до`
  String get repeatTill {
    return Intl.message(
      'Повторять до',
      name: 'repeatTill',
      desc: '',
      args: [],
    );
  }

  /// `В режиме просмотра будут показаны \n задачи, связанные с Вашими, в которых \n вы не участвуете: \n ∙  Все задачи ниже по иерархии \n ∙  Одна задача выше по иерархии`
  String get the_whole_hierarchy {
    return Intl.message(
      'В режиме просмотра будут показаны \n задачи, связанные с Вашими, в которых \n вы не участвуете: \n ∙  Все задачи ниже по иерархии \n ∙  Одна задача выше по иерархии',
      name: 'the_whole_hierarchy',
      desc: '',
      args: [],
    );
  }

  /// `Зарегистрируйтесь`
  String get register {
    return Intl.message(
      'Зарегистрируйтесь',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Проверка почты`
  String get checking_mail {
    return Intl.message(
      'Проверка почты',
      name: 'checking_mail',
      desc: '',
      args: [],
    );
  }

  /// `Календарь`
  String get calendar {
    return Intl.message(
      'Календарь',
      name: 'calendar',
      desc: '',
      args: [],
    );
  }

  /// `День`
  String get day {
    return Intl.message(
      'День',
      name: 'day',
      desc: '',
      args: [],
    );
  }

  /// `Неделя`
  String get week {
    return Intl.message(
      'Неделя',
      name: 'week',
      desc: '',
      args: [],
    );
  }

  /// `Месяц`
  String get month {
    return Intl.message(
      'Месяц',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `Дела`
  String get affairs {
    return Intl.message(
      'Дела',
      name: 'affairs',
      desc: '',
      args: [],
    );
  }

  /// `Скрыть завершенные`
  String get hideFinished {
    return Intl.message(
      'Скрыть завершенные',
      name: 'hideFinished',
      desc: '',
      args: [],
    );
  }

  /// `На день`
  String get forTheDay {
    return Intl.message(
      'На день',
      name: 'forTheDay',
      desc: '',
      args: [],
    );
  }

  /// `Бессрочные`
  String get termless {
    return Intl.message(
      'Бессрочные',
      name: 'termless',
      desc: '',
      args: [],
    );
  }

  /// `Добавить мероприятие`
  String get addEvent {
    return Intl.message(
      'Добавить мероприятие',
      name: 'addEvent',
      desc: '',
      args: [],
    );
  }

  /// `Добавить дело`
  String get addTask {
    return Intl.message(
      'Добавить дело',
      name: 'addTask',
      desc: '',
      args: [],
    );
  }

  /// `Задача успешно удалена`
  String get taskDeleteSuccess {
    return Intl.message(
      'Задача успешно удалена',
      name: 'taskDeleteSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Укажите e-mail, к которому привязан аккаунт DLS One`
  String get auth_login_subtitle {
    return Intl.message(
      'Укажите e-mail, к которому привязан аккаунт DLS One',
      name: 'auth_login_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Здравствуйте, {name}`
  String hello_name(String name) {
    return Intl.message(
      'Здравствуйте, $name',
      name: 'hello_name',
      desc: '',
      args: [name],
    );
  }

  /// `Иван`
  String get hint_name {
    return Intl.message(
      'Иван',
      name: 'hint_name',
      desc: '',
      args: [],
    );
  }

  /// `Петров`
  String get hint_surname {
    return Intl.message(
      'Петров',
      name: 'hint_surname',
      desc: '',
      args: [],
    );
  }

  /// `Блокирует`
  String get blocking {
    return Intl.message(
      'Блокирует',
      name: 'blocking',
      desc: '',
      args: [],
    );
  }

  /// `Зависит от`
  String get dependsFrom {
    return Intl.message(
      'Зависит от',
      name: 'dependsFrom',
      desc: '',
      args: [],
    );
  }

  /// `Назначить себя ответственным`
  String get setMeAsResponsible {
    return Intl.message(
      'Назначить себя ответственным',
      name: 'setMeAsResponsible',
      desc: '',
      args: [],
    );
  }

  /// `Удалить E-mail {email}?`
  String delete_email(String email) {
    return Intl.message(
      'Удалить E-mail $email?',
      name: 'delete_email',
      desc: '',
      args: [email],
    );
  }

  /// `Удалить телефон {phone}?`
  String delete_phone(String phone) {
    return Intl.message(
      'Удалить телефон $phone?',
      name: 'delete_phone',
      desc: '',
      args: [phone],
    );
  }

  /// `Выберите надзадачу`
  String get pickParentTask {
    return Intl.message(
      'Выберите надзадачу',
      name: 'pickParentTask',
      desc: '',
      args: [],
    );
  }

  /// `Дела`
  String get todo {
    return Intl.message(
      'Дела',
      name: 'todo',
      desc: '',
      args: [],
    );
  }

  /// `Предстоящие`
  String get upcoming {
    return Intl.message(
      'Предстоящие',
      name: 'upcoming',
      desc: '',
      args: [],
    );
  }

  /// `Введенные данные не будут сохранены`
  String get dataWontBeSaved {
    return Intl.message(
      'Введенные данные не будут сохранены',
      name: 'dataWontBeSaved',
      desc: '',
      args: [],
    );
  }

  /// `Уйти со страницы`
  String get leaveFromPage {
    return Intl.message(
      'Уйти со страницы',
      name: 'leaveFromPage',
      desc: '',
      args: [],
    );
  }

  /// `Уйти без сохранения`
  String get leaveWithoutSaving {
    return Intl.message(
      'Уйти без сохранения',
      name: 'leaveWithoutSaving',
      desc: '',
      args: [],
    );
  }

  /// `Остаться`
  String get keepStay {
    return Intl.message(
      'Остаться',
      name: 'keepStay',
      desc: '',
      args: [],
    );
  }

  /// `Влево - отмена`
  String get recorderSwipeToCancel {
    return Intl.message(
      'Влево - отмена',
      name: 'recorderSwipeToCancel',
      desc: '',
      args: [],
    );
  }

  /// `Начать запись`
  String get recorderStart {
    return Intl.message(
      'Начать запись',
      name: 'recorderStart',
      desc: '',
      args: [],
    );
  }

  /// `Завершить`
  String get recorderFinish {
    return Intl.message(
      'Завершить',
      name: 'recorderFinish',
      desc: '',
      args: [],
    );
  }

  /// `был(а) недавно`
  String get userLastOnline {
    return Intl.message(
      'был(а) недавно',
      name: 'userLastOnline',
      desc: '',
      args: [],
    );
  }

  /// `Персональная информация отсутствует`
  String get userPersonalInfo {
    return Intl.message(
      'Персональная информация отсутствует',
      name: 'userPersonalInfo',
      desc: '',
      args: [],
    );
  }

  /// `Изменить приоритет`
  String get change_priority {
    return Intl.message(
      'Изменить приоритет',
      name: 'change_priority',
      desc: '',
      args: [],
    );
  }

  /// `Изменить статус`
  String get change_status {
    return Intl.message(
      'Изменить статус',
      name: 'change_status',
      desc: '',
      args: [],
    );
  }

  /// `Добавить исполнителя`
  String get add_a_performer {
    return Intl.message(
      'Добавить исполнителя',
      name: 'add_a_performer',
      desc: '',
      args: [],
    );
  }

  /// `Добавить дедлайн`
  String get add_deadline {
    return Intl.message(
      'Добавить дедлайн',
      name: 'add_deadline',
      desc: '',
      args: [],
    );
  }

  /// `Введите название`
  String get enter_name {
    return Intl.message(
      'Введите название',
      name: 'enter_name',
      desc: '',
      args: [],
    );
  }

  /// `Показать`
  String get listShow {
    return Intl.message(
      'Показать',
      name: 'listShow',
      desc: '',
      args: [],
    );
  }

  /// `Назначить время`
  String get setTime {
    return Intl.message(
      'Назначить время',
      name: 'setTime',
      desc: '',
      args: [],
    );
  }

  /// `Без срока`
  String get indefinitely {
    return Intl.message(
      'Без срока',
      name: 'indefinitely',
      desc: '',
      args: [],
    );
  }

  /// `Введите текст дела`
  String get enterTodoTitle {
    return Intl.message(
      'Введите текст дела',
      name: 'enterTodoTitle',
      desc: '',
      args: [],
    );
  }

  /// `Добавить дело`
  String get addTodo {
    return Intl.message(
      'Добавить дело',
      name: 'addTodo',
      desc: '',
      args: [],
    );
  }

  /// `Применить`
  String get apply {
    return Intl.message(
      'Применить',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Более {param}`
  String more(Object param) {
    return Intl.message(
      'Более $param',
      name: 'more',
      desc: '',
      args: [param],
    );
  }

  /// `Сторипоинты`
  String get storypoints {
    return Intl.message(
      'Сторипоинты',
      name: 'storypoints',
      desc: '',
      args: [],
    );
  }

  /// `Фильтры`
  String get filters {
    return Intl.message(
      'Фильтры',
      name: 'filters',
      desc: '',
      args: [],
    );
  }

  /// `Очистить ({param})`
  String clear(Object param) {
    return Intl.message(
      'Очистить ($param)',
      name: 'clear',
      desc: '',
      args: [param],
    );
  }

  /// `Сегодня`
  String get today {
    return Intl.message(
      'Сегодня',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Завтра`
  String get tomorrow {
    return Intl.message(
      'Завтра',
      name: 'tomorrow',
      desc: '',
      args: [],
    );
  }

  /// `Просроченные`
  String get overdue {
    return Intl.message(
      'Просроченные',
      name: 'overdue',
      desc: '',
      args: [],
    );
  }

  /// `и`
  String get and {
    return Intl.message(
      'и',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка при загрузке данных`
  String get loadingDataError {
    return Intl.message(
      'Ошибка при загрузке данных',
      name: 'loadingDataError',
      desc: '',
      args: [],
    );
  }

  /// `Общее`
  String get general {
    return Intl.message(
      'Общее',
      name: 'general',
      desc: '',
      args: [],
    );
  }

  /// `Создать задачу`
  String get create_task {
    return Intl.message(
      'Создать задачу',
      name: 'create_task',
      desc: '',
      args: [],
    );
  }

  /// `Создать мероприятие`
  String get create_event {
    return Intl.message(
      'Создать мероприятие',
      name: 'create_event',
      desc: '',
      args: [],
    );
  }

  /// `Создать дело`
  String get create_case {
    return Intl.message(
      'Создать дело',
      name: 'create_case',
      desc: '',
      args: [],
    );
  }

  /// `Сначала создайте задачу`
  String get createTaskFirst {
    return Intl.message(
      'Сначала создайте задачу',
      name: 'createTaskFirst',
      desc: '',
      args: [],
    );
  }

  /// `Не удалось создать личный чат`
  String get createPrivateChatError {
    return Intl.message(
      'Не удалось создать личный чат',
      name: 'createPrivateChatError',
      desc: '',
      args: [],
    );
  }

  /// `В очереди ({param})`
  String in_the_queue(Object param) {
    return Intl.message(
      'В очереди ($param)',
      name: 'in_the_queue',
      desc: '',
      args: [param],
    );
  }

  /// `В работе ({param})`
  String at_work(Object param) {
    return Intl.message(
      'В работе ($param)',
      name: 'at_work',
      desc: '',
      args: [param],
    );
  }

  /// `Завершены ({param})`
  String completed(Object param) {
    return Intl.message(
      'Завершены ($param)',
      name: 'completed',
      desc: '',
      args: [param],
    );
  }

  /// `Создать задачу`
  String get createTask {
    return Intl.message(
      'Создать задачу',
      name: 'createTask',
      desc: '',
      args: [],
    );
  }

  /// `Дата и время`
  String get dateAndTime {
    return Intl.message(
      'Дата и время',
      name: 'dateAndTime',
      desc: '',
      args: [],
    );
  }

  /// `Добавить время`
  String get addTime {
    return Intl.message(
      'Добавить время',
      name: 'addTime',
      desc: '',
      args: [],
    );
  }

  /// `Добавить повтор`
  String get addRepeat {
    return Intl.message(
      'Добавить повтор',
      name: 'addRepeat',
      desc: '',
      args: [],
    );
  }

  /// `Время начала`
  String get startTime {
    return Intl.message(
      'Время начала',
      name: 'startTime',
      desc: '',
      args: [],
    );
  }

  /// `Время окончания`
  String get endTime {
    return Intl.message(
      'Время окончания',
      name: 'endTime',
      desc: '',
      args: [],
    );
  }

  /// `Не повторяется`
  String get unrepeatable {
    return Intl.message(
      'Не повторяется',
      name: 'unrepeatable',
      desc: '',
      args: [],
    );
  }

  /// `Каждый день`
  String get daily {
    return Intl.message(
      'Каждый день',
      name: 'daily',
      desc: '',
      args: [],
    );
  }

  /// `Еженедельно`
  String get weekly {
    return Intl.message(
      'Еженедельно',
      name: 'weekly',
      desc: '',
      args: [],
    );
  }

  /// `Ежемесячно`
  String get monthly {
    return Intl.message(
      'Ежемесячно',
      name: 'monthly',
      desc: '',
      args: [],
    );
  }

  /// `Ежемесячно, {month} нед, {day}`
  String monthlyDescription(int month, String day) {
    return Intl.message(
      'Ежемесячно, $month нед, $day',
      name: 'monthlyDescription',
      desc: '',
      args: [month, day],
    );
  }

  /// `Пространство`
  String get space {
    return Intl.message(
      'Пространство',
      name: 'space',
      desc: '',
      args: [],
    );
  }

  /// `Структура компании`
  String get companyStructure {
    return Intl.message(
      'Структура компании',
      name: 'companyStructure',
      desc: '',
      args: [],
    );
  }

  /// `Список сотрудников`
  String get employeesList {
    return Intl.message(
      'Список сотрудников',
      name: 'employeesList',
      desc: '',
      args: [],
    );
  }

  /// `Режим работы`
  String get workSchedule {
    return Intl.message(
      'Режим работы',
      name: 'workSchedule',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка: {param}`
  String errorMessageFormat(String param) {
    return Intl.message(
      'Ошибка: $param',
      name: 'errorMessageFormat',
      desc: '',
      args: [param],
    );
  }

  /// `Новое мероприятие`
  String get newTaskEvent {
    return Intl.message(
      'Новое мероприятие',
      name: 'newTaskEvent',
      desc: '',
      args: [],
    );
  }

  /// `Место`
  String get location {
    return Intl.message(
      'Место',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Каждый {weekDay}, {weekNumber} неделя месяца`
  String everyWeekDayInMonth(Object weekDay, Object weekNumber) {
    return Intl.message(
      'Каждый $weekDay, $weekNumber неделя месяца',
      name: 'everyWeekDayInMonth',
      desc: '',
      args: [weekDay, weekNumber],
    );
  }

  /// `Сотрудники`
  String get employees {
    return Intl.message(
      'Сотрудники',
      name: 'employees',
      desc: '',
      args: [],
    );
  }

  /// `Руководитель`
  String get manager {
    return Intl.message(
      'Руководитель',
      name: 'manager',
      desc: '',
      args: [],
    );
  }

  /// `Не назначен`
  String get notAssigned {
    return Intl.message(
      'Не назначен',
      name: 'notAssigned',
      desc: '',
      args: [],
    );
  }

  /// `Выберите получателя`
  String get chatChooseForward {
    return Intl.message(
      'Выберите получателя',
      name: 'chatChooseForward',
      desc: '',
      args: [],
    );
  }

  /// `Не назначены`
  String get areNotAssigned {
    return Intl.message(
      'Не назначены',
      name: 'areNotAssigned',
      desc: '',
      args: [],
    );
  }

  /// `Новый спринт`
  String get newSprint {
    return Intl.message(
      'Новый спринт',
      name: 'newSprint',
      desc: '',
      args: [],
    );
  }

  /// `Предположительная дата окончания`
  String get estimatedEndDate {
    return Intl.message(
      'Предположительная дата окончания',
      name: 'estimatedEndDate',
      desc: '',
      args: [],
    );
  }

  /// `Добавить мероприятие`
  String get add_task_event {
    return Intl.message(
      'Добавить мероприятие',
      name: 'add_task_event',
      desc: '',
      args: [],
    );
  }

  /// `Добавить дело`
  String get add_todo {
    return Intl.message(
      'Добавить дело',
      name: 'add_todo',
      desc: '',
      args: [],
    );
  }

  /// `В спринт`
  String get toSprint {
    return Intl.message(
      'В спринт',
      name: 'toSprint',
      desc: '',
      args: [],
    );
  }

  /// `В бэклог`
  String get toBacklog {
    return Intl.message(
      'В бэклог',
      name: 'toBacklog',
      desc: '',
      args: [],
    );
  }

  /// `Все исполнителеи`
  String get all_performers {
    return Intl.message(
      'Все исполнителеи',
      name: 'all_performers',
      desc: '',
      args: [],
    );
  }

  /// `Общее`
  String get common {
    return Intl.message(
      'Общее',
      name: 'common',
      desc: '',
      args: [],
    );
  }

  /// `Удалить отдел`
  String get deleteDepartment {
    return Intl.message(
      'Удалить отдел',
      name: 'deleteDepartment',
      desc: '',
      args: [],
    );
  }

  /// `Название отдела`
  String get departmentName {
    return Intl.message(
      'Название отдела',
      name: 'departmentName',
      desc: '',
      args: [],
    );
  }

  /// `Заблокировать`
  String get bloc {
    return Intl.message(
      'Заблокировать',
      name: 'bloc',
      desc: '',
      args: [],
    );
  }

  /// `Выбрать`
  String get select {
    return Intl.message(
      'Выбрать',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `Авторизованные`
  String get authorized {
    return Intl.message(
      'Авторизованные',
      name: 'authorized',
      desc: '',
      args: [],
    );
  }

  /// `Не авторизованные`
  String get unauthorized {
    return Intl.message(
      'Не авторизованные',
      name: 'unauthorized',
      desc: '',
      args: [],
    );
  }

  /// `Заблокированные`
  String get locked {
    return Intl.message(
      'Заблокированные',
      name: 'locked',
      desc: '',
      args: [],
    );
  }

  /// `Не заблокированные`
  String get unlocked {
    return Intl.message(
      'Не заблокированные',
      name: 'unlocked',
      desc: '',
      args: [],
    );
  }

  /// `Блокировка`
  String get lock {
    return Intl.message(
      'Блокировка',
      name: 'lock',
      desc: '',
      args: [],
    );
  }

  /// `Выбрать всех`
  String get selectAll {
    return Intl.message(
      'Выбрать всех',
      name: 'selectAll',
      desc: '',
      args: [],
    );
  }

  /// `Переместить`
  String get move {
    return Intl.message(
      'Переместить',
      name: 'move',
      desc: '',
      args: [],
    );
  }

  /// `+ Добавить должность`
  String get addEmployeePosition {
    return Intl.message(
      '+ Добавить должность',
      name: 'addEmployeePosition',
      desc: '',
      args: [],
    );
  }

  /// `Должность руководителя`
  String get managerPosition {
    return Intl.message(
      'Должность руководителя',
      name: 'managerPosition',
      desc: '',
      args: [],
    );
  }

  /// `Добавить существующего`
  String get addExisted {
    return Intl.message(
      'Добавить существующего',
      name: 'addExisted',
      desc: '',
      args: [],
    );
  }

  /// `Добавить нового`
  String get addNew {
    return Intl.message(
      'Добавить нового',
      name: 'addNew',
      desc: '',
      args: [],
    );
  }

  /// `Настройка прав`
  String get permissionSetting {
    return Intl.message(
      'Настройка прав',
      name: 'permissionSetting',
      desc: '',
      args: [],
    );
  }

  /// `Редактирование задач`
  String get taskEditing {
    return Intl.message(
      'Редактирование задач',
      name: 'taskEditing',
      desc: '',
      args: [],
    );
  }

  /// `только свои`
  String get onlyOwn {
    return Intl.message(
      'только свои',
      name: 'onlyOwn',
      desc: '',
      args: [],
    );
  }

  /// `всего отдела`
  String get allDepartment {
    return Intl.message(
      'всего отдела',
      name: 'allDepartment',
      desc: '',
      args: [],
    );
  }

  /// `Редактирование cпринтов`
  String get sprintEditing {
    return Intl.message(
      'Редактирование cпринтов',
      name: 'sprintEditing',
      desc: '',
      args: [],
    );
  }

  /// `Редактирование мероприятий`
  String get eventEditing {
    return Intl.message(
      'Редактирование мероприятий',
      name: 'eventEditing',
      desc: '',
      args: [],
    );
  }

  /// `Настройка пространства`
  String get spaceSetting {
    return Intl.message(
      'Настройка пространства',
      name: 'spaceSetting',
      desc: '',
      args: [],
    );
  }

  /// `просмотр`
  String get reading {
    return Intl.message(
      'просмотр',
      name: 'reading',
      desc: '',
      args: [],
    );
  }

  /// `редактирование`
  String get editing {
    return Intl.message(
      'редактирование',
      name: 'editing',
      desc: '',
      args: [],
    );
  }

  /// `Должность сотрудника`
  String get employeePosition {
    return Intl.message(
      'Должность сотрудника',
      name: 'employeePosition',
      desc: '',
      args: [],
    );
  }

  /// `Название должности`
  String get positionName {
    return Intl.message(
      'Название должности',
      name: 'positionName',
      desc: '',
      args: [],
    );
  }

  /// `Название должности должно быть длиннее 3 символов`
  String get positionNameLengthError {
    return Intl.message(
      'Название должности должно быть длиннее 3 символов',
      name: 'positionNameLengthError',
      desc: '',
      args: [],
    );
  }

  /// `Выберите чат`
  String get select_chat {
    return Intl.message(
      'Выберите чат',
      name: 'select_chat',
      desc: '',
      args: [],
    );
  }

  /// `Изменение статуса в режиме \n“Наблюдатель” недоступно`
  String get not_available_to_observer {
    return Intl.message(
      'Изменение статуса в режиме \n“Наблюдатель” недоступно',
      name: 'not_available_to_observer',
      desc: '',
      args: [],
    );
  }

  /// `Изменение статуса в режиме “Наблюдатель” недоступно`
  String get not_available_to_observer_2 {
    return Intl.message(
      'Изменение статуса в режиме “Наблюдатель” недоступно',
      name: 'not_available_to_observer_2',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
