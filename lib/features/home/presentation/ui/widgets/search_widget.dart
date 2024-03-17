import 'package:dls_one/common/gen/localization/l10n.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({
    Key? key,
    required TextEditingController textController,
  })  : _textController = textController,
        super(key: key);

  final TextEditingController _textController;

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  void initState() {
    super.initState();
    widget._textController.addListener(_listener);
  }

  void _listener() {
    setState(() {});
  }

  @override
  void dispose() {
    widget._textController.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _SearchLayout(
      widget1: const DlsBackButton(),
      widget2: TextField(
        controller: widget._textController,
        style: context.ts_s14h22_4w400,
        maxLines: 1,
        autofocus: true,
        autocorrect: true,
        cursorColor: context.c_text,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          hintText: S.current.name_job_department,
          hintStyle:
              context.ts_s14h22_4w400.copyWith(color: context.c_placeholder),
          isDense: true,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
      widget3: widget._textController.text.isNotEmpty
          ? Assets.icons.times1.svg(
              width: 18.w,
              height: 18.h,
              color: context.c_text_grey,
            )
          : null,
      widgetOnTap3: () => widget._textController.clear(),
    );
  }
}

class _SearchLayout extends StatelessWidget {
  const _SearchLayout({
    Key? key,
    // ignore: unused_element
    this.height,
    this.widget1,
    this.widget2,
    this.widget3,
    // ignore: unused_element
    this.widgetOnTap1,
    // ignore: unused_element
    this.widgetOnTap2,
    this.widgetOnTap3,
  }) : super(key: key);
  final double? height;
  final Widget? widget1;
  final Widget? widget2;
  final Widget? widget3;
  final GestureTapCallback? widgetOnTap1;
  final GestureTapCallback? widgetOnTap2;
  final GestureTapCallback? widgetOnTap3;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.c_grey_grey,
        borderRadius: BorderRadius.all(Radius.circular(5.r)),
      ),
      child: CustomMultiChildLayout(
        delegate: _SearchDelegate(
          Size(
            MediaQuery.of(context).size.width,
            height ?? 32.h,
          ),
        ),
        children: [
          if (widget1 != null)
            LayoutId(
              id: 's1',
              child: widget1!.gestureDetector(onTap: widgetOnTap1),
            ),
          if (widget2 != null)
            LayoutId(
              id: 's2',
              child: widget2!.gestureDetector(onTap: widgetOnTap2),
            ),
          if (widget3 != null)
            LayoutId(
              id: 's3',
              child: widget3!.gestureDetector(onTap: widgetOnTap3),
            ),
        ],
      ),
    );
  }
}

class _SearchDelegate extends MultiChildLayoutDelegate {
  final Size preferredSize;

  _SearchDelegate(this.preferredSize);

  @override
  Size getSize(BoxConstraints constraints) => preferredSize;

  @override
  void performLayout(Size size) {
    var s1 = const Size(0, 0);
    var s2 = const Size(0, 0);
    var s3 = const Size(0, 0);

    if (hasChild('s1')) {
      s1 = layoutChild('s1', BoxConstraints.loose(size));
      positionChild('s1', Offset(8.w, size.height / 2 - s1.height / 2));
    }

    if (hasChild('s3')) {
      s3 = layoutChild('s3', BoxConstraints.loose(size));
      positionChild('s3',
          Offset(size.width - s3.width - 8.w, size.height / 2 - s3.height / 2));
    }

    if (hasChild('s2')) {
      s2 = layoutChild(
          's2',
          BoxConstraints.loose(Size(
              size.width -
                  (s1.width > 0 ? s1.width + 8.w + 8.w : 0) -
                  (s3.width > 0 ? s3.width + 8.w + 8.w : 0),
              size.height)));
      positionChild(
          's2',
          Offset(s1.width > 0 ? s1.width + 8.w + 8.w : 0,
              size.height / 2 - s2.height / 2));
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}
