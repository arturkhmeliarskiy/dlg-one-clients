import 'package:flutter/material.dart';

/// Разрешенные расширения файлов для пересылки в чате
const allowedExtensions = [
  'jpeg',
  'gif',
  'jpg',
  'png',
  'pdf',
  'doc',
  'docx',
  'xls',
  'xlsx',
  'ppt',
  'pptx',
  'txt',
  'zip',
  'rar',
  'fb2',
  'epub',
  'mobi',
  'mp4',
  'm4a',
  'mp3',
  'avi',
  'mov',
  'mkv',
  '3gp',
  'mpeg',
  'mpg',
  'swf',
  'asf',
  'mp2',
  'wmv',
  'mts',
  'flv',
];

/// цвета файлов для расширения
const fileColor = <String, Color>{
  'pdf': Colors.red,
  'doc': Colors.blue,
  'docx': Colors.blue,
  'xls': Colors.green,
  'xlsx': Colors.green,
  'ppt': Colors.orangeAccent,
  'pptx': Colors.orangeAccent,
  'txt': Colors.black,
  'zip': Colors.yellow,
  'rar': Colors.yellow,
  'mp4': Colors.purpleAccent,
  'mp3': Colors.purpleAccent,
  'm4a': Colors.purpleAccent,
  'opus': Colors.purpleAccent,
  'avi': Colors.purpleAccent,
  'mkv': Colors.purpleAccent,
  'wmv': Colors.purpleAccent,
  'flv': Colors.purpleAccent,
  'mpeg': Colors.purpleAccent,
  'fb2': Colors.blueGrey,
  'epub': Colors.blueGrey,
  'mobi': Colors.blueGrey,
};

const String replacer = '___at___';

abstract class InlineColors {
  static const mentionColor = '#3C85E8';
}
