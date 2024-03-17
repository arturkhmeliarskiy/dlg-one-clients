import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_events/create_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateEventTopBar extends StatelessWidget {
  const CreateEventTopBar({
    super.key,
    required this.state,
  });

  final CreateEventsState state;

  bool get _loading => state.maybeWhen(
        (model) => false,
        orElse: () => false,
        loading: (_) => true,
      );

  bool get _success => state.maybeWhen(
        (model) => false,
        orElse: () => false,
        saveSuccess: (_) => true,
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      color: context.c_grey_grey,
      child: Row(
        children: [
          InkWell(
            onTap: () {
              if (state.model.saveEnabled) {
                context
                    .read<CreateEventsBloc>()
                    .add(const CreateEventsEvent.save());
              }
            },
            child: Container(
              height: 32.h,
              width: 94.h,
              margin: EdgeInsets.only(left: 20.w),
              decoration: BoxDecoration(
                color: state.model.saveEnabled
                    ? context.c_blue
                    : context.c_blue_disabled,
                borderRadius: BorderRadius.circular(5.r),
              ),
              alignment: Alignment.center,
              child: Text(
                S.current.save,
                style:
                    context.ts_s14h14w400.copyWith(color: context.c_white_text),
              ),
            ),
          ),
          InkWell(
            onTap: context.router.pop,
            child: Container(
              height: 32.h,
              width: 94.h,
              margin: EdgeInsets.only(left: 8.w),
              decoration: BoxDecoration(
                color: context.c_white_text,
                borderRadius: BorderRadius.circular(5.r),
              ),
              alignment: Alignment.center,
              child: Text(
                S.current.cancel,
                style: context.ts_s14h14w400,
              ),
            ),
          ),
          if (_loading)
            DlsPadding.only(
              left: 8.w,
              child: SizedBox(
                width: 20.w,
                height: 20.h,
                child: const DLSPreloader(),
              ),
            ),
          if (_success)
            DlsPadding.only(
              left: 8.w,
              child: Assets.icons.check.svg(),
            ),
          const Spacer(),
          // TODO add cancel button
          Row(
            children: [
              if (state.model.event != null)
                DlsDropDownButton<int>(
                  items: const [1],
                  dropdownWidth: 260.w,
                  onChanged: (i) {
                    context
                        .read<CreateEventsBloc>()
                        .add(const CreateEventsEvent.delete());
                  },
                  itemBuilder: (i) {
                    return SizedBox(
                      height: 32.h,
                      child: DlsPadding.symmetric(
                        horizontal: 8.w,
                        child: Row(
                          children: [
                            Assets.icons.trash
                                .svg(colorFilter: context.c_red_color_filter),
                            SizedBox(width: 4.w),
                            Text(
                              S.current.delete,
                              style: context.ts_s14h22_4w400.copyWith(
                                color: context.c_text,
                                height: 1.2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  button: Assets.icons.ellipsisV2.svg(),
                ),
              const DlsCloseButton(),
            ],
          )
        ],
      ),
    );
  }
}
