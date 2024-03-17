import 'package:dls_one/common/gen/localization/l10n.dart';
import 'package:dls_one/core/widgets.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/features/auth/presentation/bloc/reg_bloc.dart';
import 'package:dls_one/features/auth/presentation/ui/email_confirmation_page/mobile_email_confirmation_layout.dart';
import 'package:dls_one/features/auth/presentation/ui/email_confirmation_page/web_email_confirmation_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ConfirmationType {
  registration,
  reset,
}

extension on ConfirmationType {
  String get title {
    switch (this) {
      case ConfirmationType.registration:
        return S.current.checking_mail;
      case ConfirmationType.reset:
        return S.current.reset_password;
    }
  }
}

class EmailConfirmationPage extends StatefulWidget {
  const EmailConfirmationPage({
    required this.onSuccess,
    required this.type,
    super.key,
  });

  final VoidCallback onSuccess;
  final ConfirmationType type;

  @override
  State<EmailConfirmationPage> createState() => _EmailConfirmationPageState();
}

class _EmailConfirmationPageState extends State<EmailConfirmationPage>
    with SingleTickerProviderStateMixin {
  final _focusNode = FocusNode();
  late final Ticker _ticker;

  Duration _elapsed = Duration.zero;

  String _code = '';

  void _confirmCode() {
    if (_code.length >= 4) {
      context.read<RegBloc>().add(
            RegEvent.approveCode(
              approveCode: _code,
              callback: (bool ok) {
                if (ok) {
                  widget.onSuccess();
                }
              },
            ),
          );
    } else {
      context.read<RegBloc>().add(
            RegEvent.update(
              approveCode: _code,
            ),
          );
    }
  }

  void _onUpdateCode(String value) {
    setState(() {
      _code = value;

      _confirmCode();
    });
  }

  void _onResend() {
    final RegEvent event;

    switch (widget.type) {
      case ConfirmationType.registration:
        event = RegEvent.getApproveCode(
          callback: (bool ok) {
            if (ok) {
              _ticker.start();
            }
          },
        );
        break;
      case ConfirmationType.reset:
        event = const RegEvent.getResetPasswordApproveCode();
        _ticker.start();
        break;
    }

    context.read<RegBloc>().add(
          event,
        );
  }

  @override
  void initState() {
    super.initState();
    _ticker = createTicker(
      (elapsed) {
        setState(() {
          _elapsed = elapsed;
          if (_elapsed.inSeconds >= 10) {
            _ticker.stop(canceled: true);
            _elapsed = Duration.zero;
          }
        });
      },
    )..start();
  }

  @override
  void dispose() {
    _ticker.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        // Сброс ошибки
        context.read<RegBloc>().add(
              const RegEvent.update(),
            );
        return Future.value(true);
      },
      child: Unfocuser(
        child: DLSPageBuilder(
          wide: WebEmailConfirmationLayout(
            title: widget.type.title,
            elapsed: _elapsed,
            onNext: _code.length >= 4 ? _confirmCode : null,
            onResend: _onResend,
            onUpdateCode: _onUpdateCode,
          ),
          narrow: MobileEmailConfirmationLayout(
            title: widget.type.title,
            elapsed: _elapsed,
            onNext: _code.length >= 4 ? _confirmCode : null,
            onResend: _onResend,
            onUpdateCode: _onUpdateCode,
          ),
        ),
      ),
    );
  }
}
