import 'package:flutter/services.dart';

/// скрыть клавиатуру
Future<void> hideKeyboard () async {
  await SystemChannels.textInput.invokeMethod<void>('TextInput.hide');
}

/// показать клавиатуру
Future<void> showKeyboard () async{
  await SystemChannels.textInput.invokeMethod<void>('TextInput.show');
}
