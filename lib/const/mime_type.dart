import 'package:collection/collection.dart';

///[MimeType] is an enum for adding filetype for HTML Blob
enum MimeType {
  ///[avi] for .avi extension
  avi(
    name: 'AVI',
    extension: '.avi',
    type: 'video/x-msvideo',
  ),

  ///[aac] for .aac extension
  aac(
    name: 'AAC',
    extension: '.aac',
    type: 'audio/aac',
  ),

  ///[asice] for .asice
  asice(
    name: 'ASICE',
    extension: '.asice',
    type: 'application/vnd.etsi.asic-e+zip',
  ),

  ///[asics] for .asice
  asics(
    name: 'ASICS',
    extension: '.asice',
    type: 'application/vnd.etsi.asic-s+zip',
  ),

  ///[bDoc] for .asice
  bDoc(
    name: 'BDoc',
    extension: '.asice',
    type: 'application/vnd.etsi.asic-e+zip',
  ),

  ///[bmp] for .bmp extension
  bmp(
    name: 'Bitmap',
    extension: '.bmp',
    type: 'image/bmp',
  ),

  ///[csv] for .csv extension
  csv(
    name: 'CSV',
    extension: '.csv',
    type: 'text/csv',
  ),

  ///[epub] for .epub extention
  epub(
    name: 'Epub',
    extension: '.epub',
    type: 'application/epub+zip',
  ),

  ///[gif] for .gif extension
  gif(
    name: 'GIF',
    extension: '.gif',
    type: 'image/gif',
  ),

  ///[json] for .json extension
  json(
    name: 'JSON',
    extension: '.json',
    type: 'application/json',
  ),

  ///[jpeg] for .jpeg extension
  jpeg(
    name: 'JPEG',
    extension: '.jpeg',
    type: 'image/jpeg',
  ),

  ///[microsoftExcel] for .xlsx extension
  microsoftExcel(
    name: 'Microsoft Excel',
    extension: '.xlsx',
    type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
  ),

  ///[microsoftPresentation] for .pptx extension
  microsoftPresentation(
    name: 'Microsoft Presentation',
    extension: '.pptx',
    type:
        'application/vnd.openxmlformats-officedocument.presentationml.presentation',
  ),

  ///[microsoftWord] for .docx extension
  microsoftWord(
    name: 'Microsoft Word',
    extension: '.docx',
    type:
        'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  ),

  ///[mpeg] for .mpeg extension
  mpeg(
    name: 'MPEG',
    extension: '.mpeg',
    type: 'video/mpeg',
  ),

  ///[mp3] for .mp3 extension
  mp3(
    name: 'MP3',
    extension: '.mp3',
    type: 'audio/mpeg',
  ),

  ///[other] for other extension
  other(
    name: 'Other',
    extension: '',
    type: 'application/octet-stream',
  ),

  ///[otf] for .otf extension
  otf(
    name: 'OTF',
    extension: '.otf',
    type: 'font/otf',
  ),

  ///[openDocSheets] for .ods extension
  openDocSheets(
    name: 'Open Document Sheets',
    extension: '.ods',
    type: 'application/vnd.oasis.opendocument.spreadsheet',
  ),

  ///[openDocPresentation] for .odp extension
  openDocPresentation(
    name: 'Open Document Presentation',
    extension: '.odp',
    type: 'application/vnd.oasis.opendocument.presentation',
  ),

  ///[openDocText] for .odt extension
  openDocText(
    name: 'Open Document Text',
    extension: '.odt',
    type: 'application/vnd.oasis.opendocument.text',
  ),

  ///[pdf] for .pdf extension
  pdf(
    name: 'PDF',
    extension: '.pdf',
    type: 'application/pdf',
  ),

  ///[png] for .png extension
  png(
    name: 'PNG',
    extension: '.png',
    type: 'image/png',
  ),

  ///[rar] for .rar extension
  rar(
    name: 'RAR',
    extension: '.rar',
    type: 'application/x-rar-compressed',
  ),

  ///[text] for .txt extension
  text(
    name: 'Text',
    extension: '.txt',
    type: 'text/plain',
  ),

  ///[ttf] for .ttf extension
  ttf(
    name: 'TTF',
    extension: '.ttf',
    type: 'font/ttf',
  ),

  ///[zip] for .zip extension
  zip(
    name: 'ZIP',
    extension: '.zip',
    type: 'application/zip',
  );

  const MimeType({
    required this.name,
    required this.extension,
    required this.type,
  });

  factory MimeType.fromString(String value, {MimeType? defaultType}) {
    final type = MimeType.values.firstWhereOrNull(
      (element) => element.extension == '.$value' || element.type == value,
    );

    return type ?? defaultType ?? MimeType.other;
  }

  final String name;
  final String extension;
  final String type;

  static List<MimeType> get imageTypes => [bmp, gif, jpeg, png];
}
