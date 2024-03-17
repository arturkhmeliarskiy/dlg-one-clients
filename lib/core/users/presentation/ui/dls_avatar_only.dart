import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DLSAvatarOnly extends StatelessWidget {
  DLSAvatarOnly({
    required this.matrixId,
    required UsersBloc usersBloc,
    this.size,
    super.key,
  }) {
    /// возможно такого пользователя вообще нет в сторе
    /// тогда грузим
    if (usersBloc.state.store[matrixId] == null) {
      usersBloc.add(UsersEvent.read(usersIds: [matrixId]));
    }
  }

  final String matrixId;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersBloc, UsersState>(
      builder: (context, state) {
        final u = state.store[matrixId];
        if (u == null) {
          return Container(
            alignment: Alignment.center,
            height: size?.r ?? 20.r - 1.r,
            width: size?.r ?? 20.r - 1.r,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.c_blue,
            ),
          );
        }
        return DLSAvatar(
          size: size?.r ?? 20.r,
          imageUrl: state.store[matrixId]?.avatar ?? '',
          username: u.DLSUserName,
        );
      },
    );
  }
}
