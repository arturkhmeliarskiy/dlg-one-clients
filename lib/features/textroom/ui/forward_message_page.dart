import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/bloc/forward_message_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage()
class ForwardMessagePage extends StatefulWidget {
  const ForwardMessagePage({
    required this.roomId,
    required this.eventId,
    required this.dependentsIds,
    super.key,
  });

  final String roomId;
  final String eventId;
  final List<String> dependentsIds;

  @override
  State<ForwardMessagePage> createState() => _ForwardMessagePageState();
}

class _ForwardMessagePageState extends State<ForwardMessagePage>
    with NotificationsMixin {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OldDlsAppBar(
        title: S.current.select_receiver,
        titleStyle: context.ts_s18h21w500.copyWith(color: context.c_text),
        height: 60.h,
        disableDivider: true,
      ),
      backgroundColor: context.c_white_text,
      body: BlocProvider<ForwardMessageBloc>(
        create: (context) => ForwardMessageBloc(
          matrixClient: context.read<DlsMatrixClient>(),
          restApi: context.read<DlsRestApi>(),
        )..add(
            ForwardMessageEvent.init(
              roomId: widget.roomId,
              eventId: widget.eventId,
              dependentsIds: widget.dependentsIds,
            ),
          ),
        child: BlocBuilder<ForwardMessageBloc, ForwardMessageState>(
          builder: (context, state) {
            if (state.loading) {
              return ColoredBox(
                color: context.c_white_text,
                child: const DLSPreloader(),
              );
            }

            return Column(
              children: [
                Column(
                  children: [
                    DlsInputSearch(
                      autofocus: true,
                      controller: controller,
                      hint: S.current.employee_name,
                      onChange: (String query) =>
                          context.read<ForwardMessageBloc>().add(
                                ForwardMessageEvent.update(
                                  query,
                                ),
                              ),
                    ),
                    SizedBox(height: 16.h),
                    Divider(height: 1, color: context.c_grey_stoke),
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                      state.rooms.length,
                      (i) {
                        return MobileRoomListItemRoomWrapper(
                          key: Key('${state.rooms[i].id}_ForwardMessageTo'),
                          room: state.rooms[i],
                        )
                            .paddingOnly(top: 20.h, left: 16.w, right: 16.w)
                            .gestureDetector(
                              onTap: () =>
                                  context.read<ForwardMessageBloc>().add(
                                        ForwardMessageEvent.forward(
                                          state.rooms[i],
                                          (bool ok) {
                                            if (ok) {
                                              showDLSSnackBar(
                                                context,
                                                S.current.forwarded_ok,
                                                duration: const Duration(
                                                  milliseconds: 1000,
                                                ),
                                              );
                                              context.navigateBack();
                                            } else {
                                              showDLSSnackBar(
                                                context,
                                                state.failure ??
                                                    S.current.not_member,
                                                duration: const Duration(
                                                  milliseconds: 2000,
                                                ),
                                              );
                                            }
                                          },
                                        ),
                                      ),
                            );
                      },
                    ),
                  ),
                ).expanded(),
              ],
            );
          },
        ),
      ),
    );
  }
}
