import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/core/widgets/src/dls_app_bar.dart';
import 'package:dls_one/web/create_events/create_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NarrowCreateEventView extends StatefulWidget {
  const NarrowCreateEventView({super.key, this.popOnSuccess = false});

  final bool popOnSuccess;

  @override
  State<NarrowCreateEventView> createState() => _NarrowCreateEventViewState();
}

class _NarrowCreateEventViewState extends State<NarrowCreateEventView>
    with NotificationsMixin {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CreateEventsBloc>();
    return BlocBuilder<CreateEventsBloc, CreateEventsState>(
      builder: (context, state) {
        final model = state.model;
        return Scaffold(
          appBar: DLSAppBar(
            title: Text(
              state.model.event == null
                  ? S.current.newTaskEvent
                  : state.model.name,
              style: context.ts_s14h16_4w500,
            ),
            actions: [
              TextButton(
                onPressed: () => bloc.add(const CreateEventsEvent.save()),
                child: Text(
                  S.current.save,
                  style: context.ts_s14h22_4w400,
                ),
              )
            ],
          ),
          body: DLSLoaderScope(
            child: BlocListener<CreateEventsBloc, CreateEventsState>(
              listener: (context, state) {
                _titleController.updateIfNotEqual(state.model.name);
                _descriptionController
                    .updateIfNotEqual(state.model.description);
                state.maybeWhen(null, orElse: () {}, error: (message, model) {
                  showDLSSnackBar(context, message);
                }, saveSuccess: (model) {
                  showDLSSnackBar(context, S.current.saved);
                  if (!widget.popOnSuccess) {
                    return;
                  }
                  context.router.pop(model.event);
                }, loading: (_) {
                  DLSLoaderScope.showLoaderOf(
                    context,
                    future: context.read<CreateEventsBloc>().stream.firstWhere(
                          (element) => element.maybeMap(
                            null,
                            orElse: () => true,
                            loading: (_) => false,
                          ),
                        ),
                  );
                });
              },
              child: ListView(
                children: [
                  SizedBox(height: 16.h),
                  DlsPadding.symmetric(
                    horizontal: 16.w,
                    child: WebDlsHintField(
                      controller: _titleController,
                      hintText: S.current.name_task,
                      hintStyle: context.ts_s18h21w500.copyWith(
                        height: 1,
                        color: context.c_placeholder,
                      ),
                      style: context.ts_s18h21w500.copyWith(height: 1),
                      validation: model.name.isEmpty,
                      maxLines: null,
                      onChanged: (val) =>
                          bloc.add(CreateEventsEvent.setTitle(val)),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  DlsPadding.symmetric(
                    horizontal: 16.w,
                    child: WebDlsHintField(
                      controller: _descriptionController,
                      style: context.ts_s14h22_4w400,
                      hintText: S.current.enter_description_task,
                      hintStyle: context.ts_s14h22_4w400.apply(
                        color: context.c_placeholder,
                      ),
                      maxLines: null,
                      onChanged: (val) =>
                          bloc.add(CreateEventsEvent.setDescription(val)),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  const Divider(),
                  SizedBox(height: 16.h),
                  DlsPadding.symmetric(
                    horizontal: 16.w,
                    child: NarrowCreateEventTopItems(model: model),
                  ),
                  SizedBox(height: 16.h),
                  const Divider(),
                  SizedBox(height: 16.h),
                  DlsPadding.symmetric(
                    horizontal: 16.w,
                    child: NarrowCreateEventNotificationView(model: model),
                  ),
                  SizedBox(height: 16.h),
                  const Divider(),
                  SizedBox(height: 16.h),
                  DlsPadding.symmetric(
                    horizontal: 16.w,
                    child: NarrowCreateEventBottomItems(model: model),
                  ),
                  SizedBox(height: 16.h),
                  NarrowCreateEventsCircleButtons(model: model),
                  SizedBox(height: 16.h),
                  SizedBox(height: 60.h),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
