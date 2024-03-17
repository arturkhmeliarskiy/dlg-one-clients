import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/search_and_select_users/ui/dls_users_list.dart';
import 'package:dls_one/core/search_and_select_users/ui/user_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class SearchAndSelectOneUserWidget extends StatefulWidget {
  const SearchAndSelectOneUserWidget({
    required this.cantDeselectSelfMatrixId,
    super.key,
    this.inputPaddings = EdgeInsets.zero,
    this.selectedItemsMaxHeightArea,
    this.group,
  });

  final EdgeInsets inputPaddings;
  final double? selectedItemsMaxHeightArea;
  final String? cantDeselectSelfMatrixId;
  final List<DLSUser>? group;

  @override
  State<SearchAndSelectOneUserWidget> createState() =>
      _SearchAndSelectOneUserWidgetState();
}

class _SearchAndSelectOneUserWidgetState
    extends State<SearchAndSelectOneUserWidget> {
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
                onChanged: (value) {
                  if (widget.group != null) {
                    context.read<SearchAndSelectUsersBloc>().add(
                          SearchAndSelectUsersEvent.searchInGroup(
                            controller.text,
                            widget.group!,
                          ),
                        );
                    return;
                  }

                  context
                      .read<SearchAndSelectUsersBloc>()
                      .add(SearchAndSelectUsersEvent.search(controller.text));
                },
              ).paddingOnly(bottom: 12.h),
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
                            onClose: () =>
                                context.read<SearchAndSelectUsersBloc>().add(
                                      SearchAndSelectUsersEvent.deselect(
                                        state.selectedUsers[i].dlsId!,
                                        widget.cantDeselectSelfMatrixId,
                                      ),
                                    ),
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
                        selectOnlyOne: true,
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
                            selectOnlyOne: true,
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
