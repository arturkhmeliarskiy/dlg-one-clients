part of 'add_contact_dialog.dart';

/// для состояния initial (просто инпут)
/// title - заголовок диалога
/// content - текст диалога
/// inputLabel - заголовок инпута
/// inputHint - подсказка в инпуте
/// onChange - обработчик изменения значения инпута
/// isValid - корректна ли информация в инпуте
/// onSubmit - обработчик нажатия на кнопку далее
class _InitialWidget extends StatefulWidget {
  const _InitialWidget({
    required this.title,
    required this.content,
    required this.inputLabel,
    required this.inputHint,
    required this.onChange,
    required this.onSubmit,
    required this.isValid,
  });

  final String title;
  final String content;
  final String inputLabel;
  final String inputHint;
  final ValueChanged<String> onChange;
  final VoidCallback onSubmit;
  final bool isValid;

  @override
  State<_InitialWidget> createState() => _InitialWidgetState();
}

class _InitialWidgetState extends State<_InitialWidget> {
  final controller = TextEditingController();

  @required
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DLSCard(
      width: 400.w,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DlsPadding.only(
            top: 16.h,
            bottom: 16.h,
            left: 20.w,
            right: 14.w,
            child: Row(
              children: [
                DLSHeaders.h2(widget.title),
                const Spacer(),
                DLSButtonIcon(
                  onTap: () => Navigator.pop(context),
                  color: Colors.transparent,
                  icon: Assets.icons.times1.svg(
                    height: 16.r,
                    width: 16.w,
                    colorFilter: ColorFilter.mode(
                      context.c_text_grey,
                      BlendMode.srcIn,
                    ),
                  ),
                )
              ],
            ),
          ),
          const DLSDivider(),
          DlsPadding.symmetric(
            vertical: 16.h,
            horizontal: 20.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DlsPadding.only(
                  bottom: 12.h,
                  child: Text(
                    widget.content,
                    style: context.ts_s14h14w400.copyWith(
                      color: context.c_text_grey,
                    ),
                  ),
                ),
                DlsPadding.only(
                  bottom: 20.h,
                  child: DLSInput(
                    width: 360.w,
                    label: widget.inputLabel,
                    hint: widget.inputHint,
                    controller: controller,
                    autofocus: true,
                    onChanged: widget.onChange,
                    onSubmitted: (_) => widget.onSubmit(),
                  ),
                ),
                DLSButtonFlat(
                  isBordered: false,
                  isDisabled: !widget.isValid,
                  disabledColor: context.c_blue_disabled,
                  text: S.current.next,
                  color: context.c_blue,
                  textStyle: context.ts_s14h16_4w400
                      .copyWith(color: context.c_white_text),
                  onTap: widget.onSubmit,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
