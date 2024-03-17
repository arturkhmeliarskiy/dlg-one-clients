import 'package:collection/collection.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/home/presentation/bloc/global_chat_bloc.dart';
import 'package:dls_one/web/chat/chat_manager/chat_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

// TODO extract to core to reuse on features
Future<SimpleGroup?> groupSelectUsersDialog(
  BuildContext context,
  SimpleGroup init, {
  String title = '',
  bool loadPersonalChatsOnInit = false,
  ValueSetter<SimpleGroup>? onSelectGroup,
  ValueSetter<List<String>>? onKickUsers,
  ValueSetter<List<String>>? onAddUsers,
}) {
  final initialCount = init.users.length;

  return showDialog<SimpleGroup>(
    barrierColor: context.c_overlay_with_opacity,
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        elevation: 0,
        alignment: Alignment.center,
        insetPadding: EdgeInsets.all(12.r),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
        ),
        child: BlocProvider(
          create: (context) {
            if (!loadPersonalChatsOnInit) {
              return SearchAndSelectUsersBloc(
                SearchAndSelectUsersState.initial(
                  init.users,
                ),
                restApi: context.read<DlsRestApi>(),
              );
            }

            final privateRooms =
                context.read<GlobalChatBloc>().state.privateRooms;

            final myId = context.read<UsersBloc>().state.currentUser?.id;

            final usersIds = <String>[];

            for (final room in privateRooms) {
              if (room.summary.mHeroes != null) {
                usersIds.add(
                  room.summary.mHeroes!
                      .firstWhere((element) => element != myId),
                );
              }
            }

            return SearchAndSelectUsersBloc(
              SearchAndSelectUsersState.initial(
                init.users,
              ),
              suggestedUsersIds: usersIds,
              restApi: context.read<DlsRestApi>(),
            );
          },
          child: SizedBox(
            width: 400.w,
            height: 415.h,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DLSHeaders.h1(
                  title,
                ).paddingOnly(bottom: 20.h, left: 20.w, right: 20.w),
                const DLSDivider().paddingOnly(bottom: 20.h),
                Expanded(
                  child: SearchAndSelectUsersWidget(
                    inputPaddings: EdgeInsets.symmetric(horizontal: 20.w),
                    cantDeselectSelfMatrixId:
                        context.read<DlsMatrixClient>().myId,
                  ),
                ),
                const DLSDivider().paddingOnly(bottom: 20.h),
                BlocBuilder<SearchAndSelectUsersBloc,
                    SearchAndSelectUsersState>(
                  builder: (context, state) {
                    return _Actions(
                      SimpleGroup(
                        users: state.selectedUsers,
                        name: init.name,
                        chatId: init.chatId,
                      ),
                      initialCount,
                      onSelectGroup: onSelectGroup,
                      onKickUsers: onKickUsers,
                      onAddUsers: onAddUsers,
                    );
                  },
                ).paddingSymmetric(horizontal: 20.w),
              ],
            ).paddingSymmetric(vertical: 20.h),
          ),
        ),
      );
    },
  );
}

class _Actions extends StatefulWidget {
  const _Actions(
    this.group,
    this.initialCount, {
    required this.onSelectGroup,
    required this.onKickUsers,
    required this.onAddUsers,
  });

  final ValueSetter<SimpleGroup>? onSelectGroup;
  final ValueSetter<List<String>>? onKickUsers;
  final ValueSetter<List<String>>? onAddUsers;
  final SimpleGroup group;
  final int initialCount;

  @override
  State<_Actions> createState() => __ActionsState();
}

class __ActionsState extends State<_Actions> {
  final List<String> _deselectedUsers = [];
  final List<String> _addedUsers = [];

  List<DLSUser> _prevUsersState = [];

  @override
  void initState() {
    super.initState();

    _setSubscription();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DLSButton(
          text: _getText(),
          isShadowEnabled: false,
          color: context.c_blue,
          textColor: context.c_white_text,
          width: 113.w,
          height: 40.h,
          onTap: () {
            Navigator.pop(context, widget.group);
            widget.onSelectGroup?.call(widget.group);

            if (_deselectedUsers.isNotEmpty) {
              widget.onKickUsers?.call(_deselectedUsers);
            }

            if (_addedUsers.isNotEmpty) {
              widget.onAddUsers?.call(_addedUsers);
            }
          },
        ),
        DLSButton(
          text: S.current.cancel,
          isShadowEnabled: false,
          color: context.c_white_text,
          border: Border.all(color: context.c_grey_stoke, width: 1.r),
          width: 113.w,
          height: 40.h,
          onTap: () => Navigator.pop(context),
        ),
      ],
    );
  }

  String _getText() {
    if (widget.initialCount == 0 && _addedUsers.isEmpty) {
      return S.current.skip;
    }

    if (_addedUsers.isNotEmpty && _deselectedUsers.isNotEmpty) {
      return S.current.change;
    }

    if (_addedUsers.isNotEmpty) {
      return '${S.current.add} (${_addedUsers.length})';
    }

    if (_deselectedUsers.isNotEmpty) {
      return '${S.current.delete} (${_deselectedUsers.length})';
    }

    return S.current.done;
  }

  void _setSubscription() {
    final searchAndSelectUsersBloc =
        BlocProvider.of<SearchAndSelectUsersBloc>(context);

    _prevUsersState = searchAndSelectUsersBloc.state.selectedUsers;

    searchAndSelectUsersBloc.stream.listen((state) {
      if (state.selectedUsers.length < _prevUsersState.length) {
        late final String? id;

        for (final user in _prevUsersState) {
          if (!state.selectedUsers.contains(user)) {
            id = user.id;
            break;
          }
        }

        if (id == null) {
          return;
        }

        final indexToRemove =
            _addedUsers.indexWhere((element) => element == id);

        if (indexToRemove != -1) {
          _addedUsers.removeAt(indexToRemove);
        } else {
          _deselectedUsers.add(id);
        }
      } else if (state.selectedUsers.length > _prevUsersState.length) {
        final indexToRemove = _deselectedUsers
            .indexWhere((element) => element == state.selectedUsers.last.id);

        if (indexToRemove != -1) {
          _deselectedUsers.removeAt(indexToRemove);
        } else if (state.selectedUsers.last.id != null) {
          _addedUsers.add(state.selectedUsers.last.id!);
        }
      }

      setState(() {});

      _prevUsersState = state.selectedUsers;
    });
  }
}
