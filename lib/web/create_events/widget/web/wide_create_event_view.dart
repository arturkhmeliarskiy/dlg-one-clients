import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/web/create_events/create_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WideCreateEventView extends StatelessWidget with NotificationsMixin {
  const WideCreateEventView({
    super.key,
    this.popOnSuccess = false,
    this.onDelete,
  });

  final bool popOnSuccess;
  final VoidCallback? onDelete;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: WebSideView(
        mainChild: BlocBuilder<CreateEventsBloc, CreateEventsState>(
          buildWhen: (previous, current) => current.maybeMap(
            (_) => true,
            loading: (_) => false,
            orElse: () => true,
          ),
          builder: (context, state) => CreateEventMainView(model: state.model),
        ),
        rightChild: BlocBuilder<CreateEventsBloc, CreateEventsState>(
          buildWhen: (previous, current) => current.maybeMap(
            (_) => true,
            loading: (state) => false,
            orElse: () => true,
          ),
          builder: (context, state) => CreateEventRightView(model: state.model),
        ),
        topChild: BlocConsumer<CreateEventsBloc, CreateEventsState>(
          listener: (context, state) {
            state.maybeWhen(
              null,
              orElse: () {},
              error: (message, model) {
                showDLSSnackBar(context, message);
              },
              saveSuccess: (event) {
                showDLSSnackBar(context, S.current.saved);
                if (!popOnSuccess) {
                  return;
                }
                context.router.pop(event.event);
              },
              deleteSuccess: (event) {
                showDLSSnackBar(context, S.current.eventDeleted);
                onDelete?.call();
                context.router.pop();
              },
            );
          },
          builder: (context, state) {
            return CreateEventTopBar(state: state);
          },
        ),
        overlayBuilder: (child) {
          return DLSLoaderScope(
            child: BlocListener<CreateEventsBloc, CreateEventsState>(
              listenWhen: (prev, current) => current.maybeMap(
                null,
                orElse: () => false,
                loading: (_) => true,
              ),
              listener: (context, state) {
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
              },
              child: child,
            ),
          );
        },
      ),
    );
  }
}
