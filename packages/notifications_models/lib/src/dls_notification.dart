// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:common/common.dart';

import 'dls_notification_chat.dart';
import 'dls_notification_event.dart';
import 'dls_notification_event_format.dart';
import 'dls_notification_object.dart';
import 'dls_notification_object_priority.dart';
import 'dls_notification_object_status.dart';
import 'dls_notification_sprint.dart';
import 'dls_notification_task.dart';
import 'dls_notification_todo.dart';
import 'dls_notification_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

///
/// Created by Nightwelf 07.03.2023 22:38
/// Telegram: @nightwelf
///

part 'dls_notification.freezed.dart';

part 'dls_notification.g.dart';

/// DLSNotification model
@freezed
class DLSNotification with _$DLSNotification {
  factory DLSNotification.fromStringJson(String string) =>
      DLSNotification.fromJson(jsonDecode(string) as Map<String, dynamic>);

  /// --------------------------------------------------
  /// задачи
  /// --------------------------------------------------

  /// с задачей произошло изменение СТРОКА
  /// например, когда добавили 5 файлов
  const factory DLSNotification.taskChangeAnyString({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,

    /// текст без выделения
    /// например: добавили 12 файлов к мероприятию
    required String text1,

    /// текст с выделением
    /// например: Планирование планов
    required String text2,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskAnyString;

  /// вас добавили исполнителем в задачу
  const factory DLSNotification.taskAddYouAssigner({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskAddYouAssigner;

  /// вас добавили наблюдателем в задачу
  const factory DLSNotification.taskAddYouWatcher({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskAddYouWatcher;

  /// вас добавили ответственным в задачу
  const factory DLSNotification.taskAddYouResponsible({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskAddYouResponsible;

  /// задаче добавили исполнителей
  const factory DLSNotification.taskAddAssigners({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    required List<DLSNotificationUser> users,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskAddAssigners;

  /// задаче добавили ответственных
  const factory DLSNotification.taskAddResponsible({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    required List<DLSNotificationUser> users,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskAddResponsible;

  /// изменили статус задачи
  const factory DLSNotification.taskChangeStatus({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    required DLSNotificationObjectStatus statusPrev,
    required DLSNotificationObjectStatus statusCur,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskChangeStatus;

  /// изменили конечную дату задачи
  const factory DLSNotification.taskChangeDeadline({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    required DateTime deadlinePrev,
    required DateTime deadlineCur,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskChangeDeadline;

  /// изменили приоритет задачи
  const factory DLSNotification.taskChangePriority({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    required DLSNotificationObjectPriority priorityPrev,
    required DLSNotificationObjectPriority priorityCur,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskChangePriority;

  /// в задачу добавили файлы
  const factory DLSNotification.taskAddFiles({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    required List<dynamic> files,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskAddFiles;

  /// в задаче удалили файлы
  const factory DLSNotification.taskRemoveFiles({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    required List<dynamic> files,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskRemoveFiles;

  /// задаче добавили наблюдателей
  const factory DLSNotification.taskAddWatchers({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    required List<DLSNotificationUser> users,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskAddWatchers;

  /// в задаче удилили наблюдателей
  const factory DLSNotification.taskRemoveWatchers({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    required List<DLSNotificationUser> users,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskRemoveWatchers;

  /// задаче добавили зависимости
  const factory DLSNotification.taskAddDependencies({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,

    /// todo непонятно надо ли показывать зависимость или
    /// только задачу и информировать что к ней добавили зависимость
    // required List<dynamic> dependencies,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskAddDependencies;

  /// в задаче удилили зависимости
  const factory DLSNotification.taskRemoveDependencies({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,

    /// todo непонятно надо ли показывать зависимость или
    /// только задачу и информировать что к ней добавили зависимость
    // required List<dynamic> dependencies,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskRemoveDependencies;

  /// в задачу добавили спринты
  const factory DLSNotification.taskAddSprints({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    required List<DLSNotificationSprint> sprints,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskAddSprints;

  /// в задаче удилили спринты
  const factory DLSNotification.taskRemoveSprints({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    required List<DLSNotificationSprint> sprints,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskRemoveSprints;

  /// в задачу добавили мероприятия
  const factory DLSNotification.taskAddEvents({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    required List<DLSNotificationEvent> events,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskAddEvents;

  /// в задаче удилили мероприятия
  const factory DLSNotification.taskRemoveEvents({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    required List<DLSNotificationEvent> events,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskRemoveEvents;

  /// в задачу добавили пункты в чек лист
  const factory DLSNotification.taskAddTodos({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    required List<DLSNotificationTodo> todos,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskAddTodos;

  /// в задаче удилили пункты из чек лист
  const factory DLSNotification.taskRemoveTodos({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    required List<DLSNotificationTodo> todos,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskRemoveTodos;

  /// в задачу добавили подзадачи
  const factory DLSNotification.taskAddChildTasks({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    required List<DLSNotificationTask> tasks,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskChildTasks;

  /// в задаче удилили подзадачи
  const factory DLSNotification.taskRemoveChildTasks({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    required List<DLSNotificationTask> tasks,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskRemoveTasks;

  /// вам ограничили доступ к задаче (меньше прав)
  const factory DLSNotification.taskRestrictAccess({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskRestrictAccess;

  /// вам расширили доступ к задаче (больше прав)
  const factory DLSNotification.taskExpandAccess({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskExpandAccess;

  /// задачу заблокировали
  const factory DLSNotification.taskLock({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskLock;

  /// задачу разблокировали
  const factory DLSNotification.taskUnlock({
    required DLSNotificationTask nObject,
    required DLSNotificationUser user,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskUnlock;

  /// начался групповой звонок в задаче
  const factory DLSNotification.taskCallStart({
    required DLSNotificationTask nObject,
    required DateTime startAt,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskCallStart;

  /// закончился групповой звоно в задаче
  const factory DLSNotification.taskCallEnd({
    required DLSNotificationTask nObject,

    /// продолжительность в секундах
    required int duration,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskCallEnd;

  /// напоминание о предстоящей задаче
  /// например, Завтра дедлайн задачи
  const factory DLSNotification.taskReminder({
    required DLSNotificationTask nObject,
    required String reminderText,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskReminder;

  /// напоминание о просроченой задаче
  /// например, Просрочена задача
  const factory DLSNotification.taskOverdue({
    required DLSNotificationTask nObject,
    required String overdueText,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskOverdue;

  /// информирование
  /// например: Завтра дедлайн задачи
  const factory DLSNotification.taskInformation({
    required DLSNotificationTask nObject,
    required String information,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationTaskInformation;

  /// --------------------------------------------------
  /// мероприятия
  /// --------------------------------------------------

  /// с мероприятием произошло изменение СТРОКА
  /// например, когда добавили 5 файлов
  const factory DLSNotification.eventChangeAnyString({
    /// мероприятие
    required DLSNotificationEvent nObject,
    required DLSNotificationUser user,

    /// текст без выделения
    /// например: добавили 12 файлов к мероприятию
    required String text1,

    /// текст с выделением
    /// например: Планирование планов
    required String text2,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationEventAnyString;

  /// вас пригласили на мероприятие
  const factory DLSNotification.eventInvite({
    /// мероприятие
    required DLSNotificationEvent nObject,

    /// пользователь
    required DLSNotificationUser user,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationEventInvite;

  /// удалили мероприятие
  const factory DLSNotification.eventRemove({
    /// мероприятие
    required DLSNotificationEvent nObject,

    /// пользователь
    required DLSNotificationUser user,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationEventRemove;

  /// в мероприятии изменили дату
  const factory DLSNotification.eventChangeDate({
    /// мероприятие
    required DLSNotificationEvent nObject,

    /// пользователь
    required DLSNotificationUser user,
    required DateTime datetimePrev,
    required DateTime datetimeCur,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationEventChangeDate;

  /// в мероприятии изменили время проведения
  const factory DLSNotification.eventChangeTime({
    /// мероприятие
    required DLSNotificationEvent nObject,

    /// пользователь
    required DLSNotificationUser user,
    required List<DateTime> timePrev,
    required List<DateTime> timeCur,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationEventChangeTime;

  /// в мероприятии изменили формат проведения
  const factory DLSNotification.eventChangeFormat({
    /// мероприятие
    required DLSNotificationEvent nObject,

    /// пользователь
    required DLSNotificationUser user,
    required DLSNotificationEventFormat formatPrev,
    required DLSNotificationEventFormat formatCur,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationEventChangeFormat;

  /// в мероприятии изменили место проведения
  const factory DLSNotification.eventChangePlace({
    /// мероприятие
    required DLSNotificationEvent nObject,

    /// пользователь
    required DLSNotificationUser user,
    required String placePrev,
    required String placeCur,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationEventChangePlace;

  /// в мероприятии добавили файлы
  const factory DLSNotification.eventAddFiles({
    /// мероприятие
    required DLSNotificationEvent nObject,

    /// пользователь
    required DLSNotificationUser user,
    required List<dynamic> files,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationEventAddFiles;

  /// в мероприятии удалили файлы
  const factory DLSNotification.eventRemoveFiles({
    /// мероприятие
    required DLSNotificationEvent nObject,

    /// пользователь
    required DLSNotificationUser user,
    required List<dynamic> files,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationEventRemoveFiles;

  /// вам ограничили доступ к мероприятию (меньше прав)
  const factory DLSNotification.eventRestrictAccess({
    /// мероприятие
    required DLSNotificationEvent nObject,

    /// пользователь
    required DLSNotificationUser user,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationEventRestrictAccess;

  /// вам расширили доступ к мероприятию (больше прав)
  const factory DLSNotification.eventExpandAccess({
    /// мероприятие
    required DLSNotificationEvent nObject,

    /// пользователь
    required DLSNotificationUser user,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationEventExpandAccess;

  /// началось мероприятие
  const factory DLSNotification.eventStart({
    required DLSNotificationEvent nObject,
    required List<DLSNotificationUser> users,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationEventStart;

  /// закончилось мероприятие
  const factory DLSNotification.eventEnd({
    required DLSNotificationEvent nObject,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationEventEnd;

  /// начался групповой звонок в мероприятии
  const factory DLSNotification.eventCallStart({
    required DLSNotificationEvent nObject,
    required List<DLSNotificationUser> users,
    required DateTime startAt,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationEventCallStart;

  /// закончился групповой звонок в мероприятии
  const factory DLSNotification.eventCallEnd({
    required DLSNotificationEvent nObject,
    required List<DLSNotificationUser> users,

    /// продолжительность в секундах
    required int duration,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationEventCallEnd;

  /// информирование
  /// например: Осталось 15 минут до меропирятия
  const factory DLSNotification.eventInformation({
    required DLSNotificationEvent nObject,
    required String information,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationEventInformation;

  /// --------------------------------------------------
  /// чаты
  /// --------------------------------------------------

  /// личное сообщение
  const factory DLSNotification.chatPrivateMessage({
    required DLSNotificationChat nObject,
    required DLSNotificationUser user,

    /// текст сообщения
    required String message,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationChatPrivateMessage;

  /// личное сообщение
  const factory DLSNotification.chatGroupMessage({
    required DLSNotificationChat nObject,
    required DLSNotificationUser user,

    /// текст сообщения
    required String message,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationChatGroupMessage;

  /// начался групповой звонок в чате
  const factory DLSNotification.chatCallStart({
    required DLSNotificationChat nObject,
    // required List<DLSNotificationUser> users,
    // required DateTime startAt,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationChatCallStart;

  /// закончился групповой звонок в чате
  const factory DLSNotification.chatCallEnd({
    required DLSNotificationChat nObject,
    // required List<DLSNotificationUser> users,

    /// продолжительность в секундах
    required int duration,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationChatCallEnd;

  /// на ваше сообщение ответили
  const factory DLSNotification.chatReplyMessage({
    required DLSNotificationChat nObject,
    required DLSNotificationUser user,

    /// текст сообщения на которое отвечали
    required String message,

    /// текст сообщения-ответа
    required String replyMessage,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationChatReplyMessage;

  /// вас добавили в группу
  const factory DLSNotification.chatAddYouToGroup({
    required DLSNotificationChat nObject,
    required DLSNotificationUser user,

    /// имя группы
    required String groupName,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationChatAddYouToGroup;

  /// пользователя добавили в группу
  const factory DLSNotification.chatAddGroupUsers({
    required DLSNotificationChat nObject,

    /// кто это сделал
    required DLSNotificationUser user,

    /// список пользователей с минимальным набором полей
    required List<DLSNotificationUser> users,

    /// имя группы
    required String groupName,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationChatAddGroupUsers;

  /// пользователя удалили из группы
  const factory DLSNotification.chatRemoveGroupUsers({
    required DLSNotificationChat nObject,

    /// кто это сделал
    required DLSNotificationUser user,

    /// список пользователей с минимальным набором полей
    required List<DLSNotificationUser> users,

    /// имя группы
    required String groupName,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationChatRemoveGroupUsers;

  /// пользователь добавил коммент к мероприятию
  const factory DLSNotification.chatAddEventComment({
    required DLSNotificationChat nObject,
    required DLSNotificationUser user,

    /// мероприятие
    required DLSNotificationEvent event,

    /// коммент
    required String comment,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationChatAddEventComment;

  /// пользователь удалил коммент к мероприятию
  const factory DLSNotification.chatRemoveEventComment({
    required DLSNotificationChat nObject,
    required DLSNotificationUser user,

    /// мероприятие
    required DLSNotificationEvent event,

    /// коммент
    required String comment,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationChatRemoveEventComment;

  /// пользователь добавил коммент к задаче
  const factory DLSNotification.chatAddTaskComment({
    required DLSNotificationChat nObject,
    required DLSNotificationUser user,

    /// задача
    required DLSNotificationTask task,

    /// коммент
    required String comment,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationChatAddTaskComments;

  /// пользователь удалил коммент к задаче
  const factory DLSNotification.chatRemoveTaskComment({
    required DLSNotificationChat nObject,
    required DLSNotificationUser user,

    /// задача
    required DLSNotificationTask task,

    /// коммент
    required String comment,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationChatRemoveTaskComments;

  /// изменили имя группы
  const factory DLSNotification.chatChangeGroupName({
    required DLSNotificationChat nObject,
    required DLSNotificationUser user,
    required String namePrev,
    required String nameCur,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationChatChangeGroupName;

  /// изменили аватар группы
  const factory DLSNotification.chatChangeGroupAvatar({
    required DLSNotificationChat nObject,
    required DLSNotificationUser user,
    required String avatarPrev,
    required String avatarCur,
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationChatChangeGroupAvatar;

  const DLSNotification._();

  // ignore: public_member_api_docs
  factory DLSNotification.fromJson(Map<String, dynamic> json) =>
      _$DLSNotificationFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));
}
