import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/dls_app_bar.dart';
import 'package:dls_one/web/settings/notifications/bloc/web_settings_notifications_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'widgets/notification_enabled_widget.dart';
part 'widgets/schedule_enabled_widget.dart';

/// settings notifications
class WebSettingsNotificationsLayout extends StatefulWidget {
  /// constr
  const WebSettingsNotificationsLayout({super.key});

  @override
  State<WebSettingsNotificationsLayout> createState() =>
      _WebSettingsNotificationsLayoutState();
}

class _WebSettingsNotificationsLayoutState
    extends State<WebSettingsNotificationsLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.c_white_text,
      appBar: DLSAppBar(
        automaticallyImplyLeading: false,
        title: Text(S.current.notifications),
      ),
      body: SingleChildScrollView(
        child:
            BlocBuilder<SettingsNotificationsBloc, SettingsNotificationsState>(
          builder: (context, state) {
            return state.when(
              failure: (_, __, m) =>
                  DlsFailure(message: m, onTap: context.popRoute),
              loading: (_, __) => DLSPreloader.newDLS.paddingOnly(top: 50.h),
              payload: (settings, changed) {
                return Center(
                  child: Flex(
                    direction: Axis.vertical,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 300.w,
                        alignment: Alignment.topLeft,
                        child: Flex(
                          direction: Axis.vertical,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 38.h),

                            /// кнопка вкл выкл уведомления
                            _NotificationEnabledWidget(
                              notificationsEnabled: state.notificationsEnabled,
                              onTap: onTapNotificationEnabled,
                            ),
                            SizedBox(height: 28.h),

                            /// кнопка вкл выкл расписание
                            _ScheduleEnabledWidget(
                              scheduleEnabled: state.scheduleEnabled,
                              onTap: onTapScheduleEnabled,
                            ),
                            SizedBox(height: 10.h),

                            /// дни
                            DlsWeekDaysView(
                              onChanged: onChangeDay,
                              checkedDays: [
                                if (state.schedule.monday ?? false) 1,
                                if (state.schedule.tuesday ?? false) 2,
                                if (state.schedule.wednesday ?? false) 3,
                                if (state.schedule.thursday ?? false) 4,
                                if (state.schedule.friday ?? false) 5,
                                if (state.schedule.saturday ?? false) 6,
                                if (state.schedule.sunday ?? false) 7,
                              ],
                            ),
                            SizedBox(height: 20.h),
                            DLSLabelIcon(
                              label: S.current.mute_interval,
                              labelIcon: Assets.icons.infoCircle
                                  .svg(width: 18.r, height: 18.r),
                              tooltip: S.current.mute_interval_desc,
                            ),
                            SizedBox(height: 16.h),
                            Flex(
                              direction: Axis.vertical,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(
                                state.intervals.length,
                                (index) => DLSIntervalPicker(
                                  width: 80.w,
                                  height: 44.h,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  interval: state.intervals[index],
                                  onStartIntervalTap: () {
                                    showTimePicker(
                                      initialTime: TimeOfDay.now(),
                                      context: context,
                                    ).then(
                                      (TimeOfDay? selectedTime) => context
                                          .read<SettingsNotificationsBloc>()
                                          .add(
                                            SettingsNotificationsEvent
                                                .updateMuteInterval(
                                              id: state.intervals[index].id,
                                              startInterval: selectedTime,
                                            ),
                                          ),
                                    );
                                  },
                                  onEndIntervalTap: () {
                                    showTimePicker(
                                      initialTime: TimeOfDay.now(),
                                      context: context,
                                    ).then(
                                      (TimeOfDay? selectedTime) => context
                                          .read<SettingsNotificationsBloc>()
                                          .add(
                                            SettingsNotificationsEvent
                                                .updateMuteInterval(
                                              id: state.intervals[index].id,
                                              endInterval: selectedTime,
                                            ),
                                          ),
                                    );
                                  },
                                  onRemoveIntervalTap: () => context
                                      .read<SettingsNotificationsBloc>()
                                      .add(
                                        SettingsNotificationsEvent
                                            .removeMuteInterval(
                                          state.intervals[index].id,
                                        ),
                                      ),
                                ).paddingOnly(bottom: 8.h),
                              ),
                            ),
                            SizedBox(height: 8.h),
                            DLSButtonText(
                              iconLeft: Assets.icons.plus1.svg(
                                width: 12.r,
                                height: 12.r,
                                colorFilter: ColorFilter.mode(
                                  context.c_blue,
                                  BlendMode.srcIn,
                                ),
                              ),
                              text: S.current.add_mute_interval,
                              onTap: () =>
                                  context.read<SettingsNotificationsBloc>().add(
                                        const SettingsNotificationsEvent
                                            .addMuteInterval(),
                                      ),
                            ),

                            SizedBox(height: 36.h),
                            Flex(
                              direction: Axis.horizontal,
                              children: [
                                DLSButtonFlat(
                                  width: 102.w,
                                  isBordered: false,
                                  isDisabled: state.canSave,
                                  disabledColor: context.c_blue_disabled,
                                  color: context.c_blue,
                                  text: S.current.save,
                                  textStyle: context.ts_s14h16_4w400
                                      .copyWith(color: context.c_white_text),
                                  onTap: () => context
                                      .read<SettingsNotificationsBloc>()
                                      .add(
                                        const SettingsNotificationsEvent.save(),
                                      ),
                                ),
                                const Spacer(),
                                DLSButtonFlat(
                                  width: 102.w,
                                  border:
                                      Border.all(color: context.c_grey_stoke),
                                  text: S.current.cancel,
                                  textStyle: context.ts_s14h16_4w400
                                      .copyWith(color: context.c_text),
                                  onTap: () => context
                                      .read<SettingsNotificationsBloc>()
                                      .add(
                                        const SettingsNotificationsEvent.read(),
                                      ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ).paddingOnly(left: 50.w),
                );
              },
            );
          },
        ),
      ),
    );
  }

  void onChangeDay({required int day, required bool value}) {
    final schedule = context.read<SettingsNotificationsBloc>().state.schedule;
    switch (day) {
      case 1:
        context.read<SettingsNotificationsBloc>().add(
              SettingsNotificationsEvent.changeSchedule(
                schedule.copyWith(monday: value),
              ),
            );
        break;
      case 2:
        context.read<SettingsNotificationsBloc>().add(
              SettingsNotificationsEvent.changeSchedule(
                schedule.copyWith(tuesday: value),
              ),
            );
        break;
      case 3:
        context.read<SettingsNotificationsBloc>().add(
              SettingsNotificationsEvent.changeSchedule(
                schedule.copyWith(wednesday: value),
              ),
            );
        break;
      case 4:
        context.read<SettingsNotificationsBloc>().add(
              SettingsNotificationsEvent.changeSchedule(
                schedule.copyWith(thursday: value),
              ),
            );
        break;
      case 5:
        context.read<SettingsNotificationsBloc>().add(
              SettingsNotificationsEvent.changeSchedule(
                schedule.copyWith(friday: value),
              ),
            );
        break;
      case 6:
        context.read<SettingsNotificationsBloc>().add(
              SettingsNotificationsEvent.changeSchedule(
                schedule.copyWith(saturday: value),
              ),
            );
        break;
      case 7:
        context.read<SettingsNotificationsBloc>().add(
              SettingsNotificationsEvent.changeSchedule(
                schedule.copyWith(sunday: value),
              ),
            );
        break;
      default:
        break;
    }
  }

  void onTapScheduleEnabled() => context.read<SettingsNotificationsBloc>().add(
        SettingsNotificationsEvent.enableSchedule(
          !context.read<SettingsNotificationsBloc>().state.scheduleEnabled,
        ),
      );

  void onTapNotificationEnabled() =>
      context.read<SettingsNotificationsBloc>().add(
            SettingsNotificationsEvent.enableNotifications(
              !context
                  .read<SettingsNotificationsBloc>()
                  .state
                  .notificationsEnabled,
            ),
          );
}
