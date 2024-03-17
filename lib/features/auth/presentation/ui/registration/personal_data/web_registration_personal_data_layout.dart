import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/auth/presentation/ui/web_auth_header.dart';
import 'package:dls_one/models/dls_file.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WebRegistrationPersonalDataLayout extends StatefulWidget {
  const WebRegistrationPersonalDataLayout({
    required this.onSelectAvatar,
    required this.deleteAvatar,
    required this.onDone,
    required this.avatar,
    required this.updateName,
    required this.updateSurname,
    super.key,
  });

  final ValueSetter<DLSFile> onSelectAvatar;
  final VoidCallback deleteAvatar;
  final VoidCallback? onDone;
  final ValueSetter<String> updateName;
  final ValueSetter<String> updateSurname;
  final DLSFile? avatar;

  @override
  State<WebRegistrationPersonalDataLayout> createState() =>
      _WebRegistrationPersonalDataLayoutState();
}

class _WebRegistrationPersonalDataLayoutState
    extends State<WebRegistrationPersonalDataLayout> {
  Uint8List? _avatarData;

  @override
  void initState() {
    super.initState();

    _avatarData = widget.avatar?.data;
  }

  @override
  void didUpdateWidget(WebRegistrationPersonalDataLayout oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.avatar != oldWidget.avatar) {
      _avatarData = widget.avatar?.data;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        WebAuthHeader(title: S.current.enter_data),
        SizedBox(height: 24.h),
        if (_avatarData != null)
          WebPhotoPicker(
            onChangedPhoto: widget.onSelectAvatar,
            onDeletePhoto: widget.deleteAvatar,
            image: ExtendedImage.memory(_avatarData!).image,
          )
        else
          WebPhotoPicker(
            onChangedPhoto: widget.onSelectAvatar,
            onDeletePhoto: widget.deleteAvatar,
          ),
        SizedBox(height: 16.h),
        DLSInput(
          label: S.current.name,
          hint: S.current.hint_name,
          onChanged: widget.updateName,
        ),
        SizedBox(height: 16.h),
        DLSInput(
          label: S.current.surname,
          hint: S.current.hint_surname,
          onChanged: widget.updateSurname,
        ),
        SizedBox(height: 24.h),
        ElevatedButton(
          onPressed: widget.onDone,
          child: Text(S.current.done),
        ),
      ],
    );
  }
}
