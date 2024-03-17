import 'package:dls_one/utils/src/quill_editor_helper.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// определение какой тип виджет для уведомления отображать
class DLSNotificationWidgetBuilder {
  static Widget build({
    required DLSNotification notification,
    Widget? actions,
    bool isShadowEnabled = true,
    ContentCallbacks? contentCallbacks,
  }) {
    return notification.when(
      /// --------------------------- задачи -----------------------------------
      taskChangeAnyString: (object, user, text1, text2, platform) =>
          DLSNotificationTaskChangeAnyStringWidget(
        object: object,
        user: user,
        text1: text1,
        text2: text2,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),
      taskAddYouAssigner: (object, user, platform) =>
          DLSNotificationTaskAddYouAssignerWidget(
        object: object,
        user: user,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),
      taskChangeStatus: (object, user, statusPrev, statusCur, platform) =>
          DLSNotificationTaskChangeStatusWidget(
        object: object,
        user: user,
        statusPrev: statusPrev,
        statusCur: statusCur,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),
      taskChangeDeadline: (object, user, deadlinePrev, deadlineCur, platform) =>
          DLSNotificationTaskChangeDeadlineWidget(
        object: object,
        user: user,
        deadlinePrev: deadlinePrev,
        deadlineCur: deadlineCur,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),
      taskChangePriority: (object, user, priorityPrev, priorityCur, platform) =>
          DLSNotificationTaskChangePriorityWidget(
        object: object,
        user: user,
        priorityPrev: priorityPrev,
        priorityCur: priorityCur,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      /// todo пока не знаю как отображать лучше файл
      taskAddFiles: (object, user, files, platform) => const SizedBox(),

      /// todo в дизайне это не отражено сделано на всякий случай (Nightwelf)
      taskRemoveFiles: (object, user, files, platform) => const SizedBox(),

      taskAddWatchers: (object, user, users, platform) =>
          DLSNotificationTaskAddWatchersWidget(
        object: object,
        user: user,
        users: users,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      taskRemoveWatchers: (object, user, users, platform) =>
          DLSNotificationTaskRemoveWatchersWidget(
        object: object,
        user: user,
        users: users,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      taskAddDependencies: (object, user, platform) =>
          DLSNotificationTaskAddDependenciesWidget(
        object: object,
        user: user,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      /// todo в дизайне этого еще нет
      taskRemoveDependencies: (object, user, platform) =>
          DLSNotificationTaskRemoveDependenciesWidget(
        object: object,
        user: user,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      taskAddSprints: (object, user, sprints, platform) =>
          DLSNotificationTaskAddSprintsWidget(
        object: object,
        user: user,
        sprints: sprints,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      /// todo в дизайне этого еще нет
      taskRemoveSprints: (object, user, sprints, platform) =>
          DLSNotificationTaskRemoveSprintsWidget(
        object: object,
        user: user,
        sprints: sprints,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      /// todo в дизайне этого еще нет

      taskAddEvents: (object, user, events, platform) =>
          DLSNotificationTaskAddEventsWidget(
        object: object,
        user: user,
        events: events,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      /// todo в дизайне этого еще нет
      taskRemoveEvents: (object, user, events, platform) =>
          DLSNotificationTaskRemoveEventsWidget(
        object: object,
        user: user,
        events: events,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),
      taskAddTodos: (object, user, todos, platform) => const SizedBox(),

      /// todo в дизайне это не отражено сделано на всякий случай (Nightwelf)
      taskRemoveTodos: (object, user, todos, platform) => const SizedBox(),
      taskAddChildTasks: (object, user, tasks, platform) => const SizedBox(),

      /// todo в дизайне это не отражено сделано на всякий случай (Nightwelf)
      taskRemoveChildTasks: (object, user, tasks, platform) => const SizedBox(),
      taskRestrictAccess: (object, user, platform) => const SizedBox(),
      taskExpandAccess: (object, user, platform) => const SizedBox(),
      taskLock: (object, user, platform) => DLSNotificationTaskLockWidget(
        object: object,
        user: user,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      /// todo в дизайне этого еще нет
      taskUnlock: (object, user, platform) => DLSNotificationTaskUnlockWidget(
        object: object,
        user: user,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),
      taskCallStart: (object, startAt, platform) =>
          DLSNotificationTaskCallStartWidget(
        object: object,
        startAt: startAt,
        contentCallbacks: contentCallbacks,
      ),
      taskCallEnd: (object, duration, platform) =>
          DLSNotificationTaskCallEndWidget(
        object: object,
        duration: Duration(seconds: duration),
        contentCallbacks: contentCallbacks,
      ),
      taskReminder: (object, reminderText, platform) => const SizedBox(),
      taskOverdue: (object, overdueText, platform) => const SizedBox(),
      taskAddYouWatcher:
          (DLSNotificationTask nObject, DLSNotificationUser user, platform) =>
              Container(),
      taskAddAssigners: (nObject, user, users, platform) => const SizedBox(),
      taskAddResponsible: (nObject, user, users, platform) => const SizedBox(),
      taskAddYouResponsible: (nObject, user, platform) => const SizedBox(),

      taskInformation: (object, information, platform) =>
          DLSNotificationTaskInformationWidget(
        object: object,
        information: information,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      /// ------------------------ мероприятия ---------------------------------
      eventChangeAnyString: (object, user, text1, text2, platform) =>
          DLSNotificationEventChangeAnyStringWidget(
        object: object,
        user: user,
        text1: text1,
        text2: text2,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      eventInformation: (object, information, platform) =>
          DLSNotificationEventInformationWidget(
        object: object,
        information: information,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      eventInvite: (object, user, platform) => DLSNotificationEventInviteWidget(
        object: object,
        user: user,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      eventRemove: (object, user, platform) => DLSNotificationEventRemoveWidget(
        object: object,
        user: user,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),
      eventChangeDate: (object, user, datetimePrev, datetimeCur, platform) =>
          DLSNotificationEventChangeDateWidget(
        object: object,
        user: user,
        datetimePrev: datetimePrev,
        datetimeCur: datetimeCur,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),
      eventChangeTime: (object, user, timePrev, timeCur, platform) =>
          DLSNotificationEventChangeTimeWidget(
        object: object,
        user: user,
        timePrev: timePrev,
        timeCur: timeCur,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),
      eventChangeFormat: (object, user, formatPrev, formatCur, platform) =>
          DLSNotificationEventChangeFormatWidget(
        object: object,
        user: user,
        formatPrev: formatPrev,
        formatCur: formatCur,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),
      eventChangePlace: (object, user, placePrev, placeCur, platform) =>
          DLSNotificationEventChangePlaceWidget(
        object: object,
        user: user,
        placePrev: placePrev,
        placeCur: placeCur,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      /// todo пока не знаю как отображать лучше файл
      eventAddFiles: (object, user, files, platform) =>
          DLSNotificationEventAddFilesWidget(
        object: object,
        user: user,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      /// todo в дизайне это не отражено сделано на всякий случай (Nightwelf)
      eventRemoveFiles: (object, user, files, platform) =>
          DLSNotificationEventRemoveFilesWidget(
        object: object,
        user: user,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      eventRestrictAccess: (object, user, platform) =>
          DLSNotificationEventRestrictAccessWidget(
        object: object,
        user: user,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      /// todo в дизайне этого еще нет
      eventExpandAccess: (object, user, platform) =>
          DLSNotificationEventExpandAccessWidget(
        object: object,
        user: user,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      eventStart: (nObject, users, platform) => DLSNotificationEventStartWidget(
        object: nObject,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),
      eventEnd: (nObject, platform) => DLSNotificationEventEndWidget(
        object: nObject,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      eventCallStart: (nObject, users, startAt, platform) =>
          DLSNotificationEventCallStartWidget(
        object: nObject,
        startAt: startAt,
        contentCallbacks: contentCallbacks,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
      ),
      eventCallEnd: (nObject, users, duration, platform) =>
          DLSNotificationEventCallEndWidget(
        object: nObject,
        duration: Duration(seconds: duration),
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      /// ------------------------ сообщения -----------------------------------
      chatPrivateMessage: (object, user, message, platform) =>
          DLSNotificationChatPrivateMessageWidget(
        object: object,
        user: user,
        message: QuillEditorHelper.buildDocument(message).toPlainText(),
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),
      chatGroupMessage: (object, user, message, platform) =>
          DLSNotificationChatGroupMessageWidget(
        object: object,
        user: user,
        message: QuillEditorHelper.buildDocument(message).toPlainText(),
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),
      chatReplyMessage: (object, user, message, replyMessage, platform) =>
          DLSNotificationChatReplyMessageWidget(
        object: object,
        user: user,
        message: QuillEditorHelper.buildDocument(message).toPlainText(),
        replyMessage:
            QuillEditorHelper.buildDocument(replyMessage).toPlainText(),
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),
      chatAddYouToGroup: (object, user, groupName, platform) =>
          DLSNotificationChatAddYouToGroupWidget(
        object: object,
        user: user,
        groupName: groupName,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      /// todo в дизайне этого еще нет
      chatAddGroupUsers: (object, user, users, groupName, platform) =>
          DLSNotificationChatAddGroupUsersWidget(
        object: object,
        user: user,
        groupName: groupName,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        users: users,
        contentCallbacks: contentCallbacks,
      ),

      /// todo в дизайне этого еще нет
      chatRemoveGroupUsers: (object, user, users, groupName, platform) =>
          DLSNotificationChatRemoveGroupUsersWidget(
        object: object,
        user: user,
        groupName: groupName,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        users: users,
        contentCallbacks: contentCallbacks,
      ),

      chatAddEventComment: (object, user, event, comment, platform) =>
          DLSNotificationChatAddEventCommentWidget(
        object: object,
        user: user,
        event: event,
        comment: comment,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      /// todo в дизайне этого еще нет
      chatRemoveEventComment: (object, user, event, comment, platform) =>
          DLSNotificationChatRemoveEventCommentWidget(
        object: object,
        user: user,
        event: event,
        comment: comment,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      chatAddTaskComment: (object, user, task, comment, platform) =>
          DLSNotificationChatAddTaskCommentWidget(
        object: object,
        user: user,
        task: task,
        comment: comment,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      /// todo в дизайне этого еще нет
      chatRemoveTaskComment: (object, user, task, comment, platform) =>
          DLSNotificationChatRemoveTaskCommentWidget(
        object: object,
        user: user,
        task: task,
        comment: comment,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),

      chatChangeGroupName: (object, user, namePrev, nameCur, platform) =>
          DLSNotificationChatChangeGroupNameWidget(
        object: object,
        user: user,
        namePrev: namePrev,
        nameCur: nameCur,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),
      chatChangeGroupAvatar: (object, user, avatarPrev, avatarCur, platform) =>
          DLSNotificationChatChangeGroupAvatarWidget(
        object: object,
        user: user,
        avatarPrev: avatarPrev,
        avatarCur: avatarCur,
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),
      chatCallStart: (nObject, platform) => DLSNotificationChatCallStartWidget(
        object: nObject,
        isShadowEnabled: isShadowEnabled,
        contentCallbacks: contentCallbacks,
        actions: actions,
      ),
      chatCallEnd: (nObject, duration, platform) =>
          DLSNotificationChatCallEndWidget(
        object: nObject,
        duration: Duration(seconds: duration),
        isShadowEnabled: isShadowEnabled,
        actions: actions,
        contentCallbacks: contentCallbacks,
      ),
    );
  }
}
