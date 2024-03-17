import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class CallUsersOverlay extends StatelessWidget {
  const CallUsersOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CallUsersBloc, CallUsersState>(
      builder: (context, state) {
        if (!state.isOpened) {
          return const SizedBox();
        }
        return Container(
          width: MediaQuery.of(context).size.width,
          color: context.c_calls_background,
          alignment: Alignment.center,
          child: BlocBuilder<SipBloc, SipState>(
            builder: (context, s) {
              return s.map(
                idle: (_) => const MobileIdleState(),
                hangUp: (_) => const MobileHangUpState(),
                calling: (state) => MobileCallingState(state.info),
                activeCall: (state) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Container(
                      height: 500.h,
                      decoration: BoxDecoration(
                        color: context.c_calls_grey,
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.w,
                          vertical: 16.h,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 8.w),
                                  child: Assets.icons.usersAlt1.svg(
                                    colorFilter:
                                        context.c_white_text_color_filter,
                                    width: 18.r,
                                    height: 18.h,
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 8.w),
                                    // надо где-то взять имя группы
                                    // child:
                                    // DLSHeaders.h3(
                                    //   'name name name name name name name name name name name name name name',
                                    //   color: context.c_white_text,
                                    // ),
                                  ),
                                ),
                                DLSBody.s14(
                                  '${state.currentActiveCall.callMeta.callers.length} '
                                  '${state.currentActiveCall.callMeta.callers.length.memberPlural()}',
                                  color: context.c_placeholder,
                                ),
                              ],
                            ),
                            Expanded(
                              child: ListView.builder(
                                itemCount: state
                                    .currentActiveCall.callMeta.callers.length,
                                itemBuilder: (context, i) {
                                  return FutureBuilder(
                                    future:
                                        context.read<UsersBloc>().getUserByDlsId(
                                              state.currentActiveCall.callMeta
                                                  .callers[i].dlsId,
                                            ),
                                    initialData: DLSUser.empty(),
                                    builder: (context, snapshot) {
                                      if (!snapshot.hasData) {
                                        return const SizedBox();
                                      }
                                      final user = snapshot.data;
                                      return Padding(
                                        padding: EdgeInsets.only(top: 16.h),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 12.w),
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: 40.r,
                                                width: 40.r,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10000.r),
                                                  color: context.c_blue,
                                                  image: user?.avatar == null
                                                      ? null
                                                      : DecorationImage(
                                                          image: ExtendedImage
                                                              .network(
                                                            user!.avatar!,
                                                          ).image,
                                                          fit: BoxFit.cover,
                                                        ),
                                                ),
                                                child: user?.avatar == null
                                                    ? Text(
                                                        user!.DLSUserName
                                                            .toUpperCase(),
                                                        style: context
                                                            .ts_s13h15w500
                                                            .copyWith(
                                                          color: context
                                                              .c_white_text,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                      )
                                                    : const SizedBox(),
                                              ),
                                            ),
                                            Expanded(
                                                child: DLSHeaders.h3(
                                              user?.DLSUserName,
                                              color: context.c_white_text,
                                            ))
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
