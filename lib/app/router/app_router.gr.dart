// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthRootRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthRootPage(),
      );
    },
    AuthSetupLockerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthSetupLockerPage(),
      );
    },
    AuthLoginRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<AuthLoginRouteArgs>(
          orElse: () => AuthLoginRouteArgs(
                initialEmail: queryParams.optString('initialEmail'),
                initialName: queryParams.optString('initialName'),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthLoginPage(
          initialEmail: args.initialEmail,
          initialName: args.initialName,
          key: args.key,
        ),
      );
    },
    LockerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LockerPage(),
      );
    },
    RegistrationLoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrationLoginPage(),
      );
    },
    RegistrationPersonalDataRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrationPersonalDataPage(),
      );
    },
    RegistrationNewPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrationNewPasswordPage(),
      );
    },
    RegistrationRootRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrationRootPage(),
      );
    },
    RegistrationSMSRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrationSMSPage(),
      );
    },
    ResetPasswordUpdatePasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ResetPasswordUpdatePasswordPage(),
      );
    },
    ResetPasswordRootRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ResetPasswordRootPage(),
      );
    },
    ResetPasswordSMSRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ResetPasswordSMSPage(),
      );
    },
    MobileChatChooseForwardRoute.name: (routeData) {
      return AutoRoutePage<Room>(
        routeData: routeData,
        child: WrappedRoute(child: const MobileChatChooseForwardPage()),
      );
    },
    WebChatChooseForwardDialogRoute.name: (routeData) {
      return AutoRoutePage<Room>(
        routeData: routeData,
        child: WrappedRoute(child: const WebChatChooseForwardDialogPage()),
      );
    },
    DepartmentRoute.name: (routeData) {
      final args = routeData.argsAs<DepartmentRouteArgs>();
      return AutoRoutePage<Department>(
        routeData: routeData,
        child: DepartmentPage(
          department: args.department,
          key: args.key,
        ),
      );
    },
    DepartmentRootRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DepartmentRootRouteArgs>(
          orElse: () =>
              DepartmentRootRouteArgs(departmentId: pathParams.getInt('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DepartmentRootPage(
          departmentId: args.departmentId,
          key: args.key,
        ),
      );
    },
    DepartmentPositionRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DepartmentPositionRouteArgs>(
          orElse: () =>
              DepartmentPositionRouteArgs(positionId: pathParams.optInt('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DepartmentPositionPage(
          positionId: args.positionId,
          key: args.key,
        ),
      );
    },
    CompanyStructureRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const CompanyStructurePage()),
      );
    },
    ChatsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatsPage(),
      );
    },
    ChatsRootRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatsRootPage(),
      );
    },
    ChatsSearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatsSearchPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    HomeRootRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeRootPage(),
      );
    },
    GalleryRoute.name: (routeData) {
      final args = routeData.argsAs<GalleryRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: GalleryPage(
          initImageIndex: args.initImageIndex,
          urls: args.urls,
          names: args.names,
          ids: args.ids,
          roomId: args.roomId,
          key: args.key,
        ),
      );
    },
    VideoPlayerRoute.name: (routeData) {
      final args = routeData.argsAs<VideoPlayerRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: VideoPlayerPage(
          name: args.name,
          attachment: args.attachment,
          key: args.key,
        ),
      );
    },
    MobileSelectUsersRoute.name: (routeData) {
      final args = routeData.argsAs<MobileSelectUsersRouteArgs>(
          orElse: () => const MobileSelectUsersRouteArgs());
      return AutoRoutePage<List<DLSUser>>(
        routeData: routeData,
        child: WrappedRoute(
            child: MobileSelectUsersPage(
          key: args.key,
          users: args.users,
          title: args.title,
          actionTitle: args.actionTitle,
        )),
      );
    },
    SettingsNotificationsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsNotificationsPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    SettingsPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPasswordPage(),
      );
    },
    SettingsPinRoute.name: (routeData) {
      final args = routeData.argsAs<SettingsPinRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SettingsPinPage(
          pinHash: args.pinHash,
          key: args.key,
        ),
      );
    },
    SettingsProfileAddContactRoute.name: (routeData) {
      final args = routeData.argsAs<SettingsProfileAddContactRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SettingsProfileAddContactPage(
          info: args.info,
          key: args.key,
        ),
      );
    },
    SettingsProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsProfilePage(),
      );
    },
    SettingsProfileRootRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsProfileRootPage(),
      );
    },
    SettingsRootRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsRootPage(),
      );
    },
    ChatFilesAudiosRoute.name: (routeData) {
      final args = routeData.argsAs<ChatFilesAudiosRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChatFilesAudiosPage(
          key: args.key,
          audios: args.audios,
          title: args.title,
        ),
      );
    },
    ChatFilesDocsRoute.name: (routeData) {
      final args = routeData.argsAs<ChatFilesDocsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChatFilesDocsPage(
          key: args.key,
          docs: args.docs,
          title: args.title,
        ),
      );
    },
    ChatFilesImagesRoute.name: (routeData) {
      final args = routeData.argsAs<ChatFilesImagesRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChatFilesImagesPage(
          key: args.key,
          images: args.images,
          title: args.title,
        ),
      );
    },
    ChatFilesVideosRoute.name: (routeData) {
      final args = routeData.argsAs<ChatFilesVideosRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChatFilesVideosPage(
          key: args.key,
          videos: args.videos,
          title: args.title,
        ),
      );
    },
    ChatInformationRootRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatInformationRootPage(),
      );
    },
    AdvancedEditorRoute.name: (routeData) {
      final args = routeData.argsAs<AdvancedEditorRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AdvancedEditorPage(
          chatId: args.chatId,
          onSendMessage: args.onSendMessage,
          message: args.message,
          files: args.files,
          markedEditMessage: args.markedEditMessage,
          key: args.key,
        ),
      );
    },
    WebRecorderDialogRoute.name: (routeData) {
      final args = routeData.argsAs<WebRecorderDialogRouteArgs>();
      return AutoRoutePage<DLSFile>(
        routeData: routeData,
        child: WrappedRoute(
            child: WebRecorderDialogPage(
          voiceOnly: args.voiceOnly,
          canSetupInputDevices: args.canSetupInputDevices,
          key: args.key,
        )),
      );
    },
    ChatLinksRoute.name: (routeData) {
      final args = routeData.argsAs<ChatLinksRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChatLinksPage(
          key: args.key,
          links: args.links,
          title: args.title,
        ),
      );
    },
    SimpleImagePreviewRoute.name: (routeData) {
      final args = routeData.argsAs<SimpleImagePreviewRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SimpleImagePreviewPage(
          image: args.image,
          key: args.key,
        ),
      );
    },
    SimpleImageUrlViewerRoute.name: (routeData) {
      final args = routeData.argsAs<SimpleImageUrlViewerRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SimpleImageUrlViewerPage(
          url: args.url,
          key: args.key,
        ),
      );
    },
    ForwardMessageRoute.name: (routeData) {
      final args = routeData.argsAs<ForwardMessageRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ForwardMessagePage(
          roomId: args.roomId,
          eventId: args.eventId,
          dependentsIds: args.dependentsIds,
          key: args.key,
        ),
      );
    },
    MobileTextRoomWrapperRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MobileTextRoomWrapperRouteArgs>(
          orElse: () => MobileTextRoomWrapperRouteArgs(
                chatId: pathParams.getString('chatId'),
                server: pathParams.getString('server'),
                threadMessageId: pathParams.optString('threadMessageId'),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MobileTextRoomWrapperPage(
          chatId: args.chatId,
          server: args.server,
          forwardMessages: args.forwardMessages,
          threadMessageId: args.threadMessageId,
          key: args.key,
        ),
      );
    },
    UnselectedRoomRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UnselectedRoomPage(),
      );
    },
    WebTextRoomWrapperRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<WebTextRoomWrapperRouteArgs>(
          orElse: () => WebTextRoomWrapperRouteArgs(
                chatId: pathParams.getString('chatId'),
                threadMessageId: pathParams.optString('threadMessageId'),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WebTextRoomWrapperPage(
          chatId: args.chatId,
          onOpenCommentsPanel: args.onOpenCommentsPanel,
          onOpenInfoPanel: args.onOpenInfoPanel,
          threadMessageId: args.threadMessageId,
          onAddUsersToGroupChat: args.onAddUsersToGroupChat,
          onGroupChatRename: args.onGroupChatRename,
          onGroupChatExit: args.onGroupChatExit,
          onGroupChatDelete: args.onGroupChatDelete,
          onPersonalChatExit: args.onPersonalChatExit,
          forwardMessages: args.forwardMessages,
          chatType: args.chatType,
          key: args.key,
        ),
      );
    },
    TermlessTodoRoute.name: (routeData) {
      final args = routeData.argsAs<TermlessTodoRouteArgs>(
          orElse: () => const TermlessTodoRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TermlessTodoPage(
          key: args.key,
          isEditingMode: args.isEditingMode,
          message: args.message,
        ),
      );
    },
    TodoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const TodoPage()),
      );
    },
    UpcomingTodoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UpcomingTodoPage(),
      );
    },
    UserInformationRoute.name: (routeData) {
      final args = routeData.argsAs<UserInformationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: UserInformationPage(
          key: args.key,
          userId: args.userId,
          roomId: args.roomId,
        ),
      );
    },
    CalendarRootRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const CalendarRootPage()),
      );
    },
    DayCalendarRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DayCalendarRouteArgs>(
          orElse: () =>
              DayCalendarRouteArgs(dayId: pathParams.getString('dayId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DayCalendarPage(dayId: args.dayId),
      );
    },
    MonthCalendarRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MonthCalendarRouteArgs>(
          orElse: () =>
              MonthCalendarRouteArgs(dayId: pathParams.getString('dayId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MonthCalendarPage(dayId: args.dayId),
      );
    },
    WeekCalendarRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<WeekCalendarRouteArgs>(
          orElse: () =>
              WeekCalendarRouteArgs(dayId: pathParams.getString('dayId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WeekCalendarPage(dayId: args.dayId),
      );
    },
    GroupChatInformationWrapperRoute.name: (routeData) {
      final args = routeData.argsAs<GroupChatInformationWrapperRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: GroupChatInformationWrapperPage(
          chatId: args.chatId,
          args: args.args,
          key: args.key,
        ),
      );
    },
    PersonalChatInformationWrapperRoute.name: (routeData) {
      final args = routeData.argsAs<PersonalChatInformationWrapperRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PersonalChatInformationWrapperPage(
          chatId: args.chatId,
          onTapDelete: args.onTapDelete,
          key: args.key,
        ),
      );
    },
    MobileChatInformationRoute.name: (routeData) {
      final args = routeData.argsAs<MobileChatInformationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MobileChatInformationPage(
          chatId: args.chatId,
          key: args.key,
        ),
      );
    },
    GroupRootRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GroupRootPage(),
      );
    },
    MobileRenameGroupChatRoute.name: (routeData) {
      final args = routeData.argsAs<MobileRenameGroupChatRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MobileRenameGroupChatPage(
          init: args.init,
          key: args.key,
        ),
      );
    },
    MobileSelectGroupAdminRoute.name: (routeData) {
      final args = routeData.argsAs<MobileSelectGroupAdminRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MobileSelectGroupAdminPage(
          init: args.init,
          key: args.key,
        ),
      );
    },
    MobileSelectGroupUsersRoute.name: (routeData) {
      final args = routeData.argsAs<MobileSelectGroupUsersRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MobileSelectGroupUsersPage(
          init: args.init,
          key: args.key,
        ),
      );
    },
    MobileSetGroupNameRoute.name: (routeData) {
      final args = routeData.argsAs<MobileSetGroupNameRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MobileSetGroupNamePage(
          key: args.key,
          init: args.init,
        ),
      );
    },
    MobileUpdateGroupUsersRoute.name: (routeData) {
      final args = routeData.argsAs<MobileUpdateGroupUsersRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MobileUpdateGroupUsersPage(
          init: args.init,
          key: args.key,
        ),
      );
    },
    ChatBookmarkRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatBookmarkPage(),
      );
    },
    ChatCommentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatCommentPage(),
      );
    },
    ChatGroupRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ChatGroupRouteArgs>(
          orElse: () => ChatGroupRouteArgs(
                chatId: pathParams.getString('chatId'),
                server: pathParams.getString('server'),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChatGroupPage(
          chatId: args.chatId,
          server: args.server,
          forwardMessages: args.forwardMessages,
          key: args.key,
        ),
      );
    },
    WebChatPersonalRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<WebChatPersonalRouteArgs>(
          orElse: () => WebChatPersonalRouteArgs(
                chatId: pathParams.getString('chatId'),
                server: pathParams.getString('server'),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WebChatPersonalPage(
          chatId: args.chatId,
          server: args.server,
          forwardMessages: args.forwardMessages,
          key: args.key,
        ),
      );
    },
    WebChatPersonalWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WebChatPersonalWrapperPage(),
      );
    },
    CreateEventRoute.name: (routeData) {
      final args = routeData.argsAs<CreateEventRouteArgs>(
          orElse: () => const CreateEventRouteArgs());
      return AutoRoutePage<TaskEventModel>(
        routeData: routeData,
        child: WrappedRoute(
            child: CreateEventPage(
          popOnSuccess: args.popOnSuccess,
          title: args.title,
          event: args.event,
          task: args.task,
          startAt: args.startAt,
          endAt: args.endAt,
          sprint: args.sprint,
          onDelete: args.onDelete,
          key: args.key,
        )),
      );
    },
    NewSprintRoute.name: (routeData) {
      final args = routeData.argsAs<NewSprintRouteArgs>(
          orElse: () => const NewSprintRouteArgs());
      return AutoRoutePage<DlsSprintModel>(
        routeData: routeData,
        child: WrappedRoute(
            child: NewSprintPage(
          key: args.key,
          popOnSuccess: args.popOnSuccess,
          parentTitle: args.parentTitle,
          backlog: args.backlog,
          sprint: args.sprint,
          onSprintSaved: args.onSprintSaved,
          superTask: args.superTask,
        )),
      );
    },
    NewTaskSprintRoute.name: (routeData) {
      final args = routeData.argsAs<NewTaskSprintRouteArgs>(
          orElse: () => const NewTaskSprintRouteArgs());
      return AutoRoutePage<DlsTasks>(
        routeData: routeData,
        child: WrappedRoute(
            child: NewTaskSprintPage(
          key: args.key,
          status: args.status,
          task: args.task,
          parentTask: args.parentTask,
          popOnSuccess: args.popOnSuccess,
          onTaskSaved: args.onTaskSaved,
          title: args.title,
        )),
      );
    },
    HomeTabsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeTabsPage(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    NotificationsHistoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NotificationsHistoryPage(),
      );
    },
    PickTaskDialogRoute.name: (routeData) {
      return AutoRoutePage<DlsTasks>(
        routeData: routeData,
        child: WrappedRoute(child: const PickTaskDialogPage()),
      );
    },
    CallRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CallPage(),
      );
    },
    IncomingCallRoute.name: (routeData) {
      final args = routeData.argsAs<IncomingCallRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: IncomingCallPage(
          activeCall: args.activeCall,
          key: args.key,
        ),
      );
    },
    MobileTasksGeneralRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MobileTasksGeneralPage(),
      );
    },
    MobileTaskFiltersRoute.name: (routeData) {
      final args = routeData.argsAs<MobileTaskFiltersRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MobileTaskFiltersPage(
          selectedTabBar: args.selectedTabBar,
          key: args.key,
        ),
      );
    },
    TasksGeneralRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TasksGeneralPage(),
      );
    },
    TasksRootRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const TasksRootPage()),
      );
    },
  };
}

