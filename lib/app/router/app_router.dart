import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/router/auth_redirect.dart';
import 'package:dls_one/features/auth/presentation/ui/auth/auth_root_page.dart';
import 'package:dls_one/features/auth/presentation/ui/registration/registration_root_page.dart';
import 'package:dls_one/features/company_structure/company_structure.dart';
import 'package:dls_one/features/features.dart';
import 'package:dls_one/features/home/presentation/ui/chats_root_page.dart';
import 'package:dls_one/features/home/presentation/ui/home_root_route.dart';
import 'package:dls_one/features/media/media.dart';
import 'package:dls_one/features/select_users/select_users.dart';
import 'package:dls_one/features/settings/presentation/ui/settings_profile_root_page.dart';
import 'package:dls_one/features/settings/presentation/ui/settings_root_page.dart';
import 'package:dls_one/features/settings/settings.dart';
import 'package:dls_one/features/textroom/ui/chat_information_root_page.dart';
import 'package:dls_one/features/textroom/ui/chat_input/src/ui/web_recorder_dialog.dart';
import 'package:dls_one/features/textroom/ui/unselected_room_page.dart';
import 'package:dls_one/features/todo/todo.dart';
import 'package:dls_one/features/todo/widget/ui/todo_page.dart';
import 'package:dls_one/models/dls_file.dart';
import 'package:dls_one/models/settings_profile_add_contact_page_args.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/calendar/calendar.dart';
import 'package:dls_one/web/chat/chat_information/chat_information.dart';
import 'package:dls_one/web/chat/chat_information/view/mobile/mobile_chat_information_builder.dart';
import 'package:dls_one/web/chat/chat_manager/chat_manager.dart';
import 'package:dls_one/web/chat/chat_manager/view/mobile/mobile_group_root_page.dart';
import 'package:dls_one/web/chat/view/chat_bookmark_page.dart';
import 'package:dls_one/web/chat/view/chat_comment_page.dart';
import 'package:dls_one/web/chat/view/chat_group/view/chat_group_page.dart';
import 'package:dls_one/web/chat/view/chat_personal/view/web_chat_personal_page.dart';
import 'package:dls_one/web/chat/view/chat_personal/view/web_chat_personal_wrapper_page.dart';
import 'package:dls_one/web/create_events/widget/create_event_page.dart';
import 'package:dls_one/web/create_sprint/view/new_sprint_page.dart';
import 'package:dls_one/web/create_task/view/src/new_task_sprint.dart';
import 'package:dls_one/web/home/view/home_tabs_page.dart';
import 'package:dls_one/web/home/view/main_page.dart';
import 'package:dls_one/web/notifications/view/notifications_history_page.dart';
import 'package:dls_one/web/pick_task/pick_task.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:dls_one/web/tasks/view/mobile/task_list/filters/mobile_task_filters_page.dart';
import 'package:dls_one/web/tasks/view/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:matrix/matrix.dart';
import 'package:rest_api/rest_api.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page|Screen,Route',
)
class AppRouter extends _$AppRouter {
  AppRouter({
    required this.authGuard,
    required this.isMobile,
  });

