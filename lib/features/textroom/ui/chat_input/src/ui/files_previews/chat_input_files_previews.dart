import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/const/constants.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/ui/chat_input/src/bloc/chat_input_bloc.dart';
import 'package:dls_one/models/dls_file.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_size/flutter_keyboard_size.dart';
import 'package:open_filex/open_filex.dart';

part 'audio_preview.dart';
part 'doc_preview.dart';
part 'image_preview.dart';
part 'video_preview.dart';

/// лента файлов
class ChatInputFilesPreviews extends StatelessWidget with NotificationsMixin {
  /// картинки
  /// видео
  /// документы
  /// аудио
  const ChatInputFilesPreviews({
    required List<DLSFile> images,
    required List<DLSFile> videos,
    required List<DLSFile> docs,
    required List<DLSFile> audios,
    super.key,
  })  : _audios = audios,
        _docs = docs,
        _videos = videos,
        _images = images;

  final List<DLSFile> _images;
  final List<DLSFile> _videos;
  final List<DLSFile> _docs;
  final List<DLSFile> _audios;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,

      /// тут 11 это отступ снизу
      height: 44.h + 11.h,
      child: DlsPadding.only(
        bottom: 11.h,
        left: 4.w,
        right: 4.w,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            if (index == 0) {
              return _AudioPreview(
                audios: _audios,
                onDeattachTap: (String key) {
                  context
                      .read<ChatInputBloc>()
                      .add(ChatInputEvent.detachFile(key));
                },
                onOpenTap: (String key) {
                  // TODO(alexsh): old code open image before send into chat
                  // context.push('/image', extra: images.where((element) => element.key == key).first);
                },
              );
            }
            if (index == 1) {
              return _ImagePreview(
                images: _images,
                onRemoveTap: (key) {
                  context
                      .read<ChatInputBloc>()
                      .add(ChatInputEvent.detachFile(key));
                },
                onOpenTap: (key) {
                  context.navigateTo(
                    SimpleImagePreviewRoute(
                      image:
                          _images.where((element) => element.key == key).first,
                    ),
                  );
                },
              );
            }
            if (index == 2) {
              return _VideoPreview(
                videos: _videos,
                onDeattachTap: (String key) {
                  context
                      .read<ChatInputBloc>()
                      .add(ChatInputEvent.detachFile(key));
                },
                onOpenTap: (String key) {
                  // TODO(alexsh): old code open video before send into chat
                  // int i = videos.indexWhere((element) => element.key == key);
                  // context.push('/video_player/0/${videos[i].xFile!.path.split('/').last}', extra: videos[i].xFile!.path);
                },
              );
            }
            if (index == 3) {
              return _DocPreview(
                docs: _docs,
                onDeattachTap: (String key) {
                  context
                      .read<ChatInputBloc>()
                      .add(ChatInputEvent.detachFile(key));
                },
                onOpenTap: (String key) async {
                  final i = _docs.indexWhere((e) => e.key == key);
                  if (_docs[i].path == null) {
                    return;
                  }
                  final result = await OpenFilex.open(_docs[i].path);
                  if (result.type == ResultType.noAppToOpen) {
                    // ignore: use_build_context_synchronously
                    showDLSSnackBar(context, result.message);
                  }
                  if (result.type == ResultType.error) {
                    // ignore: use_build_context_synchronously
                    showDLSSnackBar(
                      context,
                      S.current.errorMessageFormat(result.message),
                    );
                  }
                },
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
