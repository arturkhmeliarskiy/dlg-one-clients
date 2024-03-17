import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/core/widgets/src/dls_app_bar.dart';
import 'package:dls_one/web/create_task/create_task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class NewTaskSprintMobile extends StatelessWidget {
  const NewTaskSprintMobile({required this.onState, super.key});

  final ValueChanged<TaskState> onState;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TaskBloc>();
    return BlocBuilder<TaskBloc, TaskState>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            if (state.model.currentTask != null) {
              return true;
            }
            final result = await showDLSDialog(
              context,
              S.current.leaveFromPage,
              S.current.dataWontBeSaved,
              yesButtonLabel: S.current.leaveWithoutSaving,
              cancelButtonLabel: S.current.keepStay,
            );
            return result != null && result != DLSDialogAnswer.cancel;
          },
          child: Scaffold(
            appBar: DLSAppBar(
              title: Text(
                state.model.currentTask == null
                    ? S.current.new_task
                    : state.model.title,
                style: context.ts_s14h16_4w500,
              ),
              actions: [
                if (state.model.currentTask == null)
                  TextButton(
                    onPressed: () => bloc.add(const TaskEvent.saveTask()),
                    child: Text(
                      S.current.save,
                      style: context.ts_s14h22_4w400,
                    ),
                  )
                else ...[
                  IconButton(
                    onPressed: () {},
                    icon: Assets.icons.phone1.svg(
                      colorFilter: context.c_text_grey_color_filter,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
                  ),
                ],
              ],
            ),
            body: DLSLoaderScope(
              child: BlocListener<TaskBloc, TaskState>(
                listener: (context, state) {
                  onState(state);
                  state.whenOrNull(
                    null,
                    loading: (_) {
                      DLSLoaderScope.showLoaderOf(
                        context,
                        future: context.read<TaskBloc>().stream.firstWhere(
                              (element) => !element.isLoading,
                            ),
                      );
                    },
                  );
                },
                child: Builder(
                  builder: (context) {
                    void onChangeTitle(String value) {
                      bloc
                        ..add(
                          TaskEvent.updateModel(
                            state.model.copyWith(title: value),
                          ),
                        )
                        ..add(TaskEvent.updateTask(DlsTask(title: value)));
                    }

                    void onChangeDescription(String value) {
                      bloc
                        ..add(
                          TaskEvent.updateModel(
                            state.model.copyWith(description: value),
                          ),
                        )
                        ..add(
                            TaskEvent.updateTask(DlsTask(description: value)));
                    }

                    void onChangeExpiredAt(DateTime value) {
                      bloc
                        ..add(
                          TaskEvent.updateModel(
                            state.model.copyWith(expiredAt: value),
                          ),
                        )
                        ..add(TaskEvent.updateTask(DlsTask(expiredAt: value)));
                    }

                    void onChangeStartAt(DateTime value) {
                      bloc
                        ..add(
                          TaskEvent.updateModel(
                            state.model.copyWith(startAt: value),
                          ),
                        )
                        ..add(TaskEvent.updateTask(DlsTask(startAt: value)));
                    }

                    return state.model.currentTask == null
                        ? NewTaskMobileColumn(
                            state: state,
                            onChangeTitle: onChangeTitle,
                            onChangeDescription: onChangeDescription,
                            onChangeExpiredAt: onChangeExpiredAt,
                            onChangeStartAt: onChangeStartAt,
                          )
                        : ChangeTaskMobileColumn(
                            state: state,
                            onChangeTitle: onChangeTitle,
                            onChangeDescription: onChangeDescription,
                            onChangeExpiredAt: onChangeExpiredAt,
                            onChangeStartAt: onChangeStartAt,
                          );
                  },
                ),
              ),
            ),
            bottomNavigationBar: state.model.currentTask == null
                ? null
                : MobileTaskBottomBar(model: state.model),
          ),
        );
      },
    );
  }
}
