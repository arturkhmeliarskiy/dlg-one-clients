import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class DlsUsersList extends StatelessWidget {
  const DlsUsersList({
    required this.users,
    required this.selectedUsers,
    required this.cantDeselectSelfMatrixId,
    this.selectOnlyOne = false,
    super.key,
  });

  final List<DLSUser> users;
  final List<DLSUser> selectedUsers;
  final String? cantDeselectSelfMatrixId;
  final bool selectOnlyOne;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, i) {
        if (users[i].dlsId == null) {
          return const SizedBox();
        }

        final isSelected = selectedUsers.any(
          (element) => element.dlsId == users[i].dlsId,
        );
        return DlsUserListItem(
          user: users[i],
          isSelected: isSelected,
          onTap: () => isSelected
              ? context.read<SearchAndSelectUsersBloc>().add(
                    SearchAndSelectUsersEvent.deselect(
                      users[i].dlsId!,
                      cantDeselectSelfMatrixId,
                    ),
                  )
              : context.read<SearchAndSelectUsersBloc>().add(
                    selectOnlyOne
                        ? SearchAndSelectUsersEvent.selectOne(
                            users[i].dlsId!,
                          )
                        : SearchAndSelectUsersEvent.select(
                            users[i].dlsId!,
                          ),
                  ),
        );
      },
    );
  }
}
