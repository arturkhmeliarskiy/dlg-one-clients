import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/bloc/hover_task_bloc/hover_task_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskMenuIcons extends StatelessWidget {
  const TaskMenuIcons({
    required this.id,
    required this.deleteTask,
    super.key,
  });

  final int id;
  final VoidCallback deleteTask;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HoverTaskBloc, HoverTaskState>(
      builder: (context, state) {
        return state.maybeMap(
          preloadData: (initState) {
            if (initState.idTask == id) {
              return SizedBox(
                width: 28.w,
                height: 28.h,
                child: DlsDropDownButton<int>(
                  items: List.generate(2, (i) => i),
                  dropdownWidth: 137.w,
                  onChanged: (i) {
                    if (i == null) {
                      return;
                    }
                    if (i < 1) {
                      deleteTask();
                    }
                  },
                  itemBuilder: (i) {
                    final style = context.ts_s14h22_4w400.copyWith(
                      color: context.c_text,
                      height: 1.h,
                    );
                    if (i < 1) {
                      final list = [
                        S.current.copy,
                      ];
                      return Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: Text(
                          list[i],
                          style: style,
                        ),
                      );
                    }
                    return SizedBox(
                      height: 32.h,
                      child: DlsPadding.symmetric(
                        horizontal: 8.w,
                        child: Row(
                          children: [
                            Assets.icons.trash.svg(
                              colorFilter: context.c_red_color_filter,
                              width: 18.w,
                              height: 18.h,
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              S.current.delete,
                              style: style,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  button: Padding(
                    padding: EdgeInsets.all(4.w),
                    child: Assets.icons.ellipsisV2.svg(
                      color: context.c_text_grey,
                      width: 18.w,
                      height: 18.h,
                    ),
                  ),
                ),
              );
            } else {
              return SizedBox(
                width: 78.w,
              );
            }
          },
          orElse: () => SizedBox(
            width: 78.w,
          ),
        );
      },
    );
  }
}
