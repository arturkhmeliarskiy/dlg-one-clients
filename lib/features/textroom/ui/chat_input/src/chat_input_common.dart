import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/models/dls_file.dart';

class SendChatMessage {
  SendChatMessage({
    required this.plainMessage,
    required this.formattedMessage,
    required this.files,
  });

  final String plainMessage;
  final DlsChatMessageContent formattedMessage;
  final List<DLSFile> files;
}
