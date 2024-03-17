part of 'add_contact_dialog.dart';

/// для состояния data (валидации через смс)
/// title - заголовок диалога
/// content - текст диалога
/// inputLabel - заголовок инпута
/// inputHint - подсказка в инпуте
/// onBack - обработчик кнопки назад
/// onChange - обработчик изменения значения инпута
/// repeatRequestCode - обработчик кнопки повторного запроса кода подтверждения
/// errorMessage - сообщение об ошибке под инпутом
class _DataWidget extends StatefulWidget {
  const _DataWidget({
    required this.title,
    required this.content,
    required this.inputLabel,
    required this.inputHint,
    required this.onBack,
    required this.onChange,
    required this.repeatRequestCode,
    this.errorMessage,
  });

  final String title;
  final String content;
  final String inputLabel;
  final String inputHint;
  final String? errorMessage;
  final VoidCallback onBack;
  final ValueChanged<String> onChange;
  final VoidCallback repeatRequestCode;

  @override
  State<_DataWidget> createState() => _DataWidgetState();
}

class _DataWidgetState extends State<_DataWidget>
    with SingleTickerProviderStateMixin {
  late final Ticker ticker;
  final controller = TextEditingController();
  Duration _elapsed = Duration.zero;

  @override
  void initState() {
    super.initState();
    ticker = createTicker((elapsed) {
      if (elapsed.inSeconds > 60) {
        ticker.stop(canceled: true);
        setState(() {
          _elapsed = Duration.zero;
        });
      } else {
        setState(() {
          _elapsed = elapsed;
        });
      }
    })
      ..start();
  }

  @override
  void dispose() {
    controller.dispose();
    ticker.dispose();
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
            left: 14.w,
            bottom: 10.h,
            top: 16.w,
            child: DLSButtonText(
              iconLeft: Assets.icons.back.svg(
                width: 18.r,
                height: 18.r,
                colorFilter: ColorFilter.mode(
                  context.c_text_grey,
                  BlendMode.srcIn,
                ),
              ),
              textStyle: context.ts_s14h16_4w400.copyWith(
                color: context.c_text_grey,
              ),
              text: S.current.back,
              onTap: widget.onBack,
            ),
          ),
          DlsPadding.only(
            left: 20.w,
            bottom: 16.h,
            right: 20.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DlsPadding.only(
                  bottom: 8.h,
                  child: DLSHeaders.h2(widget.title),
                ),
                Text(
                  widget.content,
                  style: context.ts_s14h14w400.copyWith(
                    color: context.c_text_grey,
                  ),
                ),
              ],
            ),
          ),
          const DLSDivider(),
          DlsPadding.symmetric(
            vertical: 20.h,
            horizontal: 20.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DLSInput(
                  errorMessage: widget.errorMessage,
                  width: 360.w,
                  label: widget.inputLabel,
                  hint: widget.inputHint,
                  controller: controller,
                  autofocus: true,
                  onChanged: widget.onChange,
                ),
                if (_elapsed.inSeconds < 60 && _elapsed != Duration.zero)
                  DlsPadding.only(
                    top: 16.h,
                    child: Text(
                      S.current.registration_approve_code_resend_time(
                        formatTimeHHMMSS(
                            const Duration(seconds: 60) - _elapsed),
                      ),
                      style: context.ts_s12h14w400.copyWith(
                        color: context.c_text_grey,
                      ),
                    ),
                  )
                else
                  DlsPadding.only(
                    top: 16.h,
                    child: DLSButtonText(
                      textStyle: context.ts_s14h16_4w400.copyWith(
                        color: context.c_blue,
                      ),
                      text: S.current.registration_resend_approve_code,
                      onTap: () {
                        widget.repeatRequestCode();
                        ticker.start();
                      },
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