/// generated route for
/// [AuthRootPage]
class AuthRootRoute extends PageRouteInfo<void> {
  const AuthRootRoute({List<PageRouteInfo>? children})
      : super(
          AuthRootRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRootRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AuthSetupLockerPage]
class AuthSetupLockerRoute extends PageRouteInfo<void> {
  const AuthSetupLockerRoute({List<PageRouteInfo>? children})
      : super(
          AuthSetupLockerRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthSetupLockerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AuthLoginPage]
class AuthLoginRoute extends PageRouteInfo<AuthLoginRouteArgs> {
  AuthLoginRoute({
    String? initialEmail,
    String? initialName,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AuthLoginRoute.name,
          args: AuthLoginRouteArgs(
            initialEmail: initialEmail,
            initialName: initialName,
            key: key,
          ),
          rawQueryParams: {
            'initialEmail': initialEmail,
            'initialName': initialName,
          },
          initialChildren: children,
        );

  static const String name = 'AuthLoginRoute';

  static const PageInfo<AuthLoginRouteArgs> page =
      PageInfo<AuthLoginRouteArgs>(name);
}

class AuthLoginRouteArgs {
  const AuthLoginRouteArgs({
    this.initialEmail,
    this.initialName,
    this.key,
  });

  final String? initialEmail;

  final String? initialName;

  final Key? key;

  @override
  String toString() {
    return 'AuthLoginRouteArgs{initialEmail: $initialEmail, initialName: $initialName, key: $key}';
  }
}

/// generated route for
/// [LockerPage]
class LockerRoute extends PageRouteInfo<void> {
  const LockerRoute({List<PageRouteInfo>? children})
      : super(
          LockerRoute.name,
          initialChildren: children,
        );

