import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/core/widgets/src/dls_app_bar.dart';
import 'package:dls_one/web/create_sprint/create_sprint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NarrowCreateSprintView extends StatelessWidget {
  const NarrowCreateSprintView({required this.onState, super.key});

  final ValueSetter<SprintAuthorState> onState;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SprintAuthorBloc>();
    return BlocBuilder<SprintAuthorBloc, SprintAuthorState>(
      builder: (context, state) {
        return Scaffold(
          appBar: DLSAppBar(
            title: Text(
              state.model.sprint == null
                  ? S.current.newSprint
                  : state.model.title,
              style: context.ts_s14h16_4w500,
            ),
            actions: [
              if (state.model.sprint == null)
                TextButton(
                  onPressed: () => bloc.add(const SprintAuthorEvent.save()),
                  child: Text(
                    S.current.save,
                    style: context.ts_s14h22_4w400,
                  ),
                )
              else ...[
                IconButton(
                  onPressed: (){
                    // TODO set callback
                  },
                  icon: Assets.icons.phone1.svg(
                    colorFilter: context.c_text_grey_color_filter,
                  ),
                ),
                IconButton(
                  onPressed: (){
                    // TODO set callback
                  },
                  icon: Assets.icons.ellipsisV1.svg(
                    colorFilter: context.c_text_grey_color_filter,
                  ),
                ),
              ],
            ],
          ),
          body: DLSLoaderScope(
            child: BlocListener<SprintAuthorBloc, SprintAuthorState>(
              listener: (context, state) {
                onState(state);
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
              child: state.model.sprint == null
                  ? NarrowCreateSprintMainList(model: state.model)
                  : NarrowChangeSprintView(model: state.model),
            ),
          ),
          bottomNavigationBar: state.model.sprint == null
              ? null
              : NarrowCreateSprintBottomBar(model: state.model),
        );
      },
    );
  }
}
