import 'package:dls_one/core/core.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// TODO: необходимо переделать на использование lib/core/widgets/src/dls_avatar.dart
/// Удалить дубликат [DLSAvatar]
class DlsAvatar extends StatefulWidget {
  const DlsAvatar({
    required this.matrixUserId,
    this.onTap,
    this.text,
    this.overrideText,
    this.color,
    this.statusColor,
    this.border,
    this.textStyle,
    this.size = 40,
    this.onlineVisible = true,
    super.key,
  });

  final double size;
  final VoidCallback? onTap;
  final String? text;
  final String? overrideText;
  final String? matrixUserId;
  final Color? color;
  final Color? statusColor;
  final BoxBorder? border;
  final TextStyle? textStyle;
  final bool onlineVisible;

  @override
  State<DlsAvatar> createState() => _DlsAvatarState();
}

class _DlsAvatarState extends State<DlsAvatar> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _loadUserAvatar();
    });
  }

  @override
  void didUpdateWidget(DlsAvatar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.matrixUserId != widget.matrixUserId) {
      _loadUserAvatar();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            alignment: Alignment.center,
            height: widget.size.r,
            width: widget.size.r,
            child:
                BlocBuilder<UsersBloc, UsersState>(builder: (context, state) {
              if (state.store[widget.matrixUserId] == null) {
                return Container(
                  alignment: Alignment.center,
                  height: widget.size.r,
                  width: widget.size.r,
                  decoration: BoxDecoration(
                    border: widget.border,
                    shape: BoxShape.circle,
                    color: widget.color ?? context.c_blue,
                  ),
                  child: Text(
                    widget.overrideText ??
                        (widget.text != null
                            ? (widget.text!.isNotEmpty
                                ? widget.text![0].toUpperCase()
                                : '')
                            : ''),
                    style: widget.textStyle ??
                        context.ts_s13h15w500
                            .copyWith(color: context.c_white_text),
                    textAlign: TextAlign.center,
                  ),
                );
              }
              return Container(
                alignment: Alignment.center,
                height: widget.size.r,
                width: widget.size.r,
                decoration: BoxDecoration(
                  border: widget.border,
                  shape: BoxShape.circle,
                  color: widget.color ?? context.c_blue,
                  image: state.store[widget.matrixUserId]?.avatar != null
                      ? DecorationImage(
                          image: ExtendedImage.network(
                            state.store[widget.matrixUserId]!.avatar!,
                          ).image,
                          fit: BoxFit.cover,
                        )
                      : null,
                ),
                child: state.store[widget.matrixUserId]!.avatar == null
                    ? Text(
                        widget.overrideText ??
                            (widget.text != null
                                ? (widget.text!.isNotEmpty
                                    ? widget.text![0].toUpperCase()
                                    : '')
                                : ''),
                        style: widget.textStyle ??
                            context.ts_s13h15w500
                                .copyWith(color: context.c_white_text),
                        textAlign: TextAlign.center,
                      )
                    : const SizedBox(),
              );
            }),
          ),
          if (widget.onlineVisible)
            BlocBuilder<UsersBloc, UsersState>(
              builder: (context, state) {
                if (state.store[widget.matrixUserId] == null) {
                  return const SizedBox();
                }
                if (state.store[widget.matrixUserId]?.currentlyActive ??
                    false) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 12.r,
                        width: 12.r,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: context.c_grey_stoke,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 8.r,
                        width: 8.r,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: widget.statusColor ?? context.c_green,
                        ),
                      ),
                    ],
                  );
                }
                return const SizedBox();
              },
            ),
        ],
      ),
    );
  }

  void _loadUserAvatar() {
    if (!mounted) {
      return;
    }

    /// возможно такого пользователя вообще нет в сторе
    /// тогда грузим
    if (context.read<UsersBloc>().state.store[widget.matrixUserId] == null) {
      context.read<UsersBloc>().add(
            UsersEvent.read(
              usersIds: [widget.matrixUserId ?? ''],
              onFinishLoad: () {
                if (mounted) {
                  setState(() {});
                }
              },
            ),
          );
    }
  }
}
