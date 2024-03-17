import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/search_and_select_users/ui/dls_users_list.dart';
import 'package:dls_one/core/search_and_select_users/ui/user_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchAndSelectUsersWidget extends StatefulWidget {
  const SearchAndSelectUsersWidget({
    required this.cantDeselectSelfMatrixId,
    super.key,
    this.inputPaddings = EdgeInsets.zero,
    this.selectedItemsMaxHeightArea,
  });

  final EdgeInsets inputPaddings;
  final double? selectedItemsMaxHeightArea;
  final String? cantDeselectSelfMatrixId;

  @override
  State<SearchAndSelectUsersWidget> createState() =>
      _SearchAndSelectUsersWidgetState();
}

class _SearchAndSelectUsersWidgetState
    extends State<SearchAndSelectUsersWidget> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchAndSelectUsersBloc, SearchAndSelectUsersState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: widget.inputPaddings,
              child: DLSInput(
                autofocus: true,
                prefixIcon: Assets.icons.search1.svg(
                  width: 18.r,
                  height: 18.r,
                  colorFilter: context.c_text_grey_color_filter,
                ),
                hint: S.current.search,
                controller: controller,
                onChanged: (value) => context
                    .read<SearchAndSelectUsersBloc>()
                    .add(SearchAndSelectUsersEvent.search(controller.text)),
              ).paddingOnly(bottom: 8.h),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: widget.selectedItemsMaxHeightArea ?? 68.h,
              ),
              child: SingleChildScrollView(
                padding: widget.inputPaddings,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Wrap(
                      children: List.generate(
                        state.selectedUsers.length,
                        (i) => Padding(
                          padding: EdgeInsets.only(right: 8.w, bottom: 8.h),
                          child: UserChip(
                            user: state.selectedUsers[i],
                            onClose: widget.cantDeselectSelfMatrixId !=
                                    state.selectedUsers[i].id
                                ? () => context
                                    .read<SearchAndSelectUsersBloc>()
                                    .add(
                                      SearchAndSelectUsersEvent.deselect(
                                        state.selectedUsers[i].dlsId!,
                                        widget.cantDeselectSelfMatrixId,
                                      ),
                                    )
                                : null,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const DLSDivider().paddingOnly(
              top: state.selectedUsers.isEmpty ? 8.h : 0,
            ),
            Expanded(
              child: state.when(
                data: (selectedUsers, users) => users.isNotEmpty
                    ? DlsUsersList(
                        users: users,
                        selectedUsers: selectedUsers,
                        cantDeselectSelfMatrixId:
                            widget.cantDeselectSelfMatrixId,
                      )
                    : Center(
                        child: DLSHeaders.h3(
                          S.current.searchResultsIsEmpty,
                        ),
                      ),
                initial: (selectedUsers, suggestedUsers) =>
                    suggestedUsers.isNotEmpty
                        ? DlsUsersList(
                            users: suggestedUsers,
                            selectedUsers: selectedUsers,
                            cantDeselectSelfMatrixId:
                                widget.cantDeselectSelfMatrixId,
                          )
                        : Center(
                            child: DLSHeaders.h3(
                              S.current.startTypeForSearch,
                            ),
                          ),
                loading: (selectedUsers) => DLSPreloader.newDLS,
                failure: (selectedUsers, message) =>
                    DlsFailure(message: message),
              ),
            ),
          ],
        );
      },
    );
  }
}
