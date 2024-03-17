// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(param) => "${param} д.";

  static String m1(param) => "${param} ч.";

  static String m2(param) => "В работе (${param})";

  static String m3(param) => "Код выслан. Повторная отправка через ${param}";

  static String m4(param) => "На email ${param} отправлено письмо с кодом";

  static String m5(count, total) => "Подготовка звонка ${count} из ${total}";

  static String m6(name) => "Завершился звонок в чате ${name}";

  static String m7(name) => "Начался звонок в чате ${name}";

  static String m8(param) => "${param} ответ(ов)";

  static String m9(name) => "прислал(а) сообщение в чат ${name}";

  static String m10(text) => "Вы: ${text}";

  static String m11(count) =>
      "${Intl.plural(count, zero: '${count} сообщений', one: '${count} сообщение', few: '${count} сообщения', other: '${count} сообщений')}";

  static String m12(param) => "${param} удалено";

  static String m13(param) => "${param} отредактировано";

  static String m14(param) => "Очистить (${param})";

  static String m15(sec) => "Код выслан. Повторная отправка через 00:${sec}";

  static String m16(useremail) =>
      "На email ${useremail} отправлен код подтверждения";

  static String m17(count) =>
      "${Intl.plural(count, one: '${count} Ответ', few: '${count} Ответа', many: '${count} Ответов', other: '${count} Ответы')}";

  static String m18(param) => "Завершены (${param})";

  static String m19(name) => "На почту ${name} было отправлено письмо с кодом";

  static String m20(name) => "На телефон ${name} отправлено СМС с кодом";

  static String m21(param) =>
      "На почту ${param} было отправлено письмо с кодом";

  static String m22(param) => "На телефон ${param} отправлено СМС с кодом";

  static String m23(count, total) => "${count} из ${total}";

  static String m24(count) => "${count} будут автоматически удалены из группы";

  static String m25(param_1, param_2) => "Создана ${param_1} в ${param_2}";

  static String m26(days) =>
      "${Intl.plural(days, zero: '0 дней', one: '1 день', few: '${days} дня', many: '${days} дней', other: '${days} дней')}";

  static String m27(email) => "Удалить E-mail ${email}?";

  static String m28(name) => "Удалить группу \"${name}\"?";

  static String m29(phone) => "Удалить телефон ${phone}?";

  static String m30(param) => "Ошибка: ${param}";

  static String m31(weekDay, weekNumber) =>
      "Каждый ${weekDay}, ${weekNumber} неделя месяца";

  static String m32(param1, param2) =>
      "${param1} участник(а), ${param2} онлайн";

  static String m33(name) => "Здравствуйте, ${name}";

  static String m34(count) => "Скрыть все ${count}";

  static String m35(hours) =>
      "${Intl.plural(hours, one: '1 час', few: '${hours} часа', many: '${hours} часов', other: '${hours} часов')}";

  static String m36(name) => "Я не ${name}";

  static String m37(param) => "В очереди (${param})";

  static String m38(param) => "Покинуть группу \'${param}\'?";

  static String m39(minutes) =>
      "${Intl.plural(minutes, zero: 'меньше минуты', one: 'минуту', few: '${minutes} минуты', many: '${minutes} минут', other: '${minutes} минут')}";

  static String m40(month, day) => "Ежемесячно, ${month} нед, ${day}";

  static String m41(param) => "Более ${param}";

  static String m42(param) =>
      "Еще ${Intl.plural(param, one: '${param} подзадача', few: '${param} подзадачи', many: '${param} подзадач', other: '${param} подзадачи')}";

  static String m43(param) => "Я ${param}";

  static String m44(param) => "Код выслан. Повторная отправка через ${param}";

  static String m45(param) => "На email ${param} отправлено письмо с кодом";

  static String m46(count) => "Показать все ${count}";

  static String m47(param) => "${param} дедлайн задачи";

  static String m48(param) => "за ${param}";

  static String m49(param) => "В спринте ${param}";

  static String m50(weeks) =>
      "${Intl.plural(weeks, zero: '0 недель', one: '1 неделя', few: '${weeks} недели', many: '${weeks} недель', other: '${weeks} недель')}";

  static String m51(param) =>
      "${param} человек(а) будут автоматически удалены из группы";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "access_is_denied":
            MessageLookupByLibrary.simpleMessage("Доступ запрещен"),
        "add": MessageLookupByLibrary.simpleMessage("Добавить"),
        "addEmployeePosition":
            MessageLookupByLibrary.simpleMessage("+ Добавить должность"),
        "addEvent":
            MessageLookupByLibrary.simpleMessage("Добавить мероприятие"),
        "addExisted":
            MessageLookupByLibrary.simpleMessage("Добавить существующего"),
        "addNew": MessageLookupByLibrary.simpleMessage("Добавить нового"),
        "addRepeat": MessageLookupByLibrary.simpleMessage("Добавить повтор"),
        "addTask": MessageLookupByLibrary.simpleMessage("Добавить дело"),
        "addTime": MessageLookupByLibrary.simpleMessage("Добавить время"),
        "addTodo": MessageLookupByLibrary.simpleMessage("Добавить дело"),
        "add_a_performer":
            MessageLookupByLibrary.simpleMessage("Добавить исполнителя"),
        "add_deadline":
            MessageLookupByLibrary.simpleMessage("Добавить дедлайн"),
        "add_email": MessageLookupByLibrary.simpleMessage("Добавление e-mail"),
        "add_file": MessageLookupByLibrary.simpleMessage("Добавить файл"),
        "add_file_from_doc":
            MessageLookupByLibrary.simpleMessage("Добавить файл из DOC"),
        "add_group": MessageLookupByLibrary.simpleMessage("Добавить группу"),
        "add_mute_interval":
            MessageLookupByLibrary.simpleMessage("Добавить период тишины"),
        "add_personal_data":
            MessageLookupByLibrary.simpleMessage("Введите личные данные"),
        "add_phone":
            MessageLookupByLibrary.simpleMessage("Добавление телефона"),
        "add_planning":
            MessageLookupByLibrary.simpleMessage("Добавить планирование"),
        "add_review": MessageLookupByLibrary.simpleMessage("Добавить ревью"),
        "add_task_event":
            MessageLookupByLibrary.simpleMessage("Добавить мероприятие"),
        "add_to_important":
            MessageLookupByLibrary.simpleMessage("Добавить в важное"),
        "add_todo": MessageLookupByLibrary.simpleMessage("Добавить дело"),
        "additional_email_description": MessageLookupByLibrary.simpleMessage(
            "Введите e-mail, который Вы хотите добавить к аккаунту DLS"),
        "additional_phone_description": MessageLookupByLibrary.simpleMessage(
            "Введите телефон, который Вы хотите добавить к аккаунту DLS"),
        "advanced": MessageLookupByLibrary.simpleMessage("Дополнительно"),
        "affairs": MessageLookupByLibrary.simpleMessage("Дела"),
        "afterPowerLevelUpItCanChangeOnlyOwner":
            MessageLookupByLibrary.simpleMessage(
                "После повышения уровня доступа изменить его сможет только владелец"),
        "all": MessageLookupByLibrary.simpleMessage("все"),
        "allDay": MessageLookupByLibrary.simpleMessage("Весь день"),
        "allDepartment": MessageLookupByLibrary.simpleMessage("всего отдела"),
        "all_chats": MessageLookupByLibrary.simpleMessage("Все чаты"),
        "all_files": MessageLookupByLibrary.simpleMessage("Все файлы"),
        "all_performers":
            MessageLookupByLibrary.simpleMessage("Все исполнителеи"),
        "all_roles": MessageLookupByLibrary.simpleMessage("Все роли"),
        "all_tags": MessageLookupByLibrary.simpleMessage("Все теги"),
        "all_tasks": MessageLookupByLibrary.simpleMessage("Все задачи"),
        "amountOfDays": m0,
        "amount_of_time": m1,
        "and": MessageLookupByLibrary.simpleMessage("и"),
        "appError": MessageLookupByLibrary.simpleMessage(
            "К сожалению, произошла ошибка"),
        "apply": MessageLookupByLibrary.simpleMessage("Применить"),
        "areNotAssigned": MessageLookupByLibrary.simpleMessage("Не назначены"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("Вы уверены?"),
        "are_you_sure_want_reset_pincode": MessageLookupByLibrary.simpleMessage(
            "Вы уверены, что хотите сбросить код доступа?"),
        "at_work": m2,
        "audio": MessageLookupByLibrary.simpleMessage("аудио"),
        "audio1": MessageLookupByLibrary.simpleMessage("аудиофайл"),
        "audio2": MessageLookupByLibrary.simpleMessage("аудиофайла"),
        "audio5": MessageLookupByLibrary.simpleMessage("аудиофайлов"),
        "auth_login_subtitle": MessageLookupByLibrary.simpleMessage(
            "Укажите e-mail, к которому привязан аккаунт DLS One"),
        "auth_phone_message": MessageLookupByLibrary.simpleMessage(
            "Укажите email, к которому привязан аккаунт DLS One"),
        "auth_sms_code": MessageLookupByLibrary.simpleMessage("Код из письма"),
        "auth_sms_code_phone":
            MessageLookupByLibrary.simpleMessage("Код из СМС"),
        "auth_sms_code_resend": m3,
        "auth_sms_sent_to_phone": m4,
        "author": MessageLookupByLibrary.simpleMessage("Автор"),
        "authorization": MessageLookupByLibrary.simpleMessage("Авторизация"),
        "authorization_enter_password":
            MessageLookupByLibrary.simpleMessage("Введите пароль"),
        "authorized": MessageLookupByLibrary.simpleMessage("Авторизованные"),
        "back": MessageLookupByLibrary.simpleMessage("Назад"),
        "backlog": MessageLookupByLibrary.simpleMessage("Бэклог"),
        "biometrics": MessageLookupByLibrary.simpleMessage("Биометрия"),
        "biometrics_off":
            MessageLookupByLibrary.simpleMessage("Биометрия выключена"),
        "biometrics_on":
            MessageLookupByLibrary.simpleMessage("Биометрия включена"),
        "bloc": MessageLookupByLibrary.simpleMessage("Заблокировать"),
        "blocking": MessageLookupByLibrary.simpleMessage("Блокирует"),
        "blocks": MessageLookupByLibrary.simpleMessage("Блокировки"),
        "by_sprints": MessageLookupByLibrary.simpleMessage("по спринтам"),
        "calendar": MessageLookupByLibrary.simpleMessage("Календарь"),
        "call": MessageLookupByLibrary.simpleMessage("Звонок"),
        "callInitStep": m5,
        "calling_call": MessageLookupByLibrary.simpleMessage("Вызов"),
        "cancel": MessageLookupByLibrary.simpleMessage("Отмена"),
        "cancel2": MessageLookupByLibrary.simpleMessage("Отменить"),
        "canceled_call":
            MessageLookupByLibrary.simpleMessage("Отмененный звонок"),
        "change": MessageLookupByLibrary.simpleMessage("Изменить"),
        "change_members":
            MessageLookupByLibrary.simpleMessage("Изменение участников"),
        "change_password":
            MessageLookupByLibrary.simpleMessage("Изменение пароля"),
        "change_pin":
            MessageLookupByLibrary.simpleMessage("Изменение пин-кода"),
        "change_priority":
            MessageLookupByLibrary.simpleMessage("Изменить приоритет"),
        "change_status":
            MessageLookupByLibrary.simpleMessage("Изменить статус"),
        "chat": MessageLookupByLibrary.simpleMessage("Чат"),
        "chatAddEventComment": MessageLookupByLibrary.simpleMessage(
            "добавил(а) комментарий к мероприятию"),
        "chatAddGroupUsers": MessageLookupByLibrary.simpleMessage(
            "добавил(а) пользователей в группу"),
        "chatAddTaskComment": MessageLookupByLibrary.simpleMessage(
            "добавил(а) комментарий к задаче"),
        "chatAddYouToGroup":
            MessageLookupByLibrary.simpleMessage("добавил(а) вас в группу"),
        "chatCallEnd": m6,
        "chatCallStart": m7,
        "chatChangeGroupAvatar":
            MessageLookupByLibrary.simpleMessage("изменил(а) аватар группы"),
        "chatChangeGroupName":
            MessageLookupByLibrary.simpleMessage("изменил(а) название группы"),
        "chatChooseForward":
            MessageLookupByLibrary.simpleMessage("Выберите получателя"),
        "chatCommentsCloseTooltip":
            MessageLookupByLibrary.simpleMessage("Закрыть"),
        "chatCommentsCount": m8,
        "chatCommentsReplies": MessageLookupByLibrary.simpleMessage("Ответы"),
        "chatContainsOnlyYou":
            MessageLookupByLibrary.simpleMessage("В чате находитесь только вы"),
        "chatGroupMessage": m9,
        "chatLastMessageAudio":
            MessageLookupByLibrary.simpleMessage("Отправлено аудио"),
        "chatLastMessageFile":
            MessageLookupByLibrary.simpleMessage("Отправлен файл"),
        "chatLastMessageImage":
            MessageLookupByLibrary.simpleMessage("Отправлено изображение"),
        "chatLastMessageMeFormat": m10,
        "chatLastMessageNotice":
            MessageLookupByLibrary.simpleMessage("Отправлено уведомление"),
        "chatLastMessageVideo":
            MessageLookupByLibrary.simpleMessage("Отправлено видео"),
        "chatMessageAttachedFiles":
            MessageLookupByLibrary.simpleMessage("Прикреплённые файлы"),
        "chatMessageChangedName":
            MessageLookupByLibrary.simpleMessage("сменил имя"),
        "chatMessageCount": m11,
        "chatMessageCreatedChat":
            MessageLookupByLibrary.simpleMessage("создал чат"),
        "chatMessageDeleted":
            MessageLookupByLibrary.simpleMessage("сообщение удалено"),
        "chatMessageDeletedAt": m12,
        "chatMessageEdit":
            MessageLookupByLibrary.simpleMessage("Редактирование"),
        "chatMessageEditedAt": m13,
        "chatMessageJoinedChat":
            MessageLookupByLibrary.simpleMessage("присоединился"),
        "chatMessageKickedChat": MessageLookupByLibrary.simpleMessage("выгнал"),
        "chatMessageLeaveChat":
            MessageLookupByLibrary.simpleMessage("вышел из чата"),
        "chatMessageMenuSelect":
            MessageLookupByLibrary.simpleMessage("Выделить"),
        "chatMessageNewMessages":
            MessageLookupByLibrary.simpleMessage("Новые сообщения"),
        "chatMessageQuote": MessageLookupByLibrary.simpleMessage("Цитировать"),
        "chatMessageRemovedFromClient":
            MessageLookupByLibrary.simpleMessage("Удалено из клиента"),
        "chatMessageSendInvite":
            MessageLookupByLibrary.simpleMessage("добавил"),
        "chatMessageUnknownStatus":
            MessageLookupByLibrary.simpleMessage("неизвестный статус"),
        "chatNotFound": MessageLookupByLibrary.simpleMessage("Чат не найден"),
        "chatPrivateMessage": MessageLookupByLibrary.simpleMessage(
            "прислал(а) вам личное сообщение"),
        "chatRemoveEventComment": MessageLookupByLibrary.simpleMessage(
            "удалил(а) комментарий к мероприятию"),
        "chatRemoveGroupUsers": MessageLookupByLibrary.simpleMessage(
            "удалил(а) пользователей из группы"),
        "chatRemoveTaskComment": MessageLookupByLibrary.simpleMessage(
            "удалил(а) комментарий из задачи"),
        "chatReplyMessage": MessageLookupByLibrary.simpleMessage(
            "ответил(а) на ваше сообщение"),
        "chat_mess_empty_group": MessageLookupByLibrary.simpleMessage(
            "В группе нет ни одного сообщения"),
        "chat_mess_empty_pers": MessageLookupByLibrary.simpleMessage(
            "Вы еще не общались с этим человеком"),
        "chats": MessageLookupByLibrary.simpleMessage("Чаты"),
        "chats_empty": MessageLookupByLibrary.simpleMessage("Чатов нет"),
        "checking_mail": MessageLookupByLibrary.simpleMessage("Проверка почты"),
        "checklist": MessageLookupByLibrary.simpleMessage("Чек-лист"),
        "checkpoint_04": MessageLookupByLibrary.simpleMessage("0 из 4"),
        "chooseTask": MessageLookupByLibrary.simpleMessage("Выберите задачу"),
        "clear": m14,
        "code_resent_to_email_sec": m15,
        "code_sent_to_email": MessageLookupByLibrary.simpleMessage(
            "Укажите email, к которой привязан аккаунт DLS One"),
        "code_sent_to_email_useremail": m16,
        "comment_1": MessageLookupByLibrary.simpleMessage(
            "Я сегодня не смогу придти на собрание."),
        "comment_2": MessageLookupByLibrary.simpleMessage(
            "\'Представьте, что вам больше не нужно описывать детали проекта третьей стороне и объяснять все процессы. Вы мгновенно делитесь планом, на котором все действительно легко понять. Без создания аккаунта. Да, с DLS это очень просто. Вы мгновенно делитесь планом и потом происходит прекрасное\'"),
        "comment_3":
            MessageLookupByLibrary.simpleMessage("назначил себя исполнителем"),
        "comment_4": MessageLookupByLibrary.simpleMessage(
            "Вот ссылка на наш сайт - полюбуйся!"),
        "commentsPlural": m17,
        "comments_and_actions":
            MessageLookupByLibrary.simpleMessage("комментарии и действия"),
        "common": MessageLookupByLibrary.simpleMessage("Общее"),
        "companyStructure":
            MessageLookupByLibrary.simpleMessage("Структура компании"),
        "completed": m18,
        "completed_0": MessageLookupByLibrary.simpleMessage("завершены (0)"),
        "confirm_code":
            MessageLookupByLibrary.simpleMessage("Код подтверждения"),
        "confirm_code_error":
            MessageLookupByLibrary.simpleMessage("Ошибка в коде подтверждения"),
        "confirm_code_from_email": m19,
        "confirm_code_from_phone": m20,
        "contentAddEmail": MessageLookupByLibrary.simpleMessage(
            "Введите e-mail, который Вы хотите добавить к аккаунту DLS"),
        "contentAddPhone": MessageLookupByLibrary.simpleMessage(
            "Введите номер телефона, который Вы хотите добавить к аккаунту DLS"),
        "contentValidateEmail": m21,
        "contentValidatePhone": m22,
        "copy": MessageLookupByLibrary.simpleMessage("Копировать"),
        "countTotal": m23,
        "count_delete_from_group": m24,
        "createEvent":
            MessageLookupByLibrary.simpleMessage("Создать мероприятие"),
        "createPrivateChatError": MessageLookupByLibrary.simpleMessage(
            "Не удалось создать личный чат"),
        "createTask": MessageLookupByLibrary.simpleMessage("Создать задачу"),
        "createTaskFirst":
            MessageLookupByLibrary.simpleMessage("Сначала создайте задачу"),
        "create_access_code":
            MessageLookupByLibrary.simpleMessage("Задайте код доступа"),
        "create_case": MessageLookupByLibrary.simpleMessage("Создать дело"),
        "create_event":
            MessageLookupByLibrary.simpleMessage("Создать мероприятие"),
        "create_password":
            MessageLookupByLibrary.simpleMessage("Придумайте пароль"),
        "create_task": MessageLookupByLibrary.simpleMessage("Создать задачу"),
        "created_at": m25,
        "currentCallIsEmpty": MessageLookupByLibrary.simpleMessage(
            "Вы не принимаете участия ни в одном звонке"),
        "custom": MessageLookupByLibrary.simpleMessage("Пользовательская"),
        "daily": MessageLookupByLibrary.simpleMessage("Каждый день"),
        "dataWontBeSaved": MessageLookupByLibrary.simpleMessage(
            "Введенные данные не будут сохранены"),
        "date": MessageLookupByLibrary.simpleMessage("Дата"),
        "dateAndTime": MessageLookupByLibrary.simpleMessage("Дата и время"),
        "date_21": MessageLookupByLibrary.simpleMessage("21 окт"),
        "date_24": MessageLookupByLibrary.simpleMessage("24 окт"),
        "day": MessageLookupByLibrary.simpleMessage("День"),
        "dayOfWeek": MessageLookupByLibrary.simpleMessage("День недели"),
        "days": MessageLookupByLibrary.simpleMessage("дней"),
        "daysPlural": m26,
        "deadline": MessageLookupByLibrary.simpleMessage("Дедлайн"),
        "del_ava": MessageLookupByLibrary.simpleMessage(
            "Отменить удаление невозможно. Вы действительно хотите удалить фото?"),
        "delete": MessageLookupByLibrary.simpleMessage("Удалить"),
        "deleteChat": MessageLookupByLibrary.simpleMessage("Удалить чат?"),
        "deleteDepartment":
            MessageLookupByLibrary.simpleMessage("Удалить отдел"),
        "delete_and_leave_chat":
            MessageLookupByLibrary.simpleMessage("Удалить и выйти из чата"),
        "delete_and_leave_group":
            MessageLookupByLibrary.simpleMessage("Удалить и покинуть"),
        "delete_date": MessageLookupByLibrary.simpleMessage("Удалить дату"),
        "delete_email": m27,
        "delete_from_group":
            MessageLookupByLibrary.simpleMessage("Удалить из группы"),
        "delete_group_name": m28,
        "delete_phone": m29,
        "department": MessageLookupByLibrary.simpleMessage("Отдел"),
        "departmentName":
            MessageLookupByLibrary.simpleMessage("Название отдела"),
        "dependencies_and_locks":
            MessageLookupByLibrary.simpleMessage("Зависимости и блокировки"),
        "depends": MessageLookupByLibrary.simpleMessage("Зависимость"),
        "dependsFrom": MessageLookupByLibrary.simpleMessage("Зависит от"),
        "details": MessageLookupByLibrary.simpleMessage("Детали"),
        "do1": MessageLookupByLibrary.simpleMessage("до"),
        "document": MessageLookupByLibrary.simpleMessage("Документ"),
        "done": MessageLookupByLibrary.simpleMessage("Готово"),
        "dont_remember_password":
            MessageLookupByLibrary.simpleMessage("Не помню пароль"),
        "draft": MessageLookupByLibrary.simpleMessage("черновик"),
        "durability": MessageLookupByLibrary.simpleMessage("Длительность"),
        "edit": MessageLookupByLibrary.simpleMessage("Редактировать"),
        "editing": MessageLookupByLibrary.simpleMessage("редактирование"),
        "eight": MessageLookupByLibrary.simpleMessage("8"),
        "email": MessageLookupByLibrary.simpleMessage("E-mail"),
        "email_example":
            MessageLookupByLibrary.simpleMessage("Alex_1@gmail.com"),
        "employeePosition":
            MessageLookupByLibrary.simpleMessage("Должность сотрудника"),
        "employee_name":
            MessageLookupByLibrary.simpleMessage("Имя сотрудника..."),
        "employees": MessageLookupByLibrary.simpleMessage("Сотрудники"),
        "employeesList":
            MessageLookupByLibrary.simpleMessage("Список сотрудников"),
        "empty_tab": MessageLookupByLibrary.simpleMessage("Пока пусто"),
        "enable_bio": MessageLookupByLibrary.simpleMessage(
            "Использовать проверку по биометрии для входа в приложение?"),
        "endTime": MessageLookupByLibrary.simpleMessage("Время окончания"),
        "end_date": MessageLookupByLibrary.simpleMessage("Дата окончания"),
        "enderDescriptionEvent": MessageLookupByLibrary.simpleMessage(
            "Введите описание мероприятия. Для начала редактирования нажмите на этот текст"),
        "enterNameEvent": MessageLookupByLibrary.simpleMessage(
            "Введите название мероприятия"),
        "enterTodoTitle":
            MessageLookupByLibrary.simpleMessage("Введите текст дела"),
        "enter_data": MessageLookupByLibrary.simpleMessage("Введите данные"),
        "enter_description_task": MessageLookupByLibrary.simpleMessage(
            "Введите описание задачи. Для начала редактирования нажмите на этот текст"),
        "enter_message":
            MessageLookupByLibrary.simpleMessage("Введите текст сообщения..."),
        "enter_name": MessageLookupByLibrary.simpleMessage("Введите название"),
        "enter_name_task":
            MessageLookupByLibrary.simpleMessage("Введите название задачи"),
        "error": MessageLookupByLibrary.simpleMessage("Ошибка"),
        "errorMessageFormat": m30,
        "error_image_saving_to_gallery": MessageLookupByLibrary.simpleMessage(
            "Ошибка сохранения изображения в галерею"),
        "estimatedEndDate": MessageLookupByLibrary.simpleMessage(
            "Предположительная дата окончания"),
        "eventAddFiles": MessageLookupByLibrary.simpleMessage(
            "добавил(а) файлы к мероприятию"),
        "eventChangeAnyString": MessageLookupByLibrary.simpleMessage(""),
        "eventChangeDate":
            MessageLookupByLibrary.simpleMessage("изменил(а) дату мероприятия"),
        "eventChangeFormat":
            MessageLookupByLibrary.simpleMessage("изменил(а) тип мероприятия"),
        "eventChangeName": MessageLookupByLibrary.simpleMessage(
            "изменил(а) название мероприятия"),
        "eventChangePlace": MessageLookupByLibrary.simpleMessage(
            "изменил(а) место мероприятия"),
        "eventChangeTime": MessageLookupByLibrary.simpleMessage(
            "изменил(а) время мероприятия"),
        "eventConnection": MessageLookupByLibrary.simpleMessage("Связь"),
        "eventDeleted":
            MessageLookupByLibrary.simpleMessage("Мероприятие удалено"),
        "eventEditing":
            MessageLookupByLibrary.simpleMessage("Редактирование мероприятий"),
        "eventEnd":
            MessageLookupByLibrary.simpleMessage("Завершилось мероприятие"),
        "eventExpandAccess": MessageLookupByLibrary.simpleMessage(
            "предоставил(а) вам доступ к мероприятию"),
        "eventInvite": MessageLookupByLibrary.simpleMessage(
            "пригласил(а) вас на мероприятие"),
        "eventLinkTasks": MessageLookupByLibrary.simpleMessage(
            "привязал(а) задачи к мероприятию"),
        "eventLocation":
            MessageLookupByLibrary.simpleMessage("Место проведения"),
        "eventRemove":
            MessageLookupByLibrary.simpleMessage("удалил(а) мероприятие"),
        "eventRemoveFiles": MessageLookupByLibrary.simpleMessage(
            "удалил(а) файлы из мероприятия"),
        "eventRepeat": MessageLookupByLibrary.simpleMessage("Повторять"),
        "eventRestrictAccess": MessageLookupByLibrary.simpleMessage(
            "ограничил(а) вам доступ к мероприятию"),
        "eventStart":
            MessageLookupByLibrary.simpleMessage("Началось мероприятие"),
        "eventType": MessageLookupByLibrary.simpleMessage("Тип мероприятия"),
        "eventUnlinkTasks": MessageLookupByLibrary.simpleMessage(
            "отвязал(а) задачи от мероприятия"),
        "events": MessageLookupByLibrary.simpleMessage("Мероприятия"),
        "everyMonth": MessageLookupByLibrary.simpleMessage("ежемесячно"),
        "everyWeek": MessageLookupByLibrary.simpleMessage("еженедельно"),
        "everyWeekDayInMonth": m31,
        "everyday": MessageLookupByLibrary.simpleMessage("ежедневно"),
        "example_phone":
            MessageLookupByLibrary.simpleMessage("+7 931 456 69 78"),
        "executor": MessageLookupByLibrary.simpleMessage("Исполнитель"),
        "exit": MessageLookupByLibrary.simpleMessage("Выйти"),
        "exit_from_account":
            MessageLookupByLibrary.simpleMessage("Выйти из аккаунта"),
        "face_id_off": MessageLookupByLibrary.simpleMessage("Face ID выключен"),
        "face_id_on": MessageLookupByLibrary.simpleMessage("Face ID включен"),
        "failedHostLookup": MessageLookupByLibrary.simpleMessage(
            "Сервер недоступен, возможно отсутствует подключение к сети Интернет"),
        "fifteen": MessageLookupByLibrary.simpleMessage("3"),
        "file1": MessageLookupByLibrary.simpleMessage("файл"),
        "file2": MessageLookupByLibrary.simpleMessage("файла"),
        "file5": MessageLookupByLibrary.simpleMessage("файлов"),
        "files": MessageLookupByLibrary.simpleMessage("файлов"),
        "files_title": MessageLookupByLibrary.simpleMessage("Файлы"),
        "filters": MessageLookupByLibrary.simpleMessage("Фильтры"),
        "forTheDay": MessageLookupByLibrary.simpleMessage("На день"),
        "forToday": MessageLookupByLibrary.simpleMessage("на сегодня"),
        "forWeek": MessageLookupByLibrary.simpleMessage("на неделю"),
        "forwarded_ok":
            MessageLookupByLibrary.simpleMessage("Переслано успешно"),
        "friday": MessageLookupByLibrary.simpleMessage("Пт"),
        "from": MessageLookupByLibrary.simpleMessage("из"),
        "gantt": MessageLookupByLibrary.simpleMessage("Гант"),
        "general": MessageLookupByLibrary.simpleMessage("Общее"),
        "goToSprint": MessageLookupByLibrary.simpleMessage("перейти в спринт"),
        "grantingAccess":
            MessageLookupByLibrary.simpleMessage("Предоставление доступа"),
        "grantingAccessCameraQuestion": MessageLookupByLibrary.simpleMessage(
            "Приложению требуются доступ к камере, его можно предоставить через настройки, перейти в настройки?"),
        "grantingAccessMicOrCameraQuestion": MessageLookupByLibrary.simpleMessage(
            "Приложению требуются доступы к микрофону и камере, их можно предоставить через настройки, перейти в настройки?"),
        "grantingAccessMicQuestion": MessageLookupByLibrary.simpleMessage(
            "Приложению требуются доступ к микрофону, его можно предоставить через настройки, перейти в настройки?"),
        "grantingAccessNotificationQuestion": MessageLookupByLibrary.simpleMessage(
            "Приложению требуются разрешения к отображению уведомлений, их можно предоставить через настройки, перейти в настройки?"),
        "group": MessageLookupByLibrary.simpleMessage("Группа"),
        "groupAddPeople":
            MessageLookupByLibrary.simpleMessage("Добавление людей в группу"),
        "groupTotalAndOnline": m32,
        "group_adding":
            MessageLookupByLibrary.simpleMessage("Добавление группы"),
        "group_admin":
            MessageLookupByLibrary.simpleMessage("Администратор группы"),
        "group_list_is_empty": MessageLookupByLibrary.simpleMessage(
            "Вы не состоите ни в одной группе"),
        "group_name": MessageLookupByLibrary.simpleMessage("Название группы"),
        "group_owner": MessageLookupByLibrary.simpleMessage("Владелец группы"),
        "groups": MessageLookupByLibrary.simpleMessage("Группы"),
        "hangup": MessageLookupByLibrary.simpleMessage(
            "Принудительно завершить текущий звонок"),
        "have_not_acc":
            MessageLookupByLibrary.simpleMessage("У вас нет аккаунта?"),
        "hello_name": m33,
        "hi": MessageLookupByLibrary.simpleMessage("Здравствуйте"),
        "hide": MessageLookupByLibrary.simpleMessage("Скрыть"),
        "hideFinished":
            MessageLookupByLibrary.simpleMessage("Скрыть завершенные"),
        "hide_all": MessageLookupByLibrary.simpleMessage("Скрыть все"),
        "hide_all_count": m34,
        "hint_name": MessageLookupByLibrary.simpleMessage("Иван"),
        "hint_surname": MessageLookupByLibrary.simpleMessage("Петров"),
        "hour1": MessageLookupByLibrary.simpleMessage("час"),
        "hour2": MessageLookupByLibrary.simpleMessage("часа"),
        "hour5": MessageLookupByLibrary.simpleMessage("часов"),
        "hoursDuration": m35,
        "i_am_not_name": m36,
        "icon_set":
            MessageLookupByLibrary.simpleMessage("Нарисовать сет иконок"),
        "image_deleted":
            MessageLookupByLibrary.simpleMessage("Изображение удалено"),
        "image_saved_to_gallery": MessageLookupByLibrary.simpleMessage(
            "Изображение сохранено в галерею"),
        "images": MessageLookupByLibrary.simpleMessage("картинок"),
        "important": MessageLookupByLibrary.simpleMessage("Важные"),
        "inProgress_2": MessageLookupByLibrary.simpleMessage("в работе (0)"),
        "in_queue_2": MessageLookupByLibrary.simpleMessage("в очереди (0)"),
        "in_the_queue": m37,
        "incoming_call":
            MessageLookupByLibrary.simpleMessage("Входящий звонок"),
        "indefinitely": MessageLookupByLibrary.simpleMessage("Без срока"),
        "information": MessageLookupByLibrary.simpleMessage("Информация"),
        "inputHintAddEmail":
            MessageLookupByLibrary.simpleMessage("dls@dls.one"),
        "inputHintAddPhone":
            MessageLookupByLibrary.simpleMessage("796321456987"),
        "inputHintValidateEmail": MessageLookupByLibrary.simpleMessage("0000"),
        "inputHintValidatePhone": MessageLookupByLibrary.simpleMessage("0000"),
        "inputLabelAddEmail":
            MessageLookupByLibrary.simpleMessage("Новый e-mail"),
        "inputLabelAddPhone":
            MessageLookupByLibrary.simpleMessage("Новый телефон"),
        "inputLabelValidateEmail":
            MessageLookupByLibrary.simpleMessage("Код из письма"),
        "inputLabelValidatePhone":
            MessageLookupByLibrary.simpleMessage("Код из СМС"),
        "job_position": MessageLookupByLibrary.simpleMessage("Должность"),
        "join": MessageLookupByLibrary.simpleMessage("Присоединиться"),
        "kanban": MessageLookupByLibrary.simpleMessage("Канбан"),
        "keepStay": MessageLookupByLibrary.simpleMessage("Остаться"),
        "kickAdmin":
            MessageLookupByLibrary.simpleMessage("Снять права администратора"),
        "leave": MessageLookupByLibrary.simpleMessage("Покинуть"),
        "leaveFromPage":
            MessageLookupByLibrary.simpleMessage("Уйти со страницы"),
        "leaveGroupQuestion": m38,
        "leaveWithoutSaving":
            MessageLookupByLibrary.simpleMessage("Уйти без сохранения"),
        "leave_chat": MessageLookupByLibrary.simpleMessage("Выйти из чата"),
        "leave_group": MessageLookupByLibrary.simpleMessage("Покинуть группу"),
        "link": MessageLookupByLibrary.simpleMessage("ссылка"),
        "link1": MessageLookupByLibrary.simpleMessage("ссылка"),
        "link2": MessageLookupByLibrary.simpleMessage("ссылки"),
        "link5": MessageLookupByLibrary.simpleMessage("ссылок"),
        "linkUp": MessageLookupByLibrary.simpleMessage("Ссылка"),
        "link_adding":
            MessageLookupByLibrary.simpleMessage("Добавление ссылки"),
        "links": MessageLookupByLibrary.simpleMessage("ссылок"),
        "list": MessageLookupByLibrary.simpleMessage("Список"),
        "listShow": MessageLookupByLibrary.simpleMessage("Показать"),
        "loading": MessageLookupByLibrary.simpleMessage("Загрузка"),
        "loadingDataError":
            MessageLookupByLibrary.simpleMessage("Ошибка при загрузке данных"),
        "localStreamerIsEmpty": MessageLookupByLibrary.simpleMessage(
            "Инициализация локального потока"),
        "location": MessageLookupByLibrary.simpleMessage("Место"),
        "location_sample": MessageLookupByLibrary.simpleMessage("каб. 404"),
        "lock": MessageLookupByLibrary.simpleMessage("Блокировка"),
        "locked": MessageLookupByLibrary.simpleMessage("Заблокированные"),
        "login": MessageLookupByLibrary.simpleMessage("Войти"),
        "make_design": MessageLookupByLibrary.simpleMessage("Сделать дизайн"),
        "manager": MessageLookupByLibrary.simpleMessage("Руководитель"),
        "managerPosition":
            MessageLookupByLibrary.simpleMessage("Должность руководителя"),
        "maximize": MessageLookupByLibrary.simpleMessage("Развернуть"),
        "me": MessageLookupByLibrary.simpleMessage("Я"),
        "meComma": MessageLookupByLibrary.simpleMessage("(я)"),
        "member1": MessageLookupByLibrary.simpleMessage("участник"),
        "member2": MessageLookupByLibrary.simpleMessage("участника"),
        "member5": MessageLookupByLibrary.simpleMessage("участников"),
        "members": MessageLookupByLibrary.simpleMessage("Участники"),
        "membersCanInviteInfo": MessageLookupByLibrary.simpleMessage(
            "Участники могут приглашать других"),
        "message_search":
            MessageLookupByLibrary.simpleMessage("Поиск по сообщениям"),
        "messages": MessageLookupByLibrary.simpleMessage("Сообщения"),
        "michael_michael":
            MessageLookupByLibrary.simpleMessage("Михаил Михайлов"),
        "minimize": MessageLookupByLibrary.simpleMessage("Свернуть"),
        "minute1": MessageLookupByLibrary.simpleMessage("минута"),
        "minute2": MessageLookupByLibrary.simpleMessage("минуты"),
        "minute5": MessageLookupByLibrary.simpleMessage("минут"),
        "minutesDuration": m39,
        "missed_call":
            MessageLookupByLibrary.simpleMessage("Пропущенный звонок"),
        "monday": MessageLookupByLibrary.simpleMessage("Пн"),
        "month": MessageLookupByLibrary.simpleMessage("Месяц"),
        "monthly": MessageLookupByLibrary.simpleMessage("Ежемесячно"),
        "monthlyDescription": m40,
        "more": m41,
        "more_subtasks": m42,
        "morning_planning":
            MessageLookupByLibrary.simpleMessage("Утренний планинг"),
        "move": MessageLookupByLibrary.simpleMessage("Переместить"),
        "mustInvite": MessageLookupByLibrary.simpleMessage(
            "Вы должны сначала добавить пользо\nвателя в чат, а он должен хотя бы \nодин раз войти в чат"),
        "mustVisit": MessageLookupByLibrary.simpleMessage(
            "Назначаемый пользователь еще ни разу не был в чате"),
        "mute": MessageLookupByLibrary.simpleMessage("Выключить уведомления"),
        "mute_interval": MessageLookupByLibrary.simpleMessage("Период тишины"),
        "mute_interval_desc": MessageLookupByLibrary.simpleMessage(
            "Период времени, во время которого будет отключен весь звук уведомлений"),
        "mute_sound_notifications":
            MessageLookupByLibrary.simpleMessage("Выключить звук уведомлений"),
        "my_part": m43,
        "my_replies": MessageLookupByLibrary.simpleMessage("Мои ответы"),
        "my_role": MessageLookupByLibrary.simpleMessage("Моя роль"),
        "name": MessageLookupByLibrary.simpleMessage("Имя"),
        "name_job_department":
            MessageLookupByLibrary.simpleMessage("Имя, должность, отдел..."),
        "name_not_set": MessageLookupByLibrary.simpleMessage("имя не указано"),
        "name_task": MessageLookupByLibrary.simpleMessage("Название задачи"),
        "networkError": MessageLookupByLibrary.simpleMessage("Сетевая ошибка"),
        "newContacts": MessageLookupByLibrary.simpleMessage("Новые контакты"),
        "newSprint": MessageLookupByLibrary.simpleMessage("Новый спринт"),
        "newTaskEvent":
            MessageLookupByLibrary.simpleMessage("Новое мероприятие"),
        "new_email": MessageLookupByLibrary.simpleMessage("Новый e-mail"),
        "new_password": MessageLookupByLibrary.simpleMessage("Новый пароль"),
        "new_phone": MessageLookupByLibrary.simpleMessage("Новый телефон"),
        "new_task": MessageLookupByLibrary.simpleMessage("Новая задача"),
        "next": MessageLookupByLibrary.simpleMessage("Далее"),
        "no": MessageLookupByLibrary.simpleMessage("Нет"),
        "noAccessToMicAndCamera": MessageLookupByLibrary.simpleMessage(
            "Не удается получить доступ к камере или микрофону"),
        "notAssigned": MessageLookupByLibrary.simpleMessage("Не назначен"),
        "notEnoughRights":
            MessageLookupByLibrary.simpleMessage("Недостаточно прав"),
        "not_available_to_observer": MessageLookupByLibrary.simpleMessage(
            "Изменение статуса в режиме \n“Наблюдатель” недоступно"),
        "not_available_to_observer_2": MessageLookupByLibrary.simpleMessage(
            "Изменение статуса в режиме “Наблюдатель” недоступно"),
        "not_member": MessageLookupByLibrary.simpleMessage(
            "Вы не являетесь участником данного чата"),
        "not_selected": MessageLookupByLibrary.simpleMessage("не выбрано"),
        "notifications": MessageLookupByLibrary.simpleMessage("Уведомления"),
        "notifications_empty":
            MessageLookupByLibrary.simpleMessage("Нет уведомлений"),
        "notifications_mute":
            MessageLookupByLibrary.simpleMessage("Уведомления выключен"),
        "notifications_schedule":
            MessageLookupByLibrary.simpleMessage("График звуковых уведомлений"),
        "notifications_unmute":
            MessageLookupByLibrary.simpleMessage("Уведомления включен"),
        "nowYouInCall": MessageLookupByLibrary.simpleMessage(
            "На данный момент Вы уже находитесь в звонке, завершите его и попробуйте снова"),
        "observer": MessageLookupByLibrary.simpleMessage("Наблюдатель"),
        "observers": MessageLookupByLibrary.simpleMessage("Наблюдатели"),
        "offline": MessageLookupByLibrary.simpleMessage("Оффлайн"),
        "offlineName": MessageLookupByLibrary.simpleMessage("Офлайн"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "old_password": MessageLookupByLibrary.simpleMessage("Старый пароль"),
        "online": MessageLookupByLibrary.simpleMessage("Онлайн"),
        "onlineName": MessageLookupByLibrary.simpleMessage("Онлайн"),
        "onlyOwn": MessageLookupByLibrary.simpleMessage("только свои"),
        "organizer": MessageLookupByLibrary.simpleMessage("Организатор"),
        "outgoing_call":
            MessageLookupByLibrary.simpleMessage("Исходящий звонок"),
        "overdue": MessageLookupByLibrary.simpleMessage("Просроченные"),
        "participantsBusy":
            MessageLookupByLibrary.simpleMessage("Занятость участников"),
        "participate": MessageLookupByLibrary.simpleMessage("Участвую"),
        "participate_not": MessageLookupByLibrary.simpleMessage("Не участвую"),
        "participates": MessageLookupByLibrary.simpleMessage("Участников"),
        "password": MessageLookupByLibrary.simpleMessage("Пароль"),
        "password_example":
            MessageLookupByLibrary.simpleMessage("seCRETpass00rD"),
        "password_was_changed":
            MessageLookupByLibrary.simpleMessage("Пароль успешно изменен"),
        "people1": MessageLookupByLibrary.simpleMessage("человек"),
        "people2": MessageLookupByLibrary.simpleMessage("человека"),
        "people_adding":
            MessageLookupByLibrary.simpleMessage("Добавление людей"),
        "performer": MessageLookupByLibrary.simpleMessage("Исполнитель"),
        "period": MessageLookupByLibrary.simpleMessage("Период"),
        "period_21": MessageLookupByLibrary.simpleMessage("21.09 - 03.10"),
        "permissionSetting":
            MessageLookupByLibrary.simpleMessage("Настройка прав"),
        "personal": MessageLookupByLibrary.simpleMessage("Персональные"),
        "personal_chats": MessageLookupByLibrary.simpleMessage("Личные чаты"),
        "personal_data": MessageLookupByLibrary.simpleMessage("Личные данные"),
        "personal_list_is_empty":
            MessageLookupByLibrary.simpleMessage("Вы еще ни с кем не общались"),
        "phone": MessageLookupByLibrary.simpleMessage("Телефон"),
        "photo": MessageLookupByLibrary.simpleMessage("Фото"),
        "photo1": MessageLookupByLibrary.simpleMessage("фото"),
        "photo2": MessageLookupByLibrary.simpleMessage("фото"),
        "photo5": MessageLookupByLibrary.simpleMessage("фото"),
        "pickParentTask":
            MessageLookupByLibrary.simpleMessage("Выберите надзадачу"),
        "pick_from_gallery":
            MessageLookupByLibrary.simpleMessage("Загрузить из галереи"),
        "pin_is_invalid":
            MessageLookupByLibrary.simpleMessage("Введен неверный код"),
        "pins_not_same": MessageLookupByLibrary.simpleMessage(
            "Пин-коды не совпадают, попробуйте снова"),
        "planning": MessageLookupByLibrary.simpleMessage("Планирование"),
        "positionName":
            MessageLookupByLibrary.simpleMessage("Название должности"),
        "positionNameLengthError": MessageLookupByLibrary.simpleMessage(
            "Название должности должно быть длиннее 3 символов"),
        "press_or_drag_to_pick": MessageLookupByLibrary.simpleMessage(
            "Нажмите для выбора, или перетащите файл прямо сюда"),
        "priorety_all": MessageLookupByLibrary.simpleMessage("Все приоритеты"),
        "priority": MessageLookupByLibrary.simpleMessage("Приоритет"),
        "priortiet": MessageLookupByLibrary.simpleMessage("Приортиет"),
        "profile": MessageLookupByLibrary.simpleMessage("Профиль"),
        "profile_is_empty":
            MessageLookupByLibrary.simpleMessage("Профиль пользователя пуст"),
        "read_all_and_close":
            MessageLookupByLibrary.simpleMessage("Прочитать всё и закрыть"),
        "reading": MessageLookupByLibrary.simpleMessage("просмотр"),
        "really_leave_group": MessageLookupByLibrary.simpleMessage(
            "Вы действительно хотите покинуть группу?"),
        "rec_audio":
            MessageLookupByLibrary.simpleMessage("Записать аудиосообщение"),
        "rec_video":
            MessageLookupByLibrary.simpleMessage("Записать видеосообщение"),
        "recorderFinish": MessageLookupByLibrary.simpleMessage("Завершить"),
        "recorderStart": MessageLookupByLibrary.simpleMessage("Начать запись"),
        "recorderSwipeToCancel":
            MessageLookupByLibrary.simpleMessage("Влево - отмена"),
        "register": MessageLookupByLibrary.simpleMessage("Зарегистрируйтесь"),
        "registration": MessageLookupByLibrary.simpleMessage("Регистрация"),
        "registration_approve_code":
            MessageLookupByLibrary.simpleMessage("Код подтверждения"),
        "registration_approve_code_resend_time": m44,
        "registration_create_password":
            MessageLookupByLibrary.simpleMessage("Придумайте пароль"),
        "registration_resend_approve_code":
            MessageLookupByLibrary.simpleMessage("Выслать код повторно"),
        "registration_sms_send_to_tel": m45,
        "registration_tel_ex":
            MessageLookupByLibrary.simpleMessage("email@.dls.one"),
        "registration_text": MessageLookupByLibrary.simpleMessage(
            "Укажите email, к которому будет привязан ваш аккаунт в DLS One"),
        "rename": MessageLookupByLibrary.simpleMessage("Переименовать"),
        "rename_group": MessageLookupByLibrary.simpleMessage("Переименование"),
        "repeat": MessageLookupByLibrary.simpleMessage("Повтор"),
        "repeatTill": MessageLookupByLibrary.simpleMessage("Повторять до"),
        "repeat_access_code":
            MessageLookupByLibrary.simpleMessage("Повторите код доступа"),
        "repeat_new_password":
            MessageLookupByLibrary.simpleMessage("Повторите новый пароль"),
        "repeat_password":
            MessageLookupByLibrary.simpleMessage("Повторите пароль"),
        "replies": MessageLookupByLibrary.simpleMessage("Ответы"),
        "replies2": MessageLookupByLibrary.simpleMessage("ответа"),
        "replies5": MessageLookupByLibrary.simpleMessage("ответов"),
        "reply": MessageLookupByLibrary.simpleMessage("Ответить"),
        "reply1": MessageLookupByLibrary.simpleMessage("ответ"),
        "resend_code":
            MessageLookupByLibrary.simpleMessage("Выслать код повторно"),
        "reset": MessageLookupByLibrary.simpleMessage("Сбросить"),
        "reset_everything":
            MessageLookupByLibrary.simpleMessage("Сбросить все"),
        "reset_password":
            MessageLookupByLibrary.simpleMessage("Восстановление пароля"),
        "responsible": MessageLookupByLibrary.simpleMessage("Ответственный"),
        "responsible2": MessageLookupByLibrary.simpleMessage("Исполнители"),
        "review": MessageLookupByLibrary.simpleMessage("Ревью"),
        "rightsChanged":
            MessageLookupByLibrary.simpleMessage("Права доступа изменены"),
        "saturday": MessageLookupByLibrary.simpleMessage("Сб"),
        "save": MessageLookupByLibrary.simpleMessage("Сохранить"),
        "saveAs": MessageLookupByLibrary.simpleMessage("Сохранить как..."),
        "save_to_gallery":
            MessageLookupByLibrary.simpleMessage("Сохранить в галерею"),
        "saved": MessageLookupByLibrary.simpleMessage("Сохранено"),
        "scan_bio_for_auth": MessageLookupByLibrary.simpleMessage(
            "Отсканируйте отпечаток пальца для аутентификации"),
        "search": MessageLookupByLibrary.simpleMessage("Поиск"),
        "searchResultsIsEmpty":
            MessageLookupByLibrary.simpleMessage("Ничего не найдено"),
        "search_by_people":
            MessageLookupByLibrary.simpleMessage("Поиск по людям"),
        "second1": MessageLookupByLibrary.simpleMessage("секунда"),
        "second2": MessageLookupByLibrary.simpleMessage("секунды"),
        "second5": MessageLookupByLibrary.simpleMessage("секунд"),
        "secondName": MessageLookupByLibrary.simpleMessage("Отчество"),
        "select": MessageLookupByLibrary.simpleMessage("Выбрать"),
        "selectAll": MessageLookupByLibrary.simpleMessage("Выбрать всех"),
        "selectNewAdmin": MessageLookupByLibrary.simpleMessage(
            "Выберите нового администратора"),
        "selectNewOwner": MessageLookupByLibrary.simpleMessage(
            "Выберите нового владельца группы"),
        "select_chat": MessageLookupByLibrary.simpleMessage("Выберите чат"),
        "select_receiver":
            MessageLookupByLibrary.simpleMessage("Выберите получателя"),
        "select_the_file_source": MessageLookupByLibrary.simpleMessage(
            "Выберите источник файла, или перетащите его сюда"),
        "send": MessageLookupByLibrary.simpleMessage("Отправить"),
        "send_to_work":
            MessageLookupByLibrary.simpleMessage("Отправить в работу"),
        "serverError": MessageLookupByLibrary.simpleMessage(
            "К сожалению, на сервере произошла ошибка"),
        "serverRejectRequest": MessageLookupByLibrary.simpleMessage(
            "Сервер отклонил запрос, попробуйте снова"),
        "serverTimeout": MessageLookupByLibrary.simpleMessage(
            "Время ожидания ответа сервера истекло"),
        "setAdmin": MessageLookupByLibrary.simpleMessage("Назначить"),
        "setAsAdmin": MessageLookupByLibrary.simpleMessage(
            "Предоставить права администратора"),
        "setMeAsResponsible": MessageLookupByLibrary.simpleMessage(
            "Назначить себя ответственным"),
        "setTime": MessageLookupByLibrary.simpleMessage("Назначить время"),
        "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
        "share": MessageLookupByLibrary.simpleMessage("Переслать"),
        "show": MessageLookupByLibrary.simpleMessage("Показывать"),
        "show_all_count": m46,
        "show_entire_hierarchy":
            MessageLookupByLibrary.simpleMessage("Показать всю иерархию"),
        "show_full": MessageLookupByLibrary.simpleMessage("Показать полностью"),
        "show_info":
            MessageLookupByLibrary.simpleMessage("Показать информацию"),
        "skip": MessageLookupByLibrary.simpleMessage("Пропустить"),
        "snils": MessageLookupByLibrary.simpleMessage("СНИЛС"),
        "space": MessageLookupByLibrary.simpleMessage("Пространство"),
        "spaceSetting":
            MessageLookupByLibrary.simpleMessage("Настройка пространства"),
        "sprint": MessageLookupByLibrary.simpleMessage("Спринт"),
        "sprintEditing":
            MessageLookupByLibrary.simpleMessage("Редактирование cпринтов"),
        "sprint_description": MessageLookupByLibrary.simpleMessage(
            "Это двухнедельный спринт, по которому команда работает на постоянной основе"),
        "sprint_sample": MessageLookupByLibrary.simpleMessage("Спринт 12-2456"),
        "sprints": MessageLookupByLibrary.simpleMessage("Спринты"),
        "startTime": MessageLookupByLibrary.simpleMessage("Время начала"),
        "startTypeForSearch": MessageLookupByLibrary.simpleMessage(
            "Начните вводить текст для поиска..."),
        "start_date": MessageLookupByLibrary.simpleMessage("Дата начала"),
        "start_enter_user_name":
            MessageLookupByLibrary.simpleMessage("Начните вводить @имя"),
        "start_rec": MessageLookupByLibrary.simpleMessage("Начать запись"),
        "status": MessageLookupByLibrary.simpleMessage("Cтатус"),
        "status_all": MessageLookupByLibrary.simpleMessage("Все статусы"),
        "status_done": MessageLookupByLibrary.simpleMessage("завершена"),
        "status_hint": MessageLookupByLibrary.simpleMessage("Статус"),
        "status_in_progress": MessageLookupByLibrary.simpleMessage("в работе"),
        "status_todo": MessageLookupByLibrary.simpleMessage("в очереди"),
        "still": MessageLookupByLibrary.simpleMessage("Еще"),
        "stop_rec": MessageLookupByLibrary.simpleMessage("Завершить"),
        "storyPoint_026": MessageLookupByLibrary.simpleMessage("0/26"),
        "story_points": MessageLookupByLibrary.simpleMessage("Стори поинты"),
        "storypoints": MessageLookupByLibrary.simpleMessage("Сторипоинты"),
        "subtasks": MessageLookupByLibrary.simpleMessage("Подзадачи"),
        "sunday": MessageLookupByLibrary.simpleMessage("Вс"),
        "surname": MessageLookupByLibrary.simpleMessage("Фамилия"),
        "surname_not_set":
            MessageLookupByLibrary.simpleMessage("фамилия не указана"),
        "tab_comments": MessageLookupByLibrary.simpleMessage("Комментарии"),
        "tag_design": MessageLookupByLibrary.simpleMessage("Design"),
        "tag_development": MessageLookupByLibrary.simpleMessage("Разработка"),
        "tag_hr": MessageLookupByLibrary.simpleMessage("HR"),
        "tag_it": MessageLookupByLibrary.simpleMessage("IT"),
        "tags": MessageLookupByLibrary.simpleMessage("Теги"),
        "take_shot": MessageLookupByLibrary.simpleMessage("Сделать фото"),
        "taskAddChildTasks":
            MessageLookupByLibrary.simpleMessage("добавил(а) подзадачи задаче"),
        "taskAddDependencies": MessageLookupByLibrary.simpleMessage(
            "добавил(а) зависимости задаче"),
        "taskAddEvents": MessageLookupByLibrary.simpleMessage(
            "добавил(а) мероприятия задаче"),
        "taskAddFiles":
            MessageLookupByLibrary.simpleMessage("добавил(а) файлы задаче"),
        "taskAddSprints":
            MessageLookupByLibrary.simpleMessage("добавил(а) спринты задаче"),
        "taskAddTodos": MessageLookupByLibrary.simpleMessage(
            "добавил(а) пункты в чек-лист задачи"),
        "taskAddWatchers": MessageLookupByLibrary.simpleMessage(
            "добавил(а) наблюдателей задаче"),
        "taskAddYouAssigner": MessageLookupByLibrary.simpleMessage(
            "назначил(а) вас исполнителем задачи"),
        "taskCallEnd": MessageLookupByLibrary.simpleMessage(
            "Закончился групповой звонок в задаче"),
        "taskCallStart": MessageLookupByLibrary.simpleMessage(
            "Начался групповой звонок в задаче"),
        "taskChangeAnyString": MessageLookupByLibrary.simpleMessage(""),
        "taskChangeAssigner": MessageLookupByLibrary.simpleMessage(
            "изменил(а) исполнителя задачи"),
        "taskChangeDeadline":
            MessageLookupByLibrary.simpleMessage("изменил(а) дедлайн задачи"),
        "taskChangePriority":
            MessageLookupByLibrary.simpleMessage("изменил(а) приоритет задачи"),
        "taskChangeStatus":
            MessageLookupByLibrary.simpleMessage("изменил(а) статус задачи"),
        "taskDeleteSuccess":
            MessageLookupByLibrary.simpleMessage("Задача успешно удалена"),
        "taskEditing":
            MessageLookupByLibrary.simpleMessage("Редактирование задач"),
        "taskExpandAccess": MessageLookupByLibrary.simpleMessage(
            "предоставил(а) вам доступ к задаче"),
        "taskLock":
            MessageLookupByLibrary.simpleMessage("заблокировал(а) задачу"),
        "taskOverdue":
            MessageLookupByLibrary.simpleMessage("Просрочена задача"),
        "taskReminder": m47,
        "taskRemoveChildTasks":
            MessageLookupByLibrary.simpleMessage("удалил(а)"),
        "taskRemoveDependencies": MessageLookupByLibrary.simpleMessage(
            "удалил(а) зависимости задачи"),
        "taskRemoveEvents": MessageLookupByLibrary.simpleMessage(
            "удалил(а) мероприятия задачи"),
        "taskRemoveFiles":
            MessageLookupByLibrary.simpleMessage("удалил(а) файлы задачи"),
        "taskRemoveSprints":
            MessageLookupByLibrary.simpleMessage("удалил(а) спринты задачи"),
        "taskRemoveTodos": MessageLookupByLibrary.simpleMessage(
            "удалил(а) пункты в чек-листе задачи"),
        "taskRemoveWatchers": MessageLookupByLibrary.simpleMessage(
            "удалил(а) наблюдателей задачи"),
        "taskRestrictAccess": MessageLookupByLibrary.simpleMessage(
            "ограничил(а) вам доступ к задаче"),
        "taskUnlock":
            MessageLookupByLibrary.simpleMessage("разблокировал(а) задачу"),
        "task_1": MessageLookupByLibrary.simpleMessage("Задача 1"),
        "task_brandBook": MessageLookupByLibrary.simpleMessage("Брендбук"),
        "task_fun": MessageLookupByLibrary.simpleMessage("Изобразить смешное"),
        "task_layout": MessageLookupByLibrary.simpleMessage("Верстка"),
        "task_priority_critical":
            MessageLookupByLibrary.simpleMessage("критичный"),
        "task_priority_high": MessageLookupByLibrary.simpleMessage("высокий"),
        "task_priority_low": MessageLookupByLibrary.simpleMessage("низкий"),
        "task_priority_minor":
            MessageLookupByLibrary.simpleMessage("незначительный"),
        "task_priority_standart":
            MessageLookupByLibrary.simpleMessage("средний"),
        "tasks": MessageLookupByLibrary.simpleMessage("Задачи"),
        "team": MessageLookupByLibrary.simpleMessage("Команда"),
        "termless": MessageLookupByLibrary.simpleMessage("Бессрочные"),
        "text": MessageLookupByLibrary.simpleMessage("Текст"),
        "text_editor":
            MessageLookupByLibrary.simpleMessage("Текстовый редактор"),
        "text_editor_data_format_reset": MessageLookupByLibrary.simpleMessage(
            "Форматирование будет сброшено"),
        "text_editor_data_remove":
            MessageLookupByLibrary.simpleMessage("Все данные будут удалены."),
        "text_editor_exit":
            MessageLookupByLibrary.simpleMessage("Выйти из редактора?"),
        "the_passwords_are_different":
            MessageLookupByLibrary.simpleMessage("Пароли не совпадают"),
        "the_task": MessageLookupByLibrary.simpleMessage("Надзадача"),
        "the_whole_hierarchy": MessageLookupByLibrary.simpleMessage(
            "В режиме просмотра будут показаны \n задачи, связанные с Вашими, в которых \n вы не участвуете: \n ∙  Все задачи ниже по иерархии \n ∙  Одна задача выше по иерархии"),
        "three": MessageLookupByLibrary.simpleMessage("3"),
        "thursday": MessageLookupByLibrary.simpleMessage("Чт"),
        "time": MessageLookupByLibrary.simpleMessage("Время"),
        "timeBefore": m48,
        "timeslot_13": MessageLookupByLibrary.simpleMessage("13:00 -13:30"),
        "timeslot_9": MessageLookupByLibrary.simpleMessage("9:00 - 9:30"),
        "title": MessageLookupByLibrary.simpleMessage("Название"),
        "titleAddEmail":
            MessageLookupByLibrary.simpleMessage("Добавление e-mail"),
        "titleAddPhone":
            MessageLookupByLibrary.simpleMessage("Добавление телефона"),
        "titleValidateEmail":
            MessageLookupByLibrary.simpleMessage("Подтверждение e-mail"),
        "titleValidatePhone":
            MessageLookupByLibrary.simpleMessage("Подтверждение телефона"),
        "toBacklog": MessageLookupByLibrary.simpleMessage("В бэклог"),
        "toSprint": MessageLookupByLibrary.simpleMessage("В спринт"),
        "to_finish": MessageLookupByLibrary.simpleMessage("Завершить"),
        "to_sprint": m49,
        "today": MessageLookupByLibrary.simpleMessage("Сегодня"),
        "todo": MessageLookupByLibrary.simpleMessage("Дела"),
        "tomorrow": MessageLookupByLibrary.simpleMessage("Завтра"),
        "tooltip_add_subtask":
            MessageLookupByLibrary.simpleMessage("Add subtask"),
        "tooltip_add_supertask":
            MessageLookupByLibrary.simpleMessage("Add supertask"),
        "tooltip_add_task":
            MessageLookupByLibrary.simpleMessage("Добавить задачу"),
        "tooltip_open_menu": MessageLookupByLibrary.simpleMessage("Open menu"),
        "tooltip_performer":
            MessageLookupByLibrary.simpleMessage("Add performer"),
        "touch_id_off":
            MessageLookupByLibrary.simpleMessage("Touch ID выключен"),
        "touch_id_on": MessageLookupByLibrary.simpleMessage("Touch ID включен"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Вт"),
        "two": MessageLookupByLibrary.simpleMessage(" (2)"),
        "two_weeks": MessageLookupByLibrary.simpleMessage("2 недели"),
        "typeQueryToSearchInput": MessageLookupByLibrary.simpleMessage(
            "Введите запрос в строку поиска"),
        "type_message_text":
            MessageLookupByLibrary.simpleMessage("Введите текст сообщения..."),
        "type_pin_code":
            MessageLookupByLibrary.simpleMessage("Введите код доступа"),
        "types_all": MessageLookupByLibrary.simpleMessage("Все типы"),
        "types_document_flow":
            MessageLookupByLibrary.simpleMessage("Документооборот"),
        "types_hint": MessageLookupByLibrary.simpleMessage("Тип"),
        "types_task": MessageLookupByLibrary.simpleMessage("Задача"),
        "typing": MessageLookupByLibrary.simpleMessage("набирает текст..."),
        "unauthorized":
            MessageLookupByLibrary.simpleMessage("Не авторизованные"),
        "undefined": MessageLookupByLibrary.simpleMessage("Неопределено"),
        "unknown": MessageLookupByLibrary.simpleMessage("Неизвестный"),
        "unknownError":
            MessageLookupByLibrary.simpleMessage("Необработанная ошибка"),
        "unlocked": MessageLookupByLibrary.simpleMessage("Не заблокированные"),
        "unmute": MessageLookupByLibrary.simpleMessage("Включить уведомления"),
        "unmute_sound_notifications":
            MessageLookupByLibrary.simpleMessage("Включить звук уведомлений"),
        "unrepeatable": MessageLookupByLibrary.simpleMessage("Не повторяется"),
        "upcoming": MessageLookupByLibrary.simpleMessage("Предстоящие"),
        "userBusy": MessageLookupByLibrary.simpleMessage(
            "Абонент занят и не может принять звонок"),
        "userEndCall":
            MessageLookupByLibrary.simpleMessage("Абонент завершил звонок"),
        "userLastOnline":
            MessageLookupByLibrary.simpleMessage("был(а) недавно"),
        "userNotFound":
            MessageLookupByLibrary.simpleMessage("Пользователь не найден"),
        "userPersonalInfo": MessageLookupByLibrary.simpleMessage(
            "Персональная информация отсутствует"),
        "userRejectYourCall":
            MessageLookupByLibrary.simpleMessage("Абонент отклонил ваш звонок"),
        "video": MessageLookupByLibrary.simpleMessage("видео"),
        "video1": MessageLookupByLibrary.simpleMessage("видео"),
        "video2": MessageLookupByLibrary.simpleMessage("видео"),
        "video5": MessageLookupByLibrary.simpleMessage("видео"),
        "video_call": MessageLookupByLibrary.simpleMessage("Видеозвонок"),
        "viewing": MessageLookupByLibrary.simpleMessage("Просмотр"),
        "wasOnline": MessageLookupByLibrary.simpleMessage("был(а) в сети"),
        "wednesday": MessageLookupByLibrary.simpleMessage("Ср"),
        "week": MessageLookupByLibrary.simpleMessage("Неделя"),
        "weekFirst": MessageLookupByLibrary.simpleMessage("Первая"),
        "weekFourth": MessageLookupByLibrary.simpleMessage("Четвертая"),
        "weekOfMonth": MessageLookupByLibrary.simpleMessage("Неделя месяца"),
        "weekSecond": MessageLookupByLibrary.simpleMessage("Вторая"),
        "weekThird": MessageLookupByLibrary.simpleMessage("Третья"),
        "weekly": MessageLookupByLibrary.simpleMessage("Еженедельно"),
        "weeksCount": m50,
        "with_files": MessageLookupByLibrary.simpleMessage("С файлами"),
        "without_files": MessageLookupByLibrary.simpleMessage("Без файлов"),
        "workSchedule": MessageLookupByLibrary.simpleMessage("Режим работы"),
        "wrap": MessageLookupByLibrary.simpleMessage("Свернуть"),
        "xPeopleAutoDeleteFromGroup": m51,
        "yes": MessageLookupByLibrary.simpleMessage("Да"),
        "youLoseGroupData": MessageLookupByLibrary.simpleMessage(
            "Вы потеряете доступ материалам группы"),
        "you_sure_want_reset_pin": MessageLookupByLibrary.simpleMessage(
            "Вы уверены, что хотите сбросить код доступа?")
      };
}
