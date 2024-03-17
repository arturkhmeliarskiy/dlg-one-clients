part of 'settings_profile_add_contact_page.dart';

/// для состояния data (валидации через смс)
/// title - заголовок экрана
/// content - текст экрана
/// inputLabel - заголовок инпута
/// inputHint - подсказка в инпуте
/// onChange - обработчик изменения значения инпута
/// repeatRequestCode - обработчик кнопки повторного запроса кода подтверждения
/// errorMessage - сообщение об ошибке под инпутом
class _DataWidget extends StatefulWidget {
  const _DataWidget({
    required this.title,
    required this.content,
    required this.inputLabel,
    required this.inputHint,
    required this.onChange,
    required this.repeatRequestCode,
    this.errorMessage,
  });

  final String title;
  final String content;
  final String inputLabel;
  final String inputHint;
  final Function onChange;
  final Function repeatRequestCode;
  final String? errorMessage;

  @override
  State<_DataWidget> createState() => _DataWidgetState();
}

class _DataWidgetState extends State<_DataWidget>
    with SingleTickerProviderStateMixin {
  Duration _elapsed = Duration.zero;
  late final Ticker ticker;
  final controller = MaskedTextController(mask: '0000');

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
    ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DLSInput(
              width: 288.w,
              errorMessage: widget.errorMessage,
              label: widget.inputLabel,
              hint: widget.inputHint,
              controller: controller,
              keyboardType: TextInputType.number,
              autofocus: true,
              onChanged: (val) => widget.onChange(val),
            ),
            if (_elapsed.inSeconds < 60 && _elapsed != Duration.zero)
              Text(
                S.current.registration_approve_code_resend_time(
                  formatTimeHHMMSS(const Duration(seconds: 60) - _elapsed),
                ),
                style: context.ts_s12h14w400.copyWith(
                  color: context.c_text_grey,
                ),
              ).paddingOnly(top: 16.h)
            else
              DLSButtonText(
                textStyle: context.ts_s14h16_4w400.copyWith(
                  color: context.c_blue,
                ),
                text: S.current.registration_resend_approve_code,
                onTap: () {
                  widget.repeatRequestCode();
                  ticker.start();
                },
              ).paddingOnly(top: 16.h),
          ],
        ).paddingSymmetric(vertical: 20.h, horizontal: 20.w),
      ],
    );
  }
}
