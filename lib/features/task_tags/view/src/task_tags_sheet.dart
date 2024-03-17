import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/core/widgets/src/dls_app_bar.dart';
import 'package:dls_one/features/task_tags/task_tags.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/create_task/create_task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class TaskTagsSheet extends StatefulWidget {
  const TaskTagsSheet({
    super.key,
    this.pickedTags = const [],
  });

  final List<TaskTagModel> pickedTags;

  @override
  State<TaskTagsSheet> createState() => _TaskTagsSheetState();

  static Future<List<TaskTagModel>?> show(
    BuildContext context, {
    List<TaskTagModel> pickedTags = const [],
  }) {
    final api = context.read<DlsRestApi>();
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (context) {
        return BlocProvider<TaskTagsBloc>(
          create: (_) => TaskTagsBloc(api.tasksTagsApi),
          child: TaskTagsSheet(pickedTags: pickedTags),
        );
      },
    );
  }
}

class _TaskTagsSheetState extends State<TaskTagsSheet> with NotificationsMixin {
  final _controller = TextEditingController();
  late final ValueNotifier<List<TaskTagModel>> pickedTagsNotifier;
  final _debounce = DlsDebounce(const Duration(seconds: 1));

  @override
  void initState() {
    super.initState();
    pickedTagsNotifier = ValueNotifier(widget.pickedTags);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _addTag() async {
    final bloc = context.read<TaskTagsBloc>();
    final result = await MobileEnterTextSheet.show(context) ?? '';
    if (result.isEmpty) {
      return;
    }
    bloc.add(TaskTagsEvent.addTag(result));
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TaskTagsBloc>();
    return ValueListenableBuilder<List<TaskTagModel>>(
      valueListenable: pickedTagsNotifier,
      builder: (context, pickedTags, _) {
        return BlocBuilder<TaskTagsBloc, TaskTagsState>(
          bloc: bloc,
          builder: (context, state) {
            final pickedTagIds = pickedTags.map((e) => e.id).toList();
            return Scaffold(
              backgroundColor: Colors.transparent,
              appBar: DLSAppBar(
                title: Text(S.current.tags),
                actions: [
                  DLSButtonFlat(
                    text: S.current.apply,
                    onTap: () {
                      context.router.pop(pickedTags);
                    },
                    textStyle:
                        context.ts_s14h14w400.copyWith(color: context.c_blue),
                    border: Border.all(color: Colors.transparent),
                  ),
                ],
              ),
              body: DLSLoaderScope(
                child: BlocListener<TaskTagsBloc, TaskTagsState>(
                  listener: (context, state) {
                    state.whenOrNull(
                      error: (message, _) {
                        // TODO refactor after merge
                        showDLSSnackBar(context, message);
                      },
                      loading: (_) {
                        DLSLoaderScope.showLoaderOf(
                          context,
                          future: bloc.stream.firstWhere(
                            (element) => element.maybeMap(
                              orElse: () => true,
                              loading: (_) => false,
                            ),
                          ),
                        );
                      },
                      tagAdded: (tag, _) {
                        final list = pickedTags.toList()..add(tag);
                        pickedTagsNotifier.value = list;
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 44.h,
                        padding: EdgeInsets.symmetric(vertical: 6.h),
                        child: DlsInputSearch(
                          controller: _controller,
                          onChange: (v) async {
                            _debounce.call(() {
                              bloc.add(TaskTagsEvent.fetch(title: v));
                            });
                          },
                        ),
                      ),
                      Expanded(
                        // TODO config Pagination fetching
                        child: ListView(
                          children: [
                            SizedBox(
                              height: 44.h,
                              child: DlsPadding.only(
                                left: 16.w,
                                child: DLSButtonText(
                                  text: '+ ${S.current.add}',
                                  onTap: _addTag,
                                  alignment: MainAxisAlignment.start,
                                ),
                              ),
                            ),
                            ...state.model.tags.map(
                              (tag) {
                                final checked = pickedTagIds.contains(tag.id);
                                return TaskTagItem(
                                  tag: tag,
                                  checked: checked,
                                  onTap: () {
                                    final list = pickedTags.toList();
                                    if (checked) {
                                      list.removeAt(
                                          pickedTagIds.indexOf(tag.id));
                                    } else {
                                      list.add(tag);
                                    }
                                    pickedTagsNotifier.value = list;
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