  static const String name = 'LockerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegistrationLoginPage]
class RegistrationLoginRoute extends PageRouteInfo<void> {
  const RegistrationLoginRoute({List<PageRouteInfo>? children})
      : super(
          RegistrationLoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationLoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegistrationPersonalDataPage]
class RegistrationPersonalDataRoute extends PageRouteInfo<void> {
  const RegistrationPersonalDataRoute({List<PageRouteInfo>? children})
      : super(
          RegistrationPersonalDataRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationPersonalDataRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegistrationNewPasswordPage]
class RegistrationNewPasswordRoute extends PageRouteInfo<void> {
  const RegistrationNewPasswordRoute({List<PageRouteInfo>? children})
      : super(
          RegistrationNewPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationNewPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegistrationRootPage]
class RegistrationRootRoute extends PageRouteInfo<void> {
  const RegistrationRootRoute({List<PageRouteInfo>? children})
      : super(
          RegistrationRootRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRootRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegistrationSMSPage]
class RegistrationSMSRoute extends PageRouteInfo<void> {
  const RegistrationSMSRoute({List<PageRouteInfo>? children})
      : super(
          RegistrationSMSRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationSMSRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ResetPasswordUpdatePasswordPage]
class ResetPasswordUpdatePasswordRoute extends PageRouteInfo<void> {
  const ResetPasswordUpdatePasswordRoute({List<PageRouteInfo>? children})
      : super(
          ResetPasswordUpdatePasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordUpdatePasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ResetPasswordRootPage]
class ResetPasswordRootRoute extends PageRouteInfo<void> {
  const ResetPasswordRootRoute({List<PageRouteInfo>? children})
      : super(
          ResetPasswordRootRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRootRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ResetPasswordSMSPage]
class ResetPasswordSMSRoute extends PageRouteInfo<void> {
  const ResetPasswordSMSRoute({List<PageRouteInfo>? children})
      : super(
          ResetPasswordSMSRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordSMSRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MobileChatChooseForwardPage]
class MobileChatChooseForwardRoute extends PageRouteInfo<void> {
  const MobileChatChooseForwardRoute({List<PageRouteInfo>? children})
      : super(
          MobileChatChooseForwardRoute.name,
          initialChildren: children,
        );

  static const String name = 'MobileChatChooseForwardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WebChatChooseForwardDialogPage]
class WebChatChooseForwardDialogRoute extends PageRouteInfo<void> {
  const WebChatChooseForwardDialogRoute({List<PageRouteInfo>? children})
      : super(
          WebChatChooseForwardDialogRoute.name,
          initialChildren: children,
        );

  static const String name = 'WebChatChooseForwardDialogRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DepartmentPage]
class DepartmentRoute extends PageRouteInfo<DepartmentRouteArgs> {
  DepartmentRoute({
    required Department department,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          DepartmentRoute.name,
          args: DepartmentRouteArgs(
            department: department,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DepartmentRoute';

  static const PageInfo<DepartmentRouteArgs> page =
      PageInfo<DepartmentRouteArgs>(name);
}

class DepartmentRouteArgs {
  const DepartmentRouteArgs({
    required this.department,
    this.key,
  });

  final Department department;

  final Key? key;

  @override
  String toString() {
    return 'DepartmentRouteArgs{department: $department, key: $key}';
  }
}

/// generated route for
/// [DepartmentRootPage]
class DepartmentRootRoute extends PageRouteInfo<DepartmentRootRouteArgs> {
  DepartmentRootRoute({
    required int departmentId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          DepartmentRootRoute.name,
          args: DepartmentRootRouteArgs(
            departmentId: departmentId,
            key: key,
          ),
          rawPathParams: {'id': departmentId},
          initialChildren: children,
        );

  static const String name = 'DepartmentRootRoute';

  static const PageInfo<DepartmentRootRouteArgs> page =
      PageInfo<DepartmentRootRouteArgs>(name);
}

class DepartmentRootRouteArgs {
  const DepartmentRootRouteArgs({
    required this.departmentId,
    this.key,
  });

  final int departmentId;

  final Key? key;

  @override
  String toString() {
    return 'DepartmentRootRouteArgs{departmentId: $departmentId, key: $key}';
  }
}

/// generated route for
/// [DepartmentPositionPage]
class DepartmentPositionRoute
    extends PageRouteInfo<DepartmentPositionRouteArgs> {
  DepartmentPositionRoute({
    int? positionId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          DepartmentPositionRoute.name,
          args: DepartmentPositionRouteArgs(
            positionId: positionId,
            key: key,
          ),
          rawPathParams: {'id': positionId},
          initialChildren: children,
        );

  static const String name = 'DepartmentPositionRoute';

  static const PageInfo<DepartmentPositionRouteArgs> page =
      PageInfo<DepartmentPositionRouteArgs>(name);
}

class DepartmentPositionRouteArgs {
  const DepartmentPositionRouteArgs({
    this.positionId,
    this.key,
  });

  final int? positionId;

  final Key? key;

  @override
  String toString() {
    return 'DepartmentPositionRouteArgs{positionId: $positionId, key: $key}';
  }
}

/// generated route for
/// [CompanyStructurePage]
class CompanyStructureRoute extends PageRouteInfo<void> {
  const CompanyStructureRoute({List<PageRouteInfo>? children})
      : super(
          CompanyStructureRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompanyStructureRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatsPage]
class ChatsRoute extends PageRouteInfo<void> {
  const ChatsRoute({List<PageRouteInfo>? children})
      : super(
          ChatsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatsRootPage]
class ChatsRootRoute extends PageRouteInfo<void> {
  const ChatsRootRoute({List<PageRouteInfo>? children})
      : super(
          ChatsRootRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatsRootRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatsSearchPage]
class ChatsSearchRoute extends PageRouteInfo<void> {
  const ChatsSearchRoute({List<PageRouteInfo>? children})
      : super(
          ChatsSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatsSearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeRootPage]
class HomeRootRoute extends PageRouteInfo<void> {
  const HomeRootRoute({List<PageRouteInfo>? children})
      : super(
          HomeRootRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRootRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GalleryPage]
class GalleryRoute extends PageRouteInfo<GalleryRouteArgs> {
  GalleryRoute({
    required int initImageIndex,
    required List<String> urls,
    required List<String> names,
    required List<String> ids,
    required String roomId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          GalleryRoute.name,
          args: GalleryRouteArgs(
            initImageIndex: initImageIndex,
            urls: urls,
            names: names,
            ids: ids,
            roomId: roomId,
            key: key,
          ),
          rawPathParams: {'initImageIndex': initImageIndex},
          initialChildren: children,
        );

  static const String name = 'GalleryRoute';

  static const PageInfo<GalleryRouteArgs> page =
      PageInfo<GalleryRouteArgs>(name);
}

class GalleryRouteArgs {
  const GalleryRouteArgs({
    required this.initImageIndex,
    required this.urls,
    required this.names,
    required this.ids,
    required this.roomId,
    this.key,
  });

  final int initImageIndex;

  final List<String> urls;

  final List<String> names;

  final List<String> ids;

  final String roomId;

  final Key? key;

  @override
  String toString() {
    return 'GalleryRouteArgs{initImageIndex: $initImageIndex, urls: $urls, names: $names, ids: $ids, roomId: $roomId, key: $key}';
  }
}

/// generated route for
/// [VideoPlayerPage]
class VideoPlayerRoute extends PageRouteInfo<VideoPlayerRouteArgs> {
  VideoPlayerRoute({
    required String name,
    required DlsChatMessageAttachment? attachment,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          VideoPlayerRoute.name,
          args: VideoPlayerRouteArgs(
            name: name,
            attachment: attachment,
            key: key,
          ),
          rawPathParams: {'name': name},
          initialChildren: children,
        );

  static const String name = 'VideoPlayerRoute';

  static const PageInfo<VideoPlayerRouteArgs> page =
      PageInfo<VideoPlayerRouteArgs>(name);
}

class VideoPlayerRouteArgs {
  const VideoPlayerRouteArgs({
    required this.name,
    required this.attachment,
    this.key,
  });

  final String name;

  final DlsChatMessageAttachment? attachment;

  final Key? key;

  @override
  String toString() {
    return 'VideoPlayerRouteArgs{name: $name, attachment: $attachment, key: $key}';
  }
}

/// generated route for
/// [MobileSelectUsersPage]
class MobileSelectUsersRoute extends PageRouteInfo<MobileSelectUsersRouteArgs> {
  MobileSelectUsersRoute({
    Key? key,
    List<DLSUser> users = const [],
    String? title,
    String? actionTitle,
    List<PageRouteInfo>? children,
  }) : super(
          MobileSelectUsersRoute.name,
          args: MobileSelectUsersRouteArgs(
            key: key,
            users: users,
            title: title,
            actionTitle: actionTitle,
          ),
          initialChildren: children,
        );

  static const String name = 'MobileSelectUsersRoute';

  static const PageInfo<MobileSelectUsersRouteArgs> page =
      PageInfo<MobileSelectUsersRouteArgs>(name);
}

class MobileSelectUsersRouteArgs {
  const MobileSelectUsersRouteArgs({
    this.key,
    this.users = const [],
    this.title,
    this.actionTitle,
  });

  final Key? key;

  final List<DLSUser> users;

  final String? title;

  final String? actionTitle;

  @override
  String toString() {
    return 'MobileSelectUsersRouteArgs{key: $key, users: $users, title: $title, actionTitle: $actionTitle}';
  }
}

/// generated route for
/// [SettingsNotificationsPage]
class SettingsNotificationsRoute extends PageRouteInfo<void> {
  const SettingsNotificationsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsNotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsNotificationsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsPasswordPage]
class SettingsPasswordRoute extends PageRouteInfo<void> {
  const SettingsPasswordRoute({List<PageRouteInfo>? children})
      : super(
          SettingsPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsPinPage]
class SettingsPinRoute extends PageRouteInfo<SettingsPinRouteArgs> {
  SettingsPinRoute({
    required String pinHash,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SettingsPinRoute.name,
          args: SettingsPinRouteArgs(
            pinHash: pinHash,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SettingsPinRoute';

  static const PageInfo<SettingsPinRouteArgs> page =
      PageInfo<SettingsPinRouteArgs>(name);
}

class SettingsPinRouteArgs {
  const SettingsPinRouteArgs({
    required this.pinHash,
    this.key,
  });

  final String pinHash;

  final Key? key;

  @override
  String toString() {
    return 'SettingsPinRouteArgs{pinHash: $pinHash, key: $key}';
  }
}

/// generated route for
/// [SettingsProfileAddContactPage]
class SettingsProfileAddContactRoute
    extends PageRouteInfo<SettingsProfileAddContactRouteArgs> {
  SettingsProfileAddContactRoute({
    required SettingsProfileAddContactPageArgs info,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SettingsProfileAddContactRoute.name,
          args: SettingsProfileAddContactRouteArgs(
            info: info,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SettingsProfileAddContactRoute';

  static const PageInfo<SettingsProfileAddContactRouteArgs> page =
      PageInfo<SettingsProfileAddContactRouteArgs>(name);
}

class SettingsProfileAddContactRouteArgs {
  const SettingsProfileAddContactRouteArgs({
    required this.info,
    this.key,
  });

  final SettingsProfileAddContactPageArgs info;

  final Key? key;

  @override
  String toString() {
    return 'SettingsProfileAddContactRouteArgs{info: $info, key: $key}';
  }
}

/// generated route for
/// [SettingsProfilePage]
class SettingsProfileRoute extends PageRouteInfo<void> {
  const SettingsProfileRoute({List<PageRouteInfo>? children})
      : super(
          SettingsProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsProfileRootPage]
class SettingsProfileRootRoute extends PageRouteInfo<void> {
  const SettingsProfileRootRoute({List<PageRouteInfo>? children})
      : super(
          SettingsProfileRootRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsProfileRootRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsRootPage]
class SettingsRootRoute extends PageRouteInfo<void> {
  const SettingsRootRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRootRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRootRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatFilesAudiosPage]
class ChatFilesAudiosRoute extends PageRouteInfo<ChatFilesAudiosRouteArgs> {
  ChatFilesAudiosRoute({
    Key? key,
    required List<DlsChatMessageAttachment> audios,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          ChatFilesAudiosRoute.name,
          args: ChatFilesAudiosRouteArgs(
            key: key,
            audios: audios,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatFilesAudiosRoute';

  static const PageInfo<ChatFilesAudiosRouteArgs> page =
      PageInfo<ChatFilesAudiosRouteArgs>(name);
}

class ChatFilesAudiosRouteArgs {
  const ChatFilesAudiosRouteArgs({
    this.key,
    required this.audios,
    required this.title,
  });

  final Key? key;

  final List<DlsChatMessageAttachment> audios;

  final String title;

  @override
  String toString() {
    return 'ChatFilesAudiosRouteArgs{key: $key, audios: $audios, title: $title}';
  }
}

/// generated route for
/// [ChatFilesDocsPage]
class ChatFilesDocsRoute extends PageRouteInfo<ChatFilesDocsRouteArgs> {
  ChatFilesDocsRoute({
    Key? key,
    required List<DlsChatMessageAttachment> docs,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          ChatFilesDocsRoute.name,
          args: ChatFilesDocsRouteArgs(
            key: key,
            docs: docs,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatFilesDocsRoute';

  static const PageInfo<ChatFilesDocsRouteArgs> page =
      PageInfo<ChatFilesDocsRouteArgs>(name);
}

class ChatFilesDocsRouteArgs {
  const ChatFilesDocsRouteArgs({
    this.key,
    required this.docs,
    required this.title,
  });

  final Key? key;

  final List<DlsChatMessageAttachment> docs;

  final String title;

  @override
  String toString() {
    return 'ChatFilesDocsRouteArgs{key: $key, docs: $docs, title: $title}';
  }
}

/// generated route for
/// [ChatFilesImagesPage]
class ChatFilesImagesRoute extends PageRouteInfo<ChatFilesImagesRouteArgs> {
  ChatFilesImagesRoute({
    Key? key,
    required List<DlsChatMessageAttachment> images,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          ChatFilesImagesRoute.name,
          args: ChatFilesImagesRouteArgs(
            key: key,
            images: images,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatFilesImagesRoute';

  static const PageInfo<ChatFilesImagesRouteArgs> page =
      PageInfo<ChatFilesImagesRouteArgs>(name);
}

class ChatFilesImagesRouteArgs {
  const ChatFilesImagesRouteArgs({
    this.key,
    required this.images,
    required this.title,
  });

  final Key? key;

  final List<DlsChatMessageAttachment> images;

  final String title;

  @override
  String toString() {
    return 'ChatFilesImagesRouteArgs{key: $key, images: $images, title: $title}';
  }
}

/// generated route for
/// [ChatFilesVideosPage]
class ChatFilesVideosRoute extends PageRouteInfo<ChatFilesVideosRouteArgs> {
  ChatFilesVideosRoute({
    Key? key,
    required List<DlsChatMessageAttachment> videos,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          ChatFilesVideosRoute.name,
          args: ChatFilesVideosRouteArgs(
            key: key,
            videos: videos,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatFilesVideosRoute';

  static const PageInfo<ChatFilesVideosRouteArgs> page =
      PageInfo<ChatFilesVideosRouteArgs>(name);
}

class ChatFilesVideosRouteArgs {
  const ChatFilesVideosRouteArgs({
    this.key,
    required this.videos,
    required this.title,
  });

  final Key? key;

  final List<DlsChatMessageAttachment> videos;

  final String title;

  @override
  String toString() {
    return 'ChatFilesVideosRouteArgs{key: $key, videos: $videos, title: $title}';
  }
}

/// generated route for
/// [ChatInformationRootPage]
class ChatInformationRootRoute extends PageRouteInfo<void> {
  const ChatInformationRootRoute({List<PageRouteInfo>? children})
      : super(
          ChatInformationRootRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatInformationRootRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AdvancedEditorPage]
class AdvancedEditorRoute extends PageRouteInfo<AdvancedEditorRouteArgs> {
  AdvancedEditorRoute({
    required String chatId,
    required void Function(SendChatMessage) onSendMessage,
    required Document message,
    required List<DLSFile> files,
    DlsChatMessage? markedEditMessage,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AdvancedEditorRoute.name,
          args: AdvancedEditorRouteArgs(
            chatId: chatId,
            onSendMessage: onSendMessage,
            message: message,
            files: files,
            markedEditMessage: markedEditMessage,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'AdvancedEditorRoute';

  static const PageInfo<AdvancedEditorRouteArgs> page =
      PageInfo<AdvancedEditorRouteArgs>(name);
}

class AdvancedEditorRouteArgs {
  const AdvancedEditorRouteArgs({
    required this.chatId,
    required this.onSendMessage,
    required this.message,
    required this.files,
    this.markedEditMessage,
    this.key,
  });

  final String chatId;

  final void Function(SendChatMessage) onSendMessage;

  final Document message;

  final List<DLSFile> files;

  final DlsChatMessage? markedEditMessage;

  final Key? key;

  @override
  String toString() {
    return 'AdvancedEditorRouteArgs{chatId: $chatId, onSendMessage: $onSendMessage, message: $message, files: $files, markedEditMessage: $markedEditMessage, key: $key}';
  }
}

/// generated route for
/// [WebRecorderDialogPage]
class WebRecorderDialogRoute extends PageRouteInfo<WebRecorderDialogRouteArgs> {
  WebRecorderDialogRoute({
    required bool voiceOnly,
    bool canSetupInputDevices = false,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          WebRecorderDialogRoute.name,
          args: WebRecorderDialogRouteArgs(
            voiceOnly: voiceOnly,
            canSetupInputDevices: canSetupInputDevices,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'WebRecorderDialogRoute';

  static const PageInfo<WebRecorderDialogRouteArgs> page =
      PageInfo<WebRecorderDialogRouteArgs>(name);
}

class WebRecorderDialogRouteArgs {
  const WebRecorderDialogRouteArgs({
    required this.voiceOnly,
    this.canSetupInputDevices = false,
    this.key,
  });

  final bool voiceOnly;

  final bool canSetupInputDevices;

  final Key? key;

  @override
  String toString() {
    return 'WebRecorderDialogRouteArgs{voiceOnly: $voiceOnly, canSetupInputDevices: $canSetupInputDevices, key: $key}';
  }
}

/// generated route for
/// [ChatLinksPage]
class ChatLinksRoute extends PageRouteInfo<ChatLinksRouteArgs> {
  ChatLinksRoute({
    Key? key,
    required List<DlsChatMessageText> links,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          ChatLinksRoute.name,
          args: ChatLinksRouteArgs(
            key: key,
            links: links,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatLinksRoute';

  static const PageInfo<ChatLinksRouteArgs> page =
      PageInfo<ChatLinksRouteArgs>(name);
}

class ChatLinksRouteArgs {
  const ChatLinksRouteArgs({
    this.key,
    required this.links,
    required this.title,
  });

  final Key? key;

  final List<DlsChatMessageText> links;

  final String title;

  @override
  String toString() {
    return 'ChatLinksRouteArgs{key: $key, links: $links, title: $title}';
  }
}

/// generated route for
/// [SimpleImagePreviewPage]
class SimpleImagePreviewRoute
    extends PageRouteInfo<SimpleImagePreviewRouteArgs> {
  SimpleImagePreviewRoute({
    required DLSFile image,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SimpleImagePreviewRoute.name,
          args: SimpleImagePreviewRouteArgs(
            image: image,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SimpleImagePreviewRoute';

  static const PageInfo<SimpleImagePreviewRouteArgs> page =
      PageInfo<SimpleImagePreviewRouteArgs>(name);
}

class SimpleImagePreviewRouteArgs {
  const SimpleImagePreviewRouteArgs({
    required this.image,
    this.key,
  });

  final DLSFile image;

  final Key? key;

  @override
  String toString() {
    return 'SimpleImagePreviewRouteArgs{image: $image, key: $key}';
  }
}

/// generated route for
/// [SimpleImageUrlViewerPage]
class SimpleImageUrlViewerRoute
    extends PageRouteInfo<SimpleImageUrlViewerRouteArgs> {
  SimpleImageUrlViewerRoute({
    required String url,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SimpleImageUrlViewerRoute.name,
          args: SimpleImageUrlViewerRouteArgs(
            url: url,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SimpleImageUrlViewerRoute';

  static const PageInfo<SimpleImageUrlViewerRouteArgs> page =
      PageInfo<SimpleImageUrlViewerRouteArgs>(name);
}

class SimpleImageUrlViewerRouteArgs {
  const SimpleImageUrlViewerRouteArgs({
    required this.url,
    this.key,
  });

  final String url;

  final Key? key;

  @override
  String toString() {
    return 'SimpleImageUrlViewerRouteArgs{url: $url, key: $key}';
  }
}

/// generated route for
/// [ForwardMessagePage]
class ForwardMessageRoute extends PageRouteInfo<ForwardMessageRouteArgs> {
  ForwardMessageRoute({
    required String roomId,
    required String eventId,
    required List<String> dependentsIds,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ForwardMessageRoute.name,
          args: ForwardMessageRouteArgs(
            roomId: roomId,
            eventId: eventId,
            dependentsIds: dependentsIds,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ForwardMessageRoute';

  static const PageInfo<ForwardMessageRouteArgs> page =
      PageInfo<ForwardMessageRouteArgs>(name);
}

class ForwardMessageRouteArgs {
  const ForwardMessageRouteArgs({
    required this.roomId,
    required this.eventId,
    required this.dependentsIds,
    this.key,
  });

  final String roomId;

  final String eventId;

  final List<String> dependentsIds;

  final Key? key;

  @override
  String toString() {
    return 'ForwardMessageRouteArgs{roomId: $roomId, eventId: $eventId, dependentsIds: $dependentsIds, key: $key}';
  }
}

/// generated route for
/// [MobileTextRoomWrapperPage]
class MobileTextRoomWrapperRoute
    extends PageRouteInfo<MobileTextRoomWrapperRouteArgs> {
  MobileTextRoomWrapperRoute({
    required String chatId,
    required String server,
    List<DlsChatMessageText> forwardMessages = const [],
    String? threadMessageId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MobileTextRoomWrapperRoute.name,
          args: MobileTextRoomWrapperRouteArgs(
            chatId: chatId,
            server: server,
            forwardMessages: forwardMessages,
            threadMessageId: threadMessageId,
            key: key,
          ),
          rawPathParams: {
            'chatId': chatId,
            'server': server,
            'threadMessageId': threadMessageId,
          },
          initialChildren: children,
        );

  static const String name = 'MobileTextRoomWrapperRoute';

  static const PageInfo<MobileTextRoomWrapperRouteArgs> page =
      PageInfo<MobileTextRoomWrapperRouteArgs>(name);
}

class MobileTextRoomWrapperRouteArgs {
  const MobileTextRoomWrapperRouteArgs({
    required this.chatId,
    required this.server,
    this.forwardMessages = const [],
    this.threadMessageId,
    this.key,
  });

  final String chatId;

  final String server;

  final List<DlsChatMessageText> forwardMessages;

  final String? threadMessageId;

  final Key? key;

  @override
  String toString() {
    return 'MobileTextRoomWrapperRouteArgs{chatId: $chatId, server: $server, forwardMessages: $forwardMessages, threadMessageId: $threadMessageId, key: $key}';
  }
}

/// generated route for
/// [UnselectedRoomPage]
class UnselectedRoomRoute extends PageRouteInfo<void> {
  const UnselectedRoomRoute({List<PageRouteInfo>? children})
      : super(
          UnselectedRoomRoute.name,
          initialChildren: children,
        );

  static const String name = 'UnselectedRoomRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WebTextRoomWrapperPage]
class WebTextRoomWrapperRoute
    extends PageRouteInfo<WebTextRoomWrapperRouteArgs> {
  WebTextRoomWrapperRoute({
    required String chatId,
    void Function(DlsChatMessageText)? onOpenCommentsPanel,
    void Function()? onOpenInfoPanel,
    String? threadMessageId,
    void Function()? onAddUsersToGroupChat,
    void Function()? onGroupChatRename,
    void Function()? onGroupChatExit,
    void Function()? onGroupChatDelete,
    void Function(String)? onPersonalChatExit,
    List<DlsChatMessageText> forwardMessages = const [],
    ChatType chatType = ChatType.group,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          WebTextRoomWrapperRoute.name,
          args: WebTextRoomWrapperRouteArgs(
            chatId: chatId,
            onOpenCommentsPanel: onOpenCommentsPanel,
            onOpenInfoPanel: onOpenInfoPanel,
            threadMessageId: threadMessageId,
            onAddUsersToGroupChat: onAddUsersToGroupChat,
            onGroupChatRename: onGroupChatRename,
            onGroupChatExit: onGroupChatExit,
            onGroupChatDelete: onGroupChatDelete,
            onPersonalChatExit: onPersonalChatExit,
            forwardMessages: forwardMessages,
            chatType: chatType,
            key: key,
          ),
          rawPathParams: {
            'chatId': chatId,
            'threadMessageId': threadMessageId,
          },
          initialChildren: children,
        );

  static const String name = 'WebTextRoomWrapperRoute';

  static const PageInfo<WebTextRoomWrapperRouteArgs> page =
      PageInfo<WebTextRoomWrapperRouteArgs>(name);
}

class WebTextRoomWrapperRouteArgs {
  const WebTextRoomWrapperRouteArgs({
    required this.chatId,
    this.onOpenCommentsPanel,
    this.onOpenInfoPanel,
    this.threadMessageId,
    this.onAddUsersToGroupChat,
    this.onGroupChatRename,
    this.onGroupChatExit,
    this.onGroupChatDelete,
    this.onPersonalChatExit,
    this.forwardMessages = const [],
    this.chatType = ChatType.group,
    this.key,
  });

  final String chatId;

  final void Function(DlsChatMessageText)? onOpenCommentsPanel;

  final void Function()? onOpenInfoPanel;

  final String? threadMessageId;

  final void Function()? onAddUsersToGroupChat;

  final void Function()? onGroupChatRename;

  final void Function()? onGroupChatExit;

  final void Function()? onGroupChatDelete;

  final void Function(String)? onPersonalChatExit;

  final List<DlsChatMessageText> forwardMessages;

  final ChatType chatType;

  final Key? key;

  @override
  String toString() {
    return 'WebTextRoomWrapperRouteArgs{chatId: $chatId, onOpenCommentsPanel: $onOpenCommentsPanel, onOpenInfoPanel: $onOpenInfoPanel, threadMessageId: $threadMessageId, onAddUsersToGroupChat: $onAddUsersToGroupChat, onGroupChatRename: $onGroupChatRename, onGroupChatExit: $onGroupChatExit, onGroupChatDelete: $onGroupChatDelete, onPersonalChatExit: $onPersonalChatExit, forwardMessages: $forwardMessages, chatType: $chatType, key: $key}';
  }
}

/// generated route for
/// [TermlessTodoPage]
class TermlessTodoRoute extends PageRouteInfo<TermlessTodoRouteArgs> {
  TermlessTodoRoute({
    Key? key,
    bool? isEditingMode = false,
    String? message = '',
    List<PageRouteInfo>? children,
  }) : super(
          TermlessTodoRoute.name,
          args: TermlessTodoRouteArgs(
            key: key,
            isEditingMode: isEditingMode,
            message: message,
          ),
          initialChildren: children,
        );

  static const String name = 'TermlessTodoRoute';

  static const PageInfo<TermlessTodoRouteArgs> page =
      PageInfo<TermlessTodoRouteArgs>(name);
}

class TermlessTodoRouteArgs {
  const TermlessTodoRouteArgs({
    this.key,
    this.isEditingMode = false,
    this.message = '',
  });

  final Key? key;

  final bool? isEditingMode;

  final String? message;

  @override
  String toString() {
    return 'TermlessTodoRouteArgs{key: $key, isEditingMode: $isEditingMode, message: $message}';
  }
}

/// generated route for
/// [TodoPage]
class TodoRoute extends PageRouteInfo<void> {
  const TodoRoute({List<PageRouteInfo>? children})
      : super(
          TodoRoute.name,
          initialChildren: children,
        );

  static const String name = 'TodoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UpcomingTodoPage]
class UpcomingTodoRoute extends PageRouteInfo<void> {
  const UpcomingTodoRoute({List<PageRouteInfo>? children})
      : super(
          UpcomingTodoRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpcomingTodoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserInformationPage]
class UserInformationRoute extends PageRouteInfo<UserInformationRouteArgs> {
  UserInformationRoute({
    Key? key,
    required String userId,
    String? roomId,
    List<PageRouteInfo>? children,
  }) : super(
          UserInformationRoute.name,
          args: UserInformationRouteArgs(
            key: key,
            userId: userId,
            roomId: roomId,
          ),
          initialChildren: children,
        );

  static const String name = 'UserInformationRoute';

  static const PageInfo<UserInformationRouteArgs> page =
      PageInfo<UserInformationRouteArgs>(name);
}

class UserInformationRouteArgs {
  const UserInformationRouteArgs({
    this.key,
    required this.userId,
    this.roomId,
  });

  final Key? key;

  final String userId;

  final String? roomId;

  @override
  String toString() {
    return 'UserInformationRouteArgs{key: $key, userId: $userId, roomId: $roomId}';
  }
}

/// generated route for
/// [CalendarRootPage]
class CalendarRootRoute extends PageRouteInfo<void> {
  const CalendarRootRoute({List<PageRouteInfo>? children})
      : super(
          CalendarRootRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalendarRootRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DayCalendarPage]
class DayCalendarRoute extends PageRouteInfo<DayCalendarRouteArgs> {
  DayCalendarRoute({
    required String dayId,
    List<PageRouteInfo>? children,
  }) : super(
          DayCalendarRoute.name,
          args: DayCalendarRouteArgs(dayId: dayId),
          rawPathParams: {'dayId': dayId},
          initialChildren: children,
        );

  static const String name = 'DayCalendarRoute';

  static const PageInfo<DayCalendarRouteArgs> page =
      PageInfo<DayCalendarRouteArgs>(name);
}

class DayCalendarRouteArgs {
  const DayCalendarRouteArgs({required this.dayId});

  final String dayId;

  @override
  String toString() {
    return 'DayCalendarRouteArgs{dayId: $dayId}';
  }
}

/// generated route for
/// [MonthCalendarPage]
class MonthCalendarRoute extends PageRouteInfo<MonthCalendarRouteArgs> {
  MonthCalendarRoute({
    required String dayId,
    List<PageRouteInfo>? children,
  }) : super(
          MonthCalendarRoute.name,
          args: MonthCalendarRouteArgs(dayId: dayId),
          rawPathParams: {'dayId': dayId},
          initialChildren: children,
        );

  static const String name = 'MonthCalendarRoute';

  static const PageInfo<MonthCalendarRouteArgs> page =
      PageInfo<MonthCalendarRouteArgs>(name);
}

class MonthCalendarRouteArgs {
  const MonthCalendarRouteArgs({required this.dayId});

  final String dayId;

  @override
  String toString() {
    return 'MonthCalendarRouteArgs{dayId: $dayId}';
  }
}

/// generated route for
/// [WeekCalendarPage]
class WeekCalendarRoute extends PageRouteInfo<WeekCalendarRouteArgs> {
  WeekCalendarRoute({
    required String dayId,
    List<PageRouteInfo>? children,
  }) : super(
          WeekCalendarRoute.name,
          args: WeekCalendarRouteArgs(dayId: dayId),
          rawPathParams: {'dayId': dayId},
          initialChildren: children,
        );

  static const String name = 'WeekCalendarRoute';

  static const PageInfo<WeekCalendarRouteArgs> page =
      PageInfo<WeekCalendarRouteArgs>(name);
}

class WeekCalendarRouteArgs {
  const WeekCalendarRouteArgs({required this.dayId});

  final String dayId;

  @override
  String toString() {
    return 'WeekCalendarRouteArgs{dayId: $dayId}';
  }
}

/// generated route for
/// [GroupChatInformationWrapperPage]
class GroupChatInformationWrapperRoute
    extends PageRouteInfo<GroupChatInformationWrapperRouteArgs> {
  GroupChatInformationWrapperRoute({
    required String chatId,
    required GroupInformationArgs args,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          GroupChatInformationWrapperRoute.name,
          args: GroupChatInformationWrapperRouteArgs(
            chatId: chatId,
            args: args,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'GroupChatInformationWrapperRoute';

  static const PageInfo<GroupChatInformationWrapperRouteArgs> page =
      PageInfo<GroupChatInformationWrapperRouteArgs>(name);
}

class GroupChatInformationWrapperRouteArgs {
  const GroupChatInformationWrapperRouteArgs({
    required this.chatId,
    required this.args,
    this.key,
  });

  final String chatId;

  final GroupInformationArgs args;

  final Key? key;

  @override
  String toString() {
    return 'GroupChatInformationWrapperRouteArgs{chatId: $chatId, args: $args, key: $key}';
  }
}

/// generated route for
/// [PersonalChatInformationWrapperPage]
class PersonalChatInformationWrapperRoute
    extends PageRouteInfo<PersonalChatInformationWrapperRouteArgs> {
  PersonalChatInformationWrapperRoute({
    required String chatId,
    required void Function() onTapDelete,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          PersonalChatInformationWrapperRoute.name,
          args: PersonalChatInformationWrapperRouteArgs(
            chatId: chatId,
            onTapDelete: onTapDelete,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PersonalChatInformationWrapperRoute';

  static const PageInfo<PersonalChatInformationWrapperRouteArgs> page =
      PageInfo<PersonalChatInformationWrapperRouteArgs>(name);
}

class PersonalChatInformationWrapperRouteArgs {
  const PersonalChatInformationWrapperRouteArgs({
    required this.chatId,
    required this.onTapDelete,
    this.key,
  });

  final String chatId;

  final void Function() onTapDelete;

  final Key? key;

  @override
  String toString() {
    return 'PersonalChatInformationWrapperRouteArgs{chatId: $chatId, onTapDelete: $onTapDelete, key: $key}';
  }
}

/// generated route for
/// [MobileChatInformationPage]
class MobileChatInformationRoute
    extends PageRouteInfo<MobileChatInformationRouteArgs> {
  MobileChatInformationRoute({
    required String chatId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MobileChatInformationRoute.name,
          args: MobileChatInformationRouteArgs(
            chatId: chatId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MobileChatInformationRoute';

  static const PageInfo<MobileChatInformationRouteArgs> page =
      PageInfo<MobileChatInformationRouteArgs>(name);
}

class MobileChatInformationRouteArgs {
  const MobileChatInformationRouteArgs({
    required this.chatId,
    this.key,
  });

  final String chatId;

  final Key? key;

  @override
  String toString() {
    return 'MobileChatInformationRouteArgs{chatId: $chatId, key: $key}';
  }
}

/// generated route for
/// [GroupRootPage]
class GroupRootRoute extends PageRouteInfo<void> {
  const GroupRootRoute({List<PageRouteInfo>? children})
      : super(
          GroupRootRoute.name,
          initialChildren: children,
        );

  static const String name = 'GroupRootRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MobileRenameGroupChatPage]
class MobileRenameGroupChatRoute
    extends PageRouteInfo<MobileRenameGroupChatRouteArgs> {
  MobileRenameGroupChatRoute({
    required SimpleGroup init,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MobileRenameGroupChatRoute.name,
          args: MobileRenameGroupChatRouteArgs(
            init: init,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MobileRenameGroupChatRoute';

  static const PageInfo<MobileRenameGroupChatRouteArgs> page =
      PageInfo<MobileRenameGroupChatRouteArgs>(name);
}

class MobileRenameGroupChatRouteArgs {
  const MobileRenameGroupChatRouteArgs({
    required this.init,
    this.key,
  });

  final SimpleGroup init;

  final Key? key;

  @override
  String toString() {
    return 'MobileRenameGroupChatRouteArgs{init: $init, key: $key}';
  }
}

/// generated route for
/// [MobileSelectGroupAdminPage]
class MobileSelectGroupAdminRoute
    extends PageRouteInfo<MobileSelectGroupAdminRouteArgs> {
  MobileSelectGroupAdminRoute({
    required SimpleGroup init,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MobileSelectGroupAdminRoute.name,
          args: MobileSelectGroupAdminRouteArgs(
            init: init,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MobileSelectGroupAdminRoute';

  static const PageInfo<MobileSelectGroupAdminRouteArgs> page =
      PageInfo<MobileSelectGroupAdminRouteArgs>(name);
}

class MobileSelectGroupAdminRouteArgs {
  const MobileSelectGroupAdminRouteArgs({
    required this.init,
    this.key,
  });

  final SimpleGroup init;

  final Key? key;

  @override
  String toString() {
    return 'MobileSelectGroupAdminRouteArgs{init: $init, key: $key}';
  }
}

/// generated route for
/// [MobileSelectGroupUsersPage]
class MobileSelectGroupUsersRoute
    extends PageRouteInfo<MobileSelectGroupUsersRouteArgs> {
  MobileSelectGroupUsersRoute({
    required SimpleGroup init,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MobileSelectGroupUsersRoute.name,
          args: MobileSelectGroupUsersRouteArgs(
            init: init,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MobileSelectGroupUsersRoute';

  static const PageInfo<MobileSelectGroupUsersRouteArgs> page =
      PageInfo<MobileSelectGroupUsersRouteArgs>(name);
}

class MobileSelectGroupUsersRouteArgs {
  const MobileSelectGroupUsersRouteArgs({
    required this.init,
    this.key,
  });

  final SimpleGroup init;

  final Key? key;

  @override
  String toString() {
    return 'MobileSelectGroupUsersRouteArgs{init: $init, key: $key}';
  }
}

/// generated route for
/// [MobileSetGroupNamePage]
class MobileSetGroupNameRoute
    extends PageRouteInfo<MobileSetGroupNameRouteArgs> {
  MobileSetGroupNameRoute({
    Key? key,
    required SimpleGroup init,
    List<PageRouteInfo>? children,
  }) : super(
          MobileSetGroupNameRoute.name,
          args: MobileSetGroupNameRouteArgs(
            key: key,
            init: init,
          ),
          initialChildren: children,
        );

  static const String name = 'MobileSetGroupNameRoute';

  static const PageInfo<MobileSetGroupNameRouteArgs> page =
      PageInfo<MobileSetGroupNameRouteArgs>(name);
}

class MobileSetGroupNameRouteArgs {
  const MobileSetGroupNameRouteArgs({
    this.key,
    required this.init,
  });

  final Key? key;

  final SimpleGroup init;

  @override
  String toString() {
    return 'MobileSetGroupNameRouteArgs{key: $key, init: $init}';
  }
}

/// generated route for
/// [MobileUpdateGroupUsersPage]
class MobileUpdateGroupUsersRoute
    extends PageRouteInfo<MobileUpdateGroupUsersRouteArgs> {
  MobileUpdateGroupUsersRoute({
    required SimpleGroup init,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MobileUpdateGroupUsersRoute.name,
          args: MobileUpdateGroupUsersRouteArgs(
            init: init,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MobileUpdateGroupUsersRoute';

  static const PageInfo<MobileUpdateGroupUsersRouteArgs> page =
      PageInfo<MobileUpdateGroupUsersRouteArgs>(name);
}

class MobileUpdateGroupUsersRouteArgs {
  const MobileUpdateGroupUsersRouteArgs({
    required this.init,
    this.key,
  });

  final SimpleGroup init;

  final Key? key;

  @override
  String toString() {
    return 'MobileUpdateGroupUsersRouteArgs{init: $init, key: $key}';
  }
}

/// generated route for
/// [ChatBookmarkPage]
class ChatBookmarkRoute extends PageRouteInfo<void> {
  const ChatBookmarkRoute({List<PageRouteInfo>? children})
      : super(
          ChatBookmarkRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatBookmarkRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatCommentPage]
class ChatCommentRoute extends PageRouteInfo<void> {
  const ChatCommentRoute({List<PageRouteInfo>? children})
      : super(
          ChatCommentRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatCommentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatGroupPage]
class ChatGroupRoute extends PageRouteInfo<ChatGroupRouteArgs> {
  ChatGroupRoute({
    required String chatId,
    required String server,
    List<DlsChatMessageText> forwardMessages = const [],
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ChatGroupRoute.name,
          args: ChatGroupRouteArgs(
            chatId: chatId,
            server: server,
            forwardMessages: forwardMessages,
            key: key,
          ),
          rawPathParams: {
            'chatId': chatId,
            'server': server,
          },
          initialChildren: children,
        );

  static const String name = 'ChatGroupRoute';

  static const PageInfo<ChatGroupRouteArgs> page =
      PageInfo<ChatGroupRouteArgs>(name);
}

class ChatGroupRouteArgs {
  const ChatGroupRouteArgs({
    required this.chatId,
    required this.server,
    this.forwardMessages = const [],
    this.key,
  });

  final String chatId;

  final String server;

  final List<DlsChatMessageText> forwardMessages;

  final Key? key;

  @override
  String toString() {
    return 'ChatGroupRouteArgs{chatId: $chatId, server: $server, forwardMessages: $forwardMessages, key: $key}';
  }
}

/// generated route for
/// [WebChatPersonalPage]
class WebChatPersonalRoute extends PageRouteInfo<WebChatPersonalRouteArgs> {
  WebChatPersonalRoute({
    required String chatId,
    required String server,
    List<DlsChatMessageText> forwardMessages = const [],
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          WebChatPersonalRoute.name,
          args: WebChatPersonalRouteArgs(
            chatId: chatId,
            server: server,
            forwardMessages: forwardMessages,
            key: key,
          ),
          rawPathParams: {
            'chatId': chatId,
            'server': server,
          },
          initialChildren: children,
        );

  static const String name = 'WebChatPersonalRoute';

  static const PageInfo<WebChatPersonalRouteArgs> page =
      PageInfo<WebChatPersonalRouteArgs>(name);
}

class WebChatPersonalRouteArgs {
  const WebChatPersonalRouteArgs({
    required this.chatId,
    required this.server,
    this.forwardMessages = const [],
    this.key,
  });

  final String chatId;

  final String server;

  final List<DlsChatMessageText> forwardMessages;

  final Key? key;

  @override
  String toString() {
    return 'WebChatPersonalRouteArgs{chatId: $chatId, server: $server, forwardMessages: $forwardMessages, key: $key}';
  }
}

/// generated route for
/// [WebChatPersonalWrapperPage]
class WebChatPersonalWrapperRoute extends PageRouteInfo<void> {
  const WebChatPersonalWrapperRoute({List<PageRouteInfo>? children})
      : super(
          WebChatPersonalWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'WebChatPersonalWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CreateEventPage]
class CreateEventRoute extends PageRouteInfo<CreateEventRouteArgs> {
  CreateEventRoute({
    bool popOnSuccess = false,
    String? title,
    TaskEventModel? event,
    DlsTasks? task,
    DateTime? startAt,
    DateTime? endAt,
    DlsSprintModel? sprint,
    void Function()? onDelete,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CreateEventRoute.name,
          args: CreateEventRouteArgs(
            popOnSuccess: popOnSuccess,
            title: title,
            event: event,
            task: task,
            startAt: startAt,
            endAt: endAt,
            sprint: sprint,
            onDelete: onDelete,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateEventRoute';

  static const PageInfo<CreateEventRouteArgs> page =
      PageInfo<CreateEventRouteArgs>(name);
}

class CreateEventRouteArgs {
  const CreateEventRouteArgs({
    this.popOnSuccess = false,
    this.title,
    this.event,
    this.task,
    this.startAt,
    this.endAt,
    this.sprint,
    this.onDelete,
    this.key,
  });

  final bool popOnSuccess;

  final String? title;

  final TaskEventModel? event;

  final DlsTasks? task;

  final DateTime? startAt;

  final DateTime? endAt;

  final DlsSprintModel? sprint;

  final void Function()? onDelete;

  final Key? key;

  @override
  String toString() {
    return 'CreateEventRouteArgs{popOnSuccess: $popOnSuccess, title: $title, event: $event, task: $task, startAt: $startAt, endAt: $endAt, sprint: $sprint, onDelete: $onDelete, key: $key}';
  }
}

/// generated route for
/// [NewSprintPage]
class NewSprintRoute extends PageRouteInfo<NewSprintRouteArgs> {
  NewSprintRoute({
    Key? key,
    bool popOnSuccess = false,
    String parentTitle = '',
    List<DlsTasks> backlog = const [],
    DlsSprintModel? sprint,
    void Function(DlsSprintModel)? onSprintSaved,
    DlsTasks? superTask,
    List<PageRouteInfo>? children,
  }) : super(
          NewSprintRoute.name,
          args: NewSprintRouteArgs(
            key: key,
            popOnSuccess: popOnSuccess,
            parentTitle: parentTitle,
            backlog: backlog,
            sprint: sprint,
            onSprintSaved: onSprintSaved,
            superTask: superTask,
          ),
          initialChildren: children,
        );

  static const String name = 'NewSprintRoute';

  static const PageInfo<NewSprintRouteArgs> page =
      PageInfo<NewSprintRouteArgs>(name);
}

class NewSprintRouteArgs {
  const NewSprintRouteArgs({
    this.key,
    this.popOnSuccess = false,
    this.parentTitle = '',
    this.backlog = const [],
    this.sprint,
    this.onSprintSaved,
    this.superTask,
  });

  final Key? key;

  final bool popOnSuccess;

  final String parentTitle;

  final List<DlsTasks> backlog;

  final DlsSprintModel? sprint;

  final void Function(DlsSprintModel)? onSprintSaved;

  final DlsTasks? superTask;

  @override
  String toString() {
    return 'NewSprintRouteArgs{key: $key, popOnSuccess: $popOnSuccess, parentTitle: $parentTitle, backlog: $backlog, sprint: $sprint, onSprintSaved: $onSprintSaved, superTask: $superTask}';
  }
}

/// generated route for
/// [NewTaskSprintPage]
class NewTaskSprintRoute extends PageRouteInfo<NewTaskSprintRouteArgs> {
  NewTaskSprintRoute({
    Key? key,
    TaskStatusType? status,
    DlsTasks? task,
    DlsTasks? parentTask,
    bool popOnSuccess = false,
    void Function(DlsTasks)? onTaskSaved,
    String? title,
    List<PageRouteInfo>? children,
  }) : super(
          NewTaskSprintRoute.name,
          args: NewTaskSprintRouteArgs(
            key: key,
            status: status,
            task: task,
            parentTask: parentTask,
            popOnSuccess: popOnSuccess,
            onTaskSaved: onTaskSaved,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'NewTaskSprintRoute';

  static const PageInfo<NewTaskSprintRouteArgs> page =
      PageInfo<NewTaskSprintRouteArgs>(name);
}

class NewTaskSprintRouteArgs {
  const NewTaskSprintRouteArgs({
    this.key,
    this.status,
    this.task,
    this.parentTask,
    this.popOnSuccess = false,
    this.onTaskSaved,
    this.title,
  });

  final Key? key;

  final TaskStatusType? status;

  final DlsTasks? task;

  final DlsTasks? parentTask;

  final bool popOnSuccess;

  final void Function(DlsTasks)? onTaskSaved;

  final String? title;

  @override
  String toString() {
    return 'NewTaskSprintRouteArgs{key: $key, status: $status, task: $task, parentTask: $parentTask, popOnSuccess: $popOnSuccess, onTaskSaved: $onTaskSaved, title: $title}';
  }
}

/// generated route for
/// [HomeTabsPage]
class HomeTabsRoute extends PageRouteInfo<void> {
  const HomeTabsRoute({List<PageRouteInfo>? children})
      : super(
          HomeTabsRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeTabsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NotificationsHistoryPage]
class NotificationsHistoryRoute extends PageRouteInfo<void> {
  const NotificationsHistoryRoute({List<PageRouteInfo>? children})
      : super(
          NotificationsHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsHistoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PickTaskDialogPage]
class PickTaskDialogRoute extends PageRouteInfo<void> {
  const PickTaskDialogRoute({List<PageRouteInfo>? children})
      : super(
          PickTaskDialogRoute.name,
          initialChildren: children,
        );

  static const String name = 'PickTaskDialogRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CallPage]
class CallRoute extends PageRouteInfo<void> {
  const CallRoute({List<PageRouteInfo>? children})
      : super(
          CallRoute.name,
          initialChildren: children,
        );

  static const String name = 'CallRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [IncomingCallPage]
class IncomingCallRoute extends PageRouteInfo<IncomingCallRouteArgs> {
  IncomingCallRoute({
    required ActiveCall activeCall,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          IncomingCallRoute.name,
          args: IncomingCallRouteArgs(
            activeCall: activeCall,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'IncomingCallRoute';

  static const PageInfo<IncomingCallRouteArgs> page =
      PageInfo<IncomingCallRouteArgs>(name);
}

class IncomingCallRouteArgs {
  const IncomingCallRouteArgs({
    required this.activeCall,
    this.key,
  });

  final ActiveCall activeCall;

  final Key? key;

  @override
  String toString() {
    return 'IncomingCallRouteArgs{activeCall: $activeCall, key: $key}';
  }
}

/// generated route for
/// [MobileTasksGeneralPage]
class MobileTasksGeneralRoute extends PageRouteInfo<void> {
  const MobileTasksGeneralRoute({List<PageRouteInfo>? children})
      : super(
          MobileTasksGeneralRoute.name,
          initialChildren: children,
        );

  static const String name = 'MobileTasksGeneralRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MobileTaskFiltersPage]
class MobileTaskFiltersRoute extends PageRouteInfo<MobileTaskFiltersRouteArgs> {
  MobileTaskFiltersRoute({
    required int selectedTabBar,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MobileTaskFiltersRoute.name,
          args: MobileTaskFiltersRouteArgs(
            selectedTabBar: selectedTabBar,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MobileTaskFiltersRoute';

  static const PageInfo<MobileTaskFiltersRouteArgs> page =
      PageInfo<MobileTaskFiltersRouteArgs>(name);
}

class MobileTaskFiltersRouteArgs {
  const MobileTaskFiltersRouteArgs({
    required this.selectedTabBar,
    this.key,
  });

  final int selectedTabBar;

  final Key? key;

  @override
  String toString() {
    return 'MobileTaskFiltersRouteArgs{selectedTabBar: $selectedTabBar, key: $key}';
  }
}

/// generated route for
/// [TasksGeneralPage]
class TasksGeneralRoute extends PageRouteInfo<void> {
  const TasksGeneralRoute({List<PageRouteInfo>? children})
      : super(
          TasksGeneralRoute.name,
          initialChildren: children,
        );

  static const String name = 'TasksGeneralRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TasksRootPage]
class TasksRootRoute extends PageRouteInfo<void> {
  const TasksRootRoute({List<PageRouteInfo>? children})
      : super(
          TasksRootRoute.name,
          initialChildren: children,
        );

  static const String name = 'TasksRootRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
