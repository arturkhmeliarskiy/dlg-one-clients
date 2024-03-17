import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GroupChatPeoplePage extends StatefulWidget {
  const GroupChatPeoplePage({
    required this.id,
    required this.name,
    super.key,
  });

  final String id;
  final String name;

  @override
  State<GroupChatPeoplePage> createState() => GroupChatPeoplePageState();
}

class GroupChatPeoplePageState extends State<GroupChatPeoplePage>
    with NotificationsMixin {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: context.c_white_text,
        appBar: OldDlsAppBar(
          title:
              'new_group:${context.read<DlsMatrixClient>().homeServer?.host ?? 'undefined_homeserver'}' ==
                      widget.id
                  ? S.current.people_adding
                  : S.current.change_members,
          titleStyle: context.ts_s18h21w500,
          rightButtonIcon: DLSButtonText(
            text: S.current.next,
            width: 42.sp,
          ),
          onRightButtonTap: () {},
          height: 60.h,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DlsPadding.only(
              left: 16.w,
              right: 16.w,
              top: 16.h,
              bottom: 16.h,
              child: DlsInputSearch(
                autofocus: true,
                controller: controller,
                hint: S.current.employee_name,
                onChange: (String query) {},
                onSubmitted: (String query) {},
              ),
            ),
            // TODO(alexsh): зачем это?
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DlsPadding.symmetric(
                      horizontal: 8.w,
                      child: Wrap(
                        spacing: 8.w,
                        runSpacing: -4.h,
                      ),
                    ),
                    DlsPadding.only(
                      bottom: 10.h,
                      child: const DLSDivider(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Chip buildChip(BuildContext context, int index) {
    return Chip(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5.r),
        ),
      ),
      backgroundColor: context.c_grey_stoke,
      label: DlsPadding.only(
        right: 4.w,
        // TODO(alexsh): зачем пустая чипсина?
        child: Text(
          '',
          style: context.ts_s12h12w400.copyWith(color: context.c_text_grey),
        ),
      ),
      onDeleted: () {},
      labelPadding: EdgeInsets.zero,
      deleteIcon: Assets.icons.times1.svg(
        width: 18.w,
        height: 18.h,
        color: context.c_text_grey,
      ),
    );
  }
}
