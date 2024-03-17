import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/features/settings/presentation/bloc/settings_notifications_bloc.dart';
import 'package:dls_one/web/settings/notifications/view/web_settings_notifications_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage()
class SettingsNotificationsPage extends StatelessWidget {
  const SettingsNotificationsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => SettingsNotificationsBloc(
          restApi: context.read<DlsRestApi>(),
        ),
        child: const DLSPageBuilder(
          wide: WebSettingsNotificationsLayout(),
          narrow: NotificationsSettingsLayout(),
        ),
      );
}

class NotificationsSettingsLayout extends StatefulWidget {
  const NotificationsSettingsLayout({super.key});

  @override
  State<NotificationsSettingsLayout> createState() =>
      _NotificationsSettingsLayoutState();
}

class _NotificationsSettingsLayoutState
    extends State<NotificationsSettingsLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.c_appbar,
      appBar: OldDlsAppBar(
        title: S.current.notifications,
        titleStyle: context.ts_s18h21w500,
        rightButtonIcon:
            BlocBuilder<SettingsNotificationsBloc, SettingsNotificationsState>(
          builder: (context, state) {
            return DLSButtonText(
              isDisabled: state.canSave,
              text: S.current.save,
              width: 75.w,
              onTap: () => context
                  .read<SettingsNotificationsBloc>()
                  .add(const SettingsNotificationsEvent.save()),
            );
          },
        ),
        height: 60.h,
      ),
      body: SingleChildScrollView(
        child:
            BlocBuilder<SettingsNotificationsBloc, SettingsNotificationsState>(
          builder: (context, state) {
            return state.when(
              loading: (_, __) => DLSPreloader.newDLS,
              failure: (_, __, ___) => DlsFailure(
                message: ___,
                onTap: () => AutoRouter.of(context).canPop()
                    ? context.navigateBack()
                    : null,
              ),
              payload: (settings, changed) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// кнопка вкл выкл уведомления
                    DLSButtonFlat(
                      contentAlignment: Alignment.centerLeft,
                      icon: !state.notificationsEnabled
                          ? Row(
                              children: [
                                Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    DlsSwitchPartBackground(
                                      color: context.c_blue,
                                    ),
                                    const DlsSwitchPartCircle()
                                        .paddingSymmetric(
                                      horizontal: 2.w,
                                    ),
                                  ],
                                ).paddingOnly(left: 16.w),
                                SizedBox(width: 12.w),
                                Assets.icons.volumeMute1.svg(
                                  height: 18.h,
                                  width: 18.w,
                                  color: context.c_text_grey,
                                ),
                                SizedBox(width: 4.w)
                              ],
                            )
                          : Row(
                              children: [
                                Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    DlsSwitchPartBackground(
                                      color: context.c_grey_hover,
                                    ),
                                    const DlsSwitchPartCircle()
                                        .paddingSymmetric(
                                      horizontal: 2.w,
                                    ),
                                  ],
                                ).paddingOnly(left: 16.w),
                                SizedBox(width: 12.w),
                                Assets.icons.volumeMute1.svg(
                                  height: 18.h,
                                  width: 18.w,
                                  color: context.c_text_grey,
                                ),
                                SizedBox(width: 4.w)
                              ],
                            ),
                      text: S.current.mute_sound_notifications,
                      height: 50.h,
                      border: Border.all(
                        color: context.c_white_text,
                        width: 0,
                      ),
                      textStyle:
                          context.ts_s14h14w500.copyWith(color: context.c_text),
                      mainAxisAlignment: MainAxisAlignment.start,
                      onTap: () =>
                          context.read<SettingsNotificationsBloc>().add(
                                SettingsNotificationsEvent.enableNotifications(
                                  !state.notificationsEnabled,
                                ),
                              ),
                    ),
                    Divider(height: 1.h, color: context.c_grey_stoke),

                    /// кнопка вкл выкл расписание
                    DLSButtonFlat(
                      contentAlignment: Alignment.centerLeft,
                      icon: state.scheduleEnabled
                          ? Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                DlsSwitchPartBackground(
                                  color: context.c_blue,
                                ),
                                const DlsSwitchPartCircle()
                                    .paddingSymmetric(horizontal: 2.w),
                              ],
                            ).paddingOnly(left: 16.w, right: 12.w)
                          : Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                DlsSwitchPartBackground(
                                  color: context.c_grey_hover,
                                ),
                                const DlsSwitchPartCircle()
                                    .paddingSymmetric(horizontal: 2.w),
                              ],
                            ).paddingOnly(left: 16.w, right: 12.w),
                      text: S.current.notifications_schedule,
                      height: 50.h,
                      border: Border.all(
                        color: context.c_white_text,
                        width: 0,
                      ),
                      textStyle:
                          context.ts_s14h14w500.copyWith(color: context.c_text),
                      mainAxisAlignment: MainAxisAlignment.start,
                      onTap: () =>
                          context.read<SettingsNotificationsBloc>().add(
                                SettingsNotificationsEvent.enableSchedule(
                                  !state.scheduleEnabled,
                                ),
                              ),
                    ),

                    /// дни
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DLSCheckBox(
                          text: S.current.monday,
                          val: state.schedule.monday,
                          onChanged: (bool? value) => onChangeDay(
                            day: 1,
                            value: value ?? false,
                          ),
                        ),
                        DLSCheckBox(
                          text: S.current.tuesday,
                          val: state.schedule.tuesday,
                          onChanged: (bool? value) => onChangeDay(
                            day: 2,
                            value: value ?? false,
                          ),
                        ),
                        DLSCheckBox(
                          text: S.current.wednesday,
                          val: state.schedule.wednesday,
                          onChanged: (bool? value) => onChangeDay(
                            day: 3,
                            value: value ?? false,
                          ),
                        ),
                        DLSCheckBox(
                          text: S.current.thursday,
                          val: state.schedule.thursday,
                          onChanged: (bool? value) => onChangeDay(
                            day: 4,
                            value: value ?? false,
                          ),
                        ),
                        DLSCheckBox(
                          text: S.current.friday,
                          val: state.schedule.friday,
                          onChanged: (bool? value) => onChangeDay(
                            day: 5,
                            value: value ?? false,
                          ),
                        ),
                        DLSCheckBox(
                          text: S.current.saturday,
                          val: state.schedule.saturday,
                          onChanged: (bool? value) => onChangeDay(
                            day: 6,
                            value: value ?? false,
                          ),
                        ),
                        DLSCheckBox(
                          text: S.current.sunday,
                          val: state.schedule.sunday,
                          onChanged: (bool? value) => onChangeDay(
                            day: 7,
                            value: value ?? false,
                          ),
                        ),
                      ],
                    ).paddingSymmetric(horizontal: 16.w),
                    SizedBox(height: 20.h),
                    Divider(height: 1.h, color: context.c_grey_stoke),
                    SizedBox(height: 23.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          S.current.mute_interval,
                          style: context.ts_s14h14w500
                              .copyWith(color: context.c_text),
                        ),
                        DLSButtonText(
                          text: '+ ${S.current.add}',
                          onTap: () =>
                              context.read<SettingsNotificationsBloc>().add(
                                    const SettingsNotificationsEvent
                                        .addMuteInterval(),
                                  ),
                        )
                      ],
                    ).paddingSymmetric(horizontal: 16.w),
                    SizedBox(height: 8.h),
                    Text(
                      S.current.mute_interval_desc,
                      style: context.ts_s14h16_4w400
                          .copyWith(color: context.c_placeholder),
                    ).paddingSymmetric(horizontal: 16.w),
                    SizedBox(height: 12.h),
                    Column(
                      children: List.generate(
                        state.intervals.length,
                        (index) => DLSIntervalPicker(
                          interval: state.intervals[index],
                          onStartIntervalTap: () {
                            showTimePicker(
                              initialTime: TimeOfDay.now(),
                              context: context,
                            ).then(
                              (TimeOfDay? selectedTime) =>
                                  context.read<SettingsNotificationsBloc>().add(
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
                              (TimeOfDay? selectedTime) =>
                                  context.read<SettingsNotificationsBloc>().add(
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
                                SettingsNotificationsEvent.removeMuteInterval(
                                  state.intervals[index].id,
                                ),
                              ),
                        ).paddingOnly(bottom: 8.h),
                      ),
                    ).paddingSymmetric(horizontal: 16.w),
                  ],
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
}
