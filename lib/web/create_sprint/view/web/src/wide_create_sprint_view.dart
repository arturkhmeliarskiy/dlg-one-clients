import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/core/widgets/src/frame/web_side_view.dart';
import 'package:dls_one/web/create_sprint/create_sprint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WideCreateSprintView extends StatelessWidget {
  const WideCreateSprintView({required this.onState, super.key});

  final ValueSetter<SprintAuthorState> onState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: WebSideView(
        topChild: BlocBuilder<SprintAuthorBloc, SprintAuthorState>(
          builder: (context, state) {
            final sprint = state.model.sprint;
            if (sprint == null) {
              return NewSprintAppBar(state: state);
            }
            return ChangeSprintAppBar(state: state);
          },
        ),
        mainChild: BlocBuilder<SprintAuthorBloc, SprintAuthorState>(
          buildWhen: (prev, current) => !current.loading,
          builder: (context, state) => MainColumnSprint(model: state.model),
        ),
        rightChild: BlocBuilder<SprintAuthorBloc, SprintAuthorState>(
          buildWhen: (prev, current) => !current.loading,
          builder: (context, state) => RightColumnSprint(model: state.model),
        ),
        overlayBuilder: (child) {
          return DLSLoaderScope(
            child: BlocListener<SprintAuthorBloc, SprintAuthorState>(
              listener: (context, state) {
                onState(state);
                final bloc = context.read<SprintAuthorBloc>();
                state.whenOrNull(
                  loading: (_) {
                    DLSLoaderScope.showLoaderOf(
                      context,
                      future: bloc.stream.firstWhere(
                        (element) => !element.loading,
                      ),
                    );
                  },
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
