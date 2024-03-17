import 'package:flutter/foundation.dart';
import 'package:rest_api/rest_api.dart';

class GroupInformationArgs {
  GroupInformationArgs({
    required this.canDelete,
    this.onTapAddUser,
    this.onTapUserKick,
    this.onTapRename,
    this.onTapExit,
    this.onTapDelete,
    this.onAdminAccess,
  });

  final ValueChanged<List<DLSUser>>? onTapAddUser;
  final ValueChanged<String>? onTapUserKick;
  final VoidCallback? onTapRename;
  final VoidCallback? onTapExit;
  final VoidCallback? onTapDelete;
  final void Function(DLSUser, bool)? onAdminAccess;
  final bool canDelete;
}
