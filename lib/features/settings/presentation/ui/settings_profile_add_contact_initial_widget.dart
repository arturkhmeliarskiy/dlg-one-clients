part of 'settings_profile_add_contact_page.dart';

/// для состояния initial (инпут)
/// title - заголовок экрана
/// content - текст экрана
/// inputLabel - заголовок инпута
/// inputHint - подсказка в инпуте
/// onChange - обработчик изменения значения инпута
/// onSubmit - обработчик кнопки далее
/// cType - тип контакта (необходимо для выбора контроллера с соотв маской)
class _InitialWidget extends StatefulWidget {
  const _InitialWidget({
    required this.title,
    required this.content,
    required this.inputLabel,
    required this.inputHint,
    required this.onChange,
    required this.onSubmit,
    required this.cType,
  });

  final String title;
  final String content;
  final String inputLabel;
  final String inputHint;
  final ValueChanged<String> onChange;
  final VoidCallback onSubmit;
  final ContactType cType;

  @override
  State<_InitialWidget> createState() => _InitialWidgetState();
}

class _InitialWidgetState extends State<_InitialWidget> {
  final controller1 = TextEditingController();
  final controller2 = MaskedTextController(mask: '00000000000');

  @required
  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                  width: 288.w,
                  label: widget.inputLabel,
                  hint: widget.inputHint,
                  controller: widget.cType == ContactType.phone
                      ? controller2
                      : controller1,
                  autofocus: true,
                  keyboardType: widget.cType == ContactType.phone
                      ? TextInputType.phone
                      : TextInputType.emailAddress,
                  onChanged: widget.onChange,
                  onSubmitted: (_) => widget.onSubmit(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
