import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/select_users/select_users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage<List<DLSUser>>()
class MobileSelectUsersPage extends StatefulWidget with AutoRouteWrapper {
  const MobileSelectUsersPage({
    super.key,
    this.users = const [],
    this.title,
    this.actionTitle,
  });

  final List<DLSUser> users;
  final String? title;
  final String? actionTitle;

  @override
  State<MobileSelectUsersPage> createState() => _MobileSelectUsersPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchAndSelectUsersBloc(
        SearchAndSelectUsersState.initial(users),
        restApi: context.read<DlsRestApi>(),
      ),
      child: this,
    );
  }
}

class _MobileSelectUsersPageState extends State<MobileSelectUsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.c_appbar,
      appBar: MobileSelectUsersAppBar(
        title: widget.title,
        actionTitle: widget.actionTitle,
        onTap: () {
          final users =
              context.read<SearchAndSelectUsersBloc>().state.selectedUsers;
          context.router.pop(users);
        },
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 16.h),
        child: SearchAndSelectUsersWidget(
          inputPaddings: EdgeInsets.symmetric(horizontal: 16.w),
          cantDeselectSelfMatrixId: context.read<DlsMatrixClient>().myId,
        ),
      ),
    );
  }
}
