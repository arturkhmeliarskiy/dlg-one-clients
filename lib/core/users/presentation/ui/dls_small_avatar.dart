import 'package:dls_one/core/core.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DlsSmallAvatar extends StatefulWidget {
  const DlsSmallAvatar({
    Key? key,
    this.onTap,
    this.text,
    required this.matrixId,
    this.height,
    this.width,
    this.color,
    this.statusColor,
  }) : super(key: key);

  final GestureTapCallback? onTap;
  final String? text;
  final String matrixId;
  final double? height;
  final double? width;
  final Color? color;
  final Color? statusColor;

  @override
  State<DlsSmallAvatar> createState() => _DlsSmallAvatarState();
}

class _DlsSmallAvatarState extends State<DlsSmallAvatar> {
  @override
  void initState() {
    super.initState();

    /// возможно такого пользователя вообще нет в сторе
    /// тогда грузим
    if (context.read<UsersBloc>().state.store[widget.matrixId] == null) {
      context
          .read<UsersBloc>()
          .add(UsersEvent.read(usersIds: [widget.matrixId]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            height: (widget.height ?? 26.r) + 4.r,
            width: (widget.width ?? 26.r) + 4.r,
            child:
                BlocBuilder<UsersBloc, UsersState>(builder: (context, state) {
              if (state.store[widget.matrixId] == null) return Container();
              return Container(
                alignment: Alignment.center,
                height: widget.height ?? 26.r,
                width: widget.width ?? 26.r,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  color: widget.color ?? context.c_blue,
                  image: state.store[widget.matrixId]?.avatar != null
                      ? DecorationImage(
                          image: ExtendedImage.network(
                                  state.store[widget.matrixId]!.avatar!)
                              .image,
                          fit: BoxFit.cover,
                        )
                      : null,
                ),
                child: state.store[widget.matrixId]!.avatar == null
                    ? Text(
                        widget.text != null
                            ? (widget.text!.isNotEmpty
                                ? widget.text![0].toUpperCase()
                                : '')
                            : '',
                        style: context.ts_s13h15w500
                            .copyWith(color: context.c_white_text),
                        textAlign: TextAlign.center,
                      )
                    : Container(),
              );
            }),
          ),
          BlocBuilder<UsersBloc, UsersState>(
            builder: (context, state) {
              if (state.store[widget.matrixId] == null) return Container();
              if (state.store[widget.matrixId]?.currentlyActive ?? false) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 12.r,
                      width: 12.r,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.r),
                        color: context.c_grey_stoke,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 8.r,
                      width: 8.r,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.r),
                        color: widget.statusColor ?? context.c_green,
                      ),
                    ),
                  ],
                );
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
