import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

/// персональная текстовая информация
/// телефон email должность отдел
class DlsUserPersonalInfo extends StatelessWidget {
  const DlsUserPersonalInfo({
    super.key,
    required this.user,
  });

  final DLSUser user;

  @override
  Widget build(BuildContext context) {
    if (
        // (user.dlsName == null) &&
        // (user.nameSurname == null) &&
        // (user.firstName == null) &&
        // (user.secondName == null) &&
        // (user.lastName == null) &&
        (user.snils == null) &&
            (user.email == null) &&
            (user.number == null) &&
            (user.department == null) &&
            (user.position == null)) {
      return Text(
        S.of(context).userPersonalInfo,
        style: context.ts_s14h22_4w400.copyWith(color: context.c_text_grey),
      );
    }
    return Column(
      children: [
        if (user.email != null)
          DlsPadding.only(
            bottom: 6.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  txt(S.current.email),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      txt(user.email),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.ts_s14h22_4w400
                          .copyWith(color: context.c_text),
                    ),
                  ),
                )
              ],
            ),
          ),
        if (user.number?.isNotEmpty ?? false)
          DlsPadding.only(
            bottom: 6.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  txt(S.current.phone),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      txt(user.number),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.ts_s14h22_4w400
                          .copyWith(color: context.c_text),
                    ),
                  ),
                )
              ],
            ),
          ),
        if (user.department?.isNotEmpty ?? false)
          DlsPadding.only(
            bottom: 6.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  txt(S.current.department),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      txt(user.department),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.ts_s14h22_4w400
                          .copyWith(color: context.c_text),
                    ),
                  ),
                )
              ],
            ),
          ),
        if (user.position?.isNotEmpty ?? false)
          DlsPadding.only(
            bottom: 6.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  txt(S.current.job_position),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      txt(user.position),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.ts_s14h22_4w400
                          .copyWith(color: context.c_text),
                    ),
                  ),
                )
              ],
            ),
          ),
        if (user.snils?.isNotEmpty ?? false)
          DlsPadding.only(
            bottom: 6.h,
            child: Row(
              children: [
                Text(
                  txt(S.current.snils),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      txt(user.snils),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.ts_s14h22_4w400
                          .copyWith(color: context.c_text),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
