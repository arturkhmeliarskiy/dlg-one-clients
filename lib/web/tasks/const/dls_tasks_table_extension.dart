import 'package:rest_api/rest_api.dart';

extension DlsTasksTableExt on List<DlsTasks> {
  List<DlsTasks> withOpenTasks(List<int> openTasks) {
    return expandTasks(this, openTasks);
  }

  static List<DlsTasks> expandTasks(
    List<DlsTasks> list,
    List<int> openTasks, {
    int nesting = 0,
  }) {
    return list
        .map((e) {
          e = e.copyWith(nesting: nesting);
          if (openTasks.contains(e.id)) {
            return [
              e.copyWith(isCheck: true),
              ...expandTasks(
                e.subTasks ?? [],
                openTasks,
                nesting: nesting + 1,
              ),
            ];
          }
          return [e];
        })
        .expand((e) => e)
        .toList();
  }

  List<int> getAllParentIds() {
    return map((e) {
      if (e.subTasks?.isEmpty ?? true) {
        return [1];
      }
      final subtaskIds = (e.subTasks ?? []).getAllParentIds();
      final list = [e.id, ...subtaskIds];
      return list;
    }).expand((id) => id).toList();
  }
}
