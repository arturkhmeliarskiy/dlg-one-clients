// ignore_for_file: public_member_api_docs

import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/chat/search_chat/search_result_ui_type.dart';
import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart';
import 'package:rest_api/rest_api.dart';

class WebSearchResultsList extends StatelessWidget {
  const WebSearchResultsList({
    required this.data,
    required this.onNewUserTap,
    required this.onItemTap,
    this.typeUi = SearchResultUiType.all,
    super.key,
  });

  final List<Object> data;
  final ValueChanged<DLSUser> onNewUserTap;
  final ValueChanged<String> onItemTap;
  final SearchResultUiType typeUi;

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return Center(
        child: DLSHeaders.h3(
          S.current.searchResultsIsEmpty,
        ),
      );
    }
    var users = <DLSUser>[];
    var rooms = <Room>[];
    switch (typeUi) {
      case SearchResultUiType.personalChatsAndUsers:
        rooms = data
            .whereType<Room>()
            .where((element) => element.isDirectChat)
            .toList();
        users = data
            .where(
              (u) =>
                  u is DLSUser &&
                  !rooms.any(
                    (r) => r.getParticipants().any((p) => u.id == p.id),
                  ),
            )
            .toList()
            .cast<DLSUser>();
        break;
      case SearchResultUiType.groupChats:
        rooms = data
            .whereType<Room>()
            .where((element) => !element.isDirectChat)
            .toList();
        break;
      case SearchResultUiType.all:
        rooms = data.whereType<Room>().toList();
        users = data
            .where(
              (u) =>
                  u is DLSUser &&
                  !rooms.any(
                    (r) => r.getParticipants().any((p) => u.id == p.id),
                  ),
            )
            .toList()
            .cast<DLSUser>();
        break;
    }
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          WebRoomsList(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            rooms: rooms,
            onItemTap: onItemTap,
          ),
          if (rooms.isNotEmpty && users.isNotEmpty)
            Row(
              children: <Widget>[
                const Expanded(
                  child: Divider(),
                ),
                DlsPadding.symmetric(
                  horizontal: 12.w,
                  child: Text(
                    S.current.newContacts,
                    style: context.ts_s12h12w400.copyWith(
                      color: context.c_text_grey,
                    ),
                  ),
                ),
                const Expanded(
                  child: Divider(),
                ),
              ],
            ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: users.length,
            itemBuilder: (context, i) {
              return DlsUserListItem(
                user: users[i],
                onTap: () => onNewUserTap(users[i]),
              );
            },
          ),
        ],
      ),
    );
  }
}
