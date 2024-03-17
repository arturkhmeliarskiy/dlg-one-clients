import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/chat/chat.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_build_add_button.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_build_additional_performers.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class KanbanTaskPerformers extends StatefulWidget {
  const KanbanTaskPerformers({
    required this.id,
    required this.index,
    required this.performers,
    super.key,
  });

  final int id;
  final int index;
  final List<DlsTasksExecutors>? performers;

  @override
  State<KanbanTaskPerformers> createState() => _KanbanTaskPerformersState();
}

class _KanbanTaskPerformersState extends State<KanbanTaskPerformers> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    if (widget.performers?.isEmpty ?? false) {
      return const SizedBox();
    } else {
      final count = widget.performers!.length;

      return Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: Row(
          children: [
            Stack(
              children: [
                /// аватарки исполнителей
                Stack(
                  children: List.generate(count > 2 ? 2 : count, (index) {
                    final imageUrl = widget.performers?[index].avatar ?? '';
                    return Align(
                      alignment: Alignment.centerLeft,
                      child: DLSAvatar(
                        size: 24.r,
                        username: widget.performers?[index].name ?? '',
                        imageUrl: imageUrl,
                      ).paddingOnly(left: index * 16.w),
                    );
                  }),
                ),
                TaskBuildAdditionalPerformers(
                  count: count,
                ),

                // количество исполнителей (если больше 2х)
              ],
            ),
          ],
        ),
      );
    }
  }
}
