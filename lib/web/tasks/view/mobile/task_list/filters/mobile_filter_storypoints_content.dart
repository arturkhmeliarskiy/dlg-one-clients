import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/view/storypoint_extension.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class MobileFilerStorypointsContent extends StatefulWidget {
  const MobileFilerStorypointsContent({
    required this.onChangeStorypoints,
    super.key,
  });

  final void Function(int) onChangeStorypoints;

  @override
  State<MobileFilerStorypointsContent> createState() =>
      _MobileFilerStorypointsContentState();
}

class _MobileFilerStorypointsContentState
    extends State<MobileFilerStorypointsContent> {
  DlsStorypointsEnum _selectedItem = DlsStorypointsEnum.unknown;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      height: height * 0.5,
      child: ListView.builder(
        itemCount: DlsStorypointsEnum.values.length,
        itemBuilder: (context, index) {
          final selected = _selectedItem == DlsStorypointsEnum.values[index];
          return InkWell(
            onTap: () {
              setState(() {
                _selectedItem = DlsStorypointsEnum.values[index];
              });

              widget.onChangeStorypoints(
                index,
              );
            },
            child: Container(
              margin: EdgeInsets.only(
                top: 10.h,
              ),
              height: 44.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.w,
                    ),
                    child: Text(
                      DlsStorypointsEnum.values[index].localizeToUI(),
                      style: context.ts_s14h22_4w400,
                    ),
                  ),
                  if (selected)
                    Padding(
                      padding: EdgeInsets.only(
                        right: 16.w,
                      ),
                      child: Assets.icons.check.svg(
                        color: context.c_blue,
                      ),
                    )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
