import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/user_informaton/presentation/bloc/user_information_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage()
@Deprecated(
    'необходимо перевести все на информацию о персональном чате или на виджеты экрана')
class UserInformationPage extends StatelessWidget {
  const UserInformationPage({super.key, required this.userId, this.roomId});
  final String userId;
  final String? roomId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserInformationBloc(
        matrixClient: context.read<DlsMatrixClient>(),
        roomId: roomId,
        restApi: context.read<DlsRestApi>(),
      )..add(UserInformationEvent.read(userId)),
      child: BlocBuilder<UserInformationBloc, UserInformationState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Scaffold(body: DLSPreloader()),
            failure: (message) => Scaffold(
              body: DlsFailure(
                onTap: () => context.navigateBack(),
                message: message,
              ),
            ),
            loaded: (
              user,
              aImages,
              aVideos,
              aAudios,
              aFiles,
              aLinks,
            ) =>
                Scaffold(
              backgroundColor: context.c_white_text,
              appBar: OldDlsAppBar(
                title: S.current.information,
              ),
              body: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                child: Column(
                  children: [
                    DlsAvatarNameStatus(
                      userId: userId,
                      name: user.name ?? user.matrixName,
                    ),
                    SizedBox(height: 20.h),
                    const DLSDivider(),
                    SizedBox(height: 20.h),
                    DlsUserPersonalInfo(user: user)
                        .paddingSymmetric(horizontal: 16.w),
                    SizedBox(height: 20.h),
                    if ((aImages?.isNotEmpty ?? false) ||
                        (aVideos?.isNotEmpty ?? false) ||
                        (aAudios?.isNotEmpty ?? false) ||
                        (aFiles?.isNotEmpty ?? false) ||
                        (aLinks?.isNotEmpty ?? false))
                      const DLSDivider(),
                    if ((aImages?.isNotEmpty ?? false) ||
                        (aVideos?.isNotEmpty ?? false) ||
                        (aAudios?.isNotEmpty ?? false) ||
                        (aFiles?.isNotEmpty ?? false) ||
                        (aLinks?.isNotEmpty ?? false))
                      DlsFilesLinksImages(
                        attachmentsImage: aImages,
                        attachmentsVideo: aVideos,
                        attachmentsAudio: aAudios,
                        attachmentsFile: aFiles,
                        attachmentsLink: aLinks,
                        onTapVideo: (Map<String, dynamic>? items) {
                          final videos = <DlsChatMessageAttachment>[];
                          for (final e in items!.entries) {
                            videos.add(e.value as DlsChatMessageAttachment);
                          }
                          context.pushRoute(
                            ChatFilesVideosRoute(
                              videos: videos,
                              title: user.name ?? user.matrixName!,
                            ),
                          );
                        },
                        onTapImage: (Map<String, dynamic>? items) {
                          final images = <DlsChatMessageAttachment>[];
                          for (final e in items!.entries) {
                            images.add(e.value as DlsChatMessageAttachment);
                          }
                          context.pushRoute(
                            ChatFilesImagesRoute(
                              images: images,
                              title: user.name ?? user.matrixName!,
                            ),
                          );
                        },
                        onTapAudio: (Map<String, dynamic>? items) {
                          final audios = <DlsChatMessageAttachment>[];
                          for (final e in items!.entries) {
                            audios.add(e.value as DlsChatMessageAttachment);
                          }
                          context.pushRoute(
                            ChatFilesAudiosRoute(
                              audios: audios,
                              title: user.name ?? user.matrixName!,
                            ),
                          );
                        },
                        onTapFile: (Map<String, dynamic>? items) {
                          final docs = <DlsChatMessageAttachment>[];
                          for (final e in items!.entries) {
                            docs.add(e.value as DlsChatMessageAttachment);
                          }
                          context.pushRoute(
                            ChatFilesDocsRoute(
                              docs: docs,
                              title: user.name ?? user.matrixName!,
                            ),
                          );
                        },
                        onTapLink: (Map<String, dynamic>? items) {
                          final links = <DlsChatMessageText>[];
                          for (final e in items!.entries) {
                            links.add(e.value as DlsChatMessageText);
                          }
                          context.pushRoute(
                            ChatLinksRoute(
                              links: links,
                              title: user.name ?? user.matrixName!,
                            ),
                          );
                        },
                      ).paddingOnly(top: 20.h)
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