  final AuthGuard authGuard;
  final bool isMobile;

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  late final List<AutoRoute> routes = [
    _DLSAdaptiveRoute.make(
      path: '/auth',
      page: AuthRootRoute.page,
      opaque: false,
      guards: [authGuard],
      children: [
        _DLSAdaptiveRoute.make(
          path: '',
          page: AuthLoginRoute.page,
        ),
        _DLSAdaptiveRoute.make(
          path: 'setup_locker',
          page: AuthSetupLockerRoute.page,
        ),
        _DLSAdaptiveRoute.make(
          path: 'reset_password',
          opaque: false,
          page: ResetPasswordRootRoute.page,
          children: [
            _DLSAdaptiveRoute.make(
              initial: true,
              path: 'sms',
              page: ResetPasswordSMSRoute.page,
            ),
            _DLSAdaptiveRoute.make(
              path: 'update',
              page: ResetPasswordUpdatePasswordRoute.page,
            ),
          ],
        ),
        _DLSAdaptiveRoute.make(
          path: 'registration',
          page: RegistrationRootRoute.page,
          opaque: false,
          children: [
            _DLSAdaptiveRoute.make(
              path: '',
              page: RegistrationLoginRoute.page,
            ),
            _DLSAdaptiveRoute.make(
              path: 'sms',
              page: RegistrationSMSRoute.page,
            ),
            _DLSAdaptiveRoute.make(
              path: 'password',
              page: RegistrationNewPasswordRoute.page,
            ),
            _DLSAdaptiveRoute.make(
              path: 'personal_data',
              page: RegistrationPersonalDataRoute.page,
            ),
          ],
        ),
      ],
    ),
    _DLSAdaptiveRoute.make(
      path: '/',
      page: MainRoute.page,
      guards: [authGuard],
      children: [
        _DLSAdaptiveRoute.make(
          path: 'incomingCall',
          page: IncomingCallRoute.page,
        ),
        _DLSAdaptiveRoute.make(
          path: 'call',
          page: CallRoute.page,
        ),
        if (isMobile)
          // TODO: Перетащить локер в корень навигации или как отдельную вложенность
          // основного аппа и закрыть guard-ом.
          _DLSAdaptiveRoute.make(
            path: 'locker',
            page: LockerRoute.page,
          ),
        _DLSAdaptiveRoute.make(
          path: 'video_player/:name',
          page: VideoPlayerRoute.page,
        ),
        _DLSAdaptiveRoute.make(
          path: 'gallery/:initImageIndex',
          page: GalleryRoute.page,
        ),
        if (!isMobile) ...departmentRoutes,
        _DLSAdaptiveRoute.make(
          path: '',
          page: HomeRootRoute.page,
          children: [
            _DLSAdaptiveRoute.make(
              path: '',
              page: HomeTabsRoute.page,
              children: [
                _DLSAdaptiveRoute.make(
                  path: 'todo',
                  page: TodoRoute.page,
                  children: [
                    _DLSAdaptiveRoute.make(
                      path: 'termless',
                      page: TermlessTodoRoute.page,
                    ),
                    _DLSAdaptiveRoute.make(
                      initial: true,
                      path: 'upcoming',
                      page: UpcomingTodoRoute.page,
                    ),
                  ],
                ),
                // TODO: логика в роутах чатов слишком разная, закончить объединение
                // при рефакторинге верстки на новую дизайн систему.
                _DLSAdaptiveRoute.make(
                  initial: true,
                  path: 'chats',
                  page: ChatsRootRoute.page,
                  children: [
                    if (isMobile) ...[
                      _DLSAdaptiveRoute.make(
                        initial: true,
                        path: '',
                        page: HomeRoute.page,
                      ),
                      // mobile with top tabs
                      _DLSAdaptiveRoute.make(
                        // TODO check path on different Platforms
                        path: 'chats',
                        page: ChatsRoute.page,
                      ),
                      // mobile with search and top tabs
                      _DLSAdaptiveRoute.make(
                        path: 'search',
                        page: ChatsSearchRoute.page,
                      ),
                      _DLSAdaptiveRoute.make(
                        path: ':chatId/:server',
                        page: MobileTextRoomWrapperRoute.page,
                      ),
                      _DLSAdaptiveRoute.make(
                        path: 'advanced_editor',
                        page: AdvancedEditorRoute.page,
                      ),
                      _DLSAdaptiveRoute.make(
                        path: 'forward_message_with_chat',
                        page: ForwardMessageRoute.page,
                      ),
                      _DLSAdaptiveRoute.make(
                        path: 'chat_choose_forward',
                        page: MobileChatChooseForwardRoute.page,
                      ),
                      _DLSAdaptiveRoute.make(
                        path: 'information',
                        page: ChatInformationRootRoute.page,
                        children: [
                          _DLSAdaptiveRoute.make(
                            path: '',
                            page: MobileChatInformationRoute.page,
                          ),
                          _DLSAdaptiveRoute.make(
                            path: 'user',
                            page: UserInformationRoute.page,
                          ),
                          _DLSAdaptiveRoute.make(
                            path: 'images',
                            page: ChatFilesImagesRoute.page,
                          ),
                          _DLSAdaptiveRoute.make(
                            path: 'videos',
                            page: ChatFilesVideosRoute.page,
                          ),
                          _DLSAdaptiveRoute.make(
                            path: 'links',
                            page: ChatLinksRoute.page,
                          ),
                          _DLSAdaptiveRoute.make(
                            path: 'audios',
                            page: ChatFilesAudiosRoute.page,
                          ),
                          _DLSAdaptiveRoute.make(
                            path: 'docs',
                            page: ChatFilesDocsRoute.page,
                          ),
                        ],
                      ),
                    ],
                    if (!isMobile)
                      _DLSAdaptiveRoute.make(
                        initial: true,
                        path: 'personal',
                        page: WebChatPersonalWrapperRoute.page,
                        children: [
                          _DLSAdaptiveRoute.make(
                            path: ':chatId/:server',
                            page: WebChatPersonalRoute.page,
                            children: [
                              _DLSAdaptiveRoute.make(
                                path: 'thread',
                                page: WebTextRoomWrapperRoute.page,
                              ),
                              _DLSAdaptiveRoute.make(
                                path: 'info',
                                page: PersonalChatInformationWrapperRoute.page,
                              ),
                            ],
                          ),
                        ],
                      ),
                    _DLSAdaptiveRoute.make(
                      path: 'bookmarks',
                      page: ChatBookmarkRoute.page,
                    ),
                    _DLSAdaptiveRoute.make(
                      path: 'comments',
                      page: ChatCommentRoute.page,
                    ),
                    _DLSAdaptiveRoute.make(
                      path: 'group',
                      page: GroupRootRoute.page,
                      children: [
                        _DLSAdaptiveRoute.make(
                          path: ':chatId/:server',
                          page: ChatGroupRoute.page,
                          children: [
                            _DLSAdaptiveRoute.make(
                              path: 'thread',
                              page: WebTextRoomWrapperRoute.page,
                            ),
                            _DLSAdaptiveRoute.make(
                              path: 'info',
                              page: GroupChatInformationWrapperRoute.page,
                            ),
                          ],
                        ),

                        /// Флоу создания и редактирования групповых чатов.
                        /// В WEB версии UI это происходит через модальные окна.
                        if (isMobile) ...[
                          _DLSAdaptiveRoute.make(
                            path: 'name',
                            page: MobileSetGroupNameRoute.page,
                          ),
                          _DLSAdaptiveRoute.make(
                            path: 'select_users',
                            page: MobileSelectGroupUsersRoute.page,
                          ),
                          _DLSAdaptiveRoute.make(
                            path: 'rename',
                            page: MobileRenameGroupChatRoute.page,
                          ),
                          _DLSAdaptiveRoute.make(
                            path: 'update_users',
                            page: MobileUpdateGroupUsersRoute.page,
                          ),
                          _DLSAdaptiveRoute.make(
                            path: 'select_group_admin',
                            page: MobileSelectGroupAdminRoute.page,
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
                _DLSAdaptiveRoute.make(
                  path: 'tasks',
                  page: TasksRootRoute.page,
                  children: [
                    if (isMobile) ...[
                      _DLSAdaptiveRoute.make(
                        path: '',
                        page: MobileTasksGeneralRoute.page,
                      ),
                      CustomRoute(
                        path: '',
                        page: MobileTaskFiltersRoute.page,
                        transitionsBuilder: TransitionsBuilders.slideLeft,
                        durationInMilliseconds: 500,
                        reverseDurationInMilliseconds: 500,
                        barrierColor: Colors.white,
                      )
                    ] else
                      _DLSAdaptiveRoute.make(
                        path: '',
                        page: TasksGeneralRoute.page,
                      ),
                  ],
                ),
                if (isMobile)
                  _DLSAdaptiveRoute.make(
                    path: 'notifications',
                    page: NotificationsHistoryRoute.page,
                  ),
                _DLSAdaptiveRoute.make(
                  path: 'calendar',
                  page: CalendarRootRoute.page,
                  children: [
                    RedirectRoute(
                      path: '',
                      redirectTo:
                          'day/${formatDateMonthYearNoDots(DateTime.now())}',
                    ),
                    _DLSAdaptiveRoute.make(
                      path: 'day/:dayId',
                      page: DayCalendarRoute.page,
                    ),
                    _DLSAdaptiveRoute.make(
                      path: 'week/:dayId',
                      page: WeekCalendarRoute.page,
                    ),
                    _DLSAdaptiveRoute.make(
                      path: 'month/:dayId',
                      page: MonthCalendarRoute.page,
                    ),
                  ],
                ),
                _DLSAdaptiveRoute.make(
                  path: 'settings',
                  page: SettingsRootRoute.page,
                  children: [
                    if (isMobile)
                      _DLSAdaptiveRoute.make(
                        path: '',
                        page: SettingsRoute.page,
                      ),
                    _DLSAdaptiveRoute.make(
                      initial: !isMobile,
                      path: 'profile',
                      page: SettingsProfileRootRoute.page,
                      children: [
                        _DLSAdaptiveRoute.make(
                          path: '',
                          page: SettingsProfileRoute.page,
                        ),
                        if (isMobile)
                          _DLSAdaptiveRoute.make(
                            path: 'add_contact',
                            page: SettingsProfileAddContactRoute.page,
                          ),
                      ],
                    ),
                    _DLSAdaptiveRoute.make(
                      path: 'password',
                      page: SettingsPasswordRoute.page,
                    ),
                    _DLSAdaptiveRoute.make(
                      path: 'notifications',
                      page: SettingsNotificationsRoute.page,
                    ),
                    if (isMobile)
                      _DLSAdaptiveRoute.make(
                        path: 'pin',
                        page: SettingsPinRoute.page,
                      ),
                    // Фича только для десктоп / веб версии.

                    if (!isMobile)
                      _DLSAdaptiveRoute.make(
                        path: 'company-structure',
                        page: CompanyStructureRoute.page,
                      ),
                  ],
                ),
              ],
            ),
            if (!isMobile)
              CustomRoute(
                path: 'recorder',
                page: WebRecorderDialogRoute.page,
                opaque: false,
              ),
            if (!isMobile)
              CustomRoute(
                path: 'chat_choose_forward',
                page: WebChatChooseForwardDialogRoute.page,
                opaque: false,
              ),
            CustomRoute(
              path: 'todo',
              page: TodoRoute.page,
              reverseDurationInMilliseconds: 0,
              fullscreenDialog: true,
              opaque: false,
              children: [
                CustomRoute(
                  path: 'termless',
                  page: TermlessTodoRoute.page,
                  usesPathAsKey: true,
                ),
                CustomRoute(
                  initial: true,
                  path: 'upcoming',
                  page: UpcomingTodoRoute.page,
                  usesPathAsKey: true,
                ),
              ],
            ),
            if (!isMobile)
              CustomRoute(
                path: 'notifications',
                page: NotificationsHistoryRoute.page,
                reverseDurationInMilliseconds: 0,
                opaque: false,
              ),
            _DLSAdaptiveRoute.make(
              path: 'newTask',
              page: NewTaskSprintRoute.page,
              opaque: false,
            ),
            _DLSAdaptiveRoute.make(
              path: 'createEvent',
              page: CreateEventRoute.page,
              opaque: false,
            ),
            _DLSAdaptiveRoute.make(
              path: 'newSprint',
              page: NewSprintRoute.page,
              opaque: false,
            ),
            CustomRoute(
              path: 'pickTaskDialog',
              page: PickTaskDialogRoute.page,
              opaque: false,
              fullscreenDialog: true,
              transitionsBuilder:
                  !isMobile ? null : NarrowPickTaskPage.mobileTransition(),
            ),
            if (isMobile)
              _DLSAdaptiveRoute.make(
                path: 'selectUsers',
                page: MobileSelectUsersRoute.page,
              ),
            // TODO: Почему то были реализованы только для mobile версии.
            // потому что для веб не успел
            // Доработать для веб версии.
            if (isMobile) ...[
              _DLSAdaptiveRoute.make(
                path: 'image',
                page: SimpleImagePreviewRoute.page,
              ),
              _DLSAdaptiveRoute.make(
                path: 'imageUrl',
                page: SimpleImageUrlViewerRoute.page,
              ),
            ],
          ],
        ),
      ],
    ),
  ];
}

mixin _DLSAdaptiveRoute {
  /// Для десктоп версии и в WEB в [AdaptiveRoute] по умолчанию могут использоваться
  /// специфичные транзишены между экранами. Нам нужно поведение без анимаций,
  /// моментальный показ экранов.
  static AutoRoute make<T extends Object?>({
    required PageInfo<T> page,
    bool initial = false,
    String? path,
    bool opaque = true,
    List<AutoRoute>? children,
    List<AutoRouteGuard> guards = const [],
  }) =>
      DlsPlatform.dlsPlatform != DlsPlatformType.mobile
          ? CustomRoute(
              initial: initial,
              page: page,
              path: path,
              opaque: opaque,
              children: children,
              guards: guards,
              durationInMilliseconds: 0,
              reverseDurationInMilliseconds: 0,
            )
          : AdaptiveRoute(
              initial: initial,
              page: page,
              path: path,
              opaque: opaque,
              children: children,
              guards: guards,
            );
}
