import 'package:common/common.dart';
import 'package:cross_file/cross_file.dart';
import 'package:dls_one/const/constants.dart';
import 'package:dls_one/core/errors/exceptions.dart';
import 'package:dls_one/models/dls_file.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:file_picker/file_picker.dart';

/// FilePickerService Singleton class
class FilePickerService {
  factory FilePickerService() => _internalSingleton;

  FilePickerService._internal();

  static final FilePickerService _internalSingleton =
      FilePickerService._internal();

  Future<List<DLSFile>> selectFiles() async {
    final selected = <DLSFile>[];
    final fileType = DlsPlatform.dlsSubPlatform == DlsPlatformSubType.ios
        ? FileType.media
        : FileType.custom;
    final allowExtension = DlsPlatform.dlsSubPlatform == DlsPlatformSubType.ios
        ? null
        : allowedExtensions;
    final result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: fileType,
      allowedExtensions: allowExtension,
    );

    if (result != null) {
      if (DlsPlatform.dlsPlatform == DlsPlatformType.web) {
        for (final file in result.files) {
          if (file.bytes != null) {
            selected.add(
              DLSFile(
                key: getRandomString,
                data: file.bytes!,
                fileName: file.name,
              ),
            );
          }
        }
      } else {
        for (final file in result.files) {
          if (file.path != null) {
            final xFile = XFile(file.path!);
            final dlsFile = await DLSFile.fromXFile(xFile);
            selected.add(dlsFile);
          }
        }
      }
    } else {
      throw UserCancelSelectFileException();
    }
    return selected;
  }

  Future<XFile?> selectXFileSingle({
    FileType? fileType,
    List<String>? allowedExtensions,
  }) async {
    if (DlsPlatform.dlsPlatform == DlsPlatformType.desktop) {
      final result = await FilePicker.platform.pickFiles(
        type: fileType ?? FileType.custom,
        allowedExtensions: allowedExtensions,
        withData: true,
        allowMultiple: true,
      );

      if (result != null) {
        return XFile(result.files.first.path!);
      } else {
        throw UserCancelSelectFileException();
      }
    } else {
      throw Exception('Platform not desktop');
    }
  }

  Future<FilePickerResult?> selectFile({
    bool isDoc = false,
    FileType fileType = FileType.custom,
  }) async {
    final result = await FilePicker.platform.pickFiles(
      type: fileType,
      withData: true,
      allowedExtensions: isDoc ? ['doc', 'docx'] : [],
      allowMultiple: false,
    );
    if (result != null) {
      return result;
    } else {
      throw UserCancelSelectFileException();
    }
  }
}
