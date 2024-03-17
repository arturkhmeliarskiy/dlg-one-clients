import 'package:common/common.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/dls_user_avatar_name.dart';
import 'package:dls_one/features/textroom/textroom.dart';
import 'package:dls_one/utils/src/etc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class AtSearch extends StatelessWidget {
  const AtSearch({
    required this.onTap,
    this.height = 120,
    this.width = 340,
    super.key,
  });

  final void Function(String, String)? onTap;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersBloc, UsersState>(
      builder: (context, users) {
        return BlocBuilder<AtSearchBloc, AtSearchState>(
          builder: (context, state) {
            return Material(
              child: Container(
                height: state.when(
                  loading: () => height.h,
                  loaded: (result, _) =>
                      result.length >= 3 ? height.h : result.length * 44.h,
                  failure: (message) => height.h,
                ),
                decoration: BoxDecoration(
                  color: context.c_white_text,
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(color: context.c_grey_stoke),
                  boxShadow: context.shadow,
                ),
                width: width.w,
                child: state.when(
                  loaded: (result, _) => result.isEmpty
                      ? Container(
                          alignment: Alignment.center,
                          child: Text(S.current.userNotFound),
                        )
                      : ListView.builder(
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, i) {
                            return _Item(
                              key: Key(
                                'AtSearchUser_${result[i].dlsId ?? result[i].id ?? getUuid}',
                              ),
                              user: result[i],
                              onTap: () =>
                                  onTap?.call(result[i].DLSUserName, _),
                              width: width,
                            );
                          },
                          itemCount: result.length,
                        ),
                  loading: () => const DLSPreloader(),
                  failure: (_) => Container(
                    alignment: Alignment.center,
                    child: Text(_),
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

class _Item extends StatefulWidget {
  const _Item({
    required this.width,
    required this.user,
    this.onTap,
    super.key,
  });

  final VoidCallback? onTap;
  final double width;
  final DLSUser user;

  @override
  State<_Item> createState() => _ItemState();
}

class _ItemState extends State<_Item> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final button = InkWell(
      onTap: widget.onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
        child: Row(
          children: [
            DlsUserAvatarName(
              matrixId: widget.user.id!,
              text: widget.user.DLSUserName,
              textWidth: widget.width.w - 80.w,
            )
          ],
        ),
      ),
    );
    if (DlsPlatform.dlsPlatform == DlsPlatformType.mobile) {
      return button;
    }
    return MouseRegion(
      onHover: (value) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (value) {
        setState(() {
          _isHovered = false;
        });
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: _isHovered ? context.c_grey_hover : Colors.transparent,
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: button,
      ),
    );
  }
}
