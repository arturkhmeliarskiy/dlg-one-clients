import 'package:dls_one/common/gen/localization/l10n.dart';

/// склонение слов
extension PluralsExtension on int {
  /// склоняет слово "человек" в зависимости от заданного числа
  String peoplePlural() {
    if (this < 21) {
      if (this >= 2 && this < 5) return S.current.people2;
      return S.current.people1;
    }
    final cs = toString()
        .substring(toString().length - 1, toString().length);
    return int.parse(cs).replyPlural();
  }

  /// склоняет слово "ответ" в зависимости от заданного числа
  String replyPlural() {
    if (this < 21) {
      if (this <= 1) return S.current.reply1;
      if (this > 1 && this < 5) return S.current.replies2;
      if (this >= 5) return S.current.replies5;
    }
    final cs = toString()
        .substring(toString().length - 1, toString().length);
    return int.parse(cs).replyPlural();
  }

  /// склоняет слово "фото" в зависимости от заданного числа
  String photoPlural() {
    if (this < 21) {
      if (this <= 1) return S.current.photo1;
      if (this > 1 && this < 5) return S.current.photo2;
      if (this >= 5) return S.current.photo5;
    }
    final cs = toString()
        .substring(toString().length - 1, toString().length);
    return int.parse(cs).photoPlural();
  }

  /// склоняет слово "ссылка" в зависимости от заданного числа
  String linkPlural() {
    if (this < 21) {
      if (this <= 1) return S.current.link1;
      if (this > 1 && this < 5) return S.current.link2;
      if (this >= 5) return S.current.link5;
    }
    final cs = toString()
        .substring(toString().length - 1, toString().length);
    return int.parse(cs).linkPlural();
  }

  /// склоняет слово "файл" в зависимости от заданного числа
  String filePlural() {
    if (this < 21) {
      if (this <= 1) return S.current.file1;
      if (this > 1 && this < 5) return S.current.file2;
      if (this >= 5) return S.current.file5;
    }
    final cs = toString()
        .substring(toString().length - 1, toString().length);
    return int.parse(cs).filePlural();
  }

  /// склоняет слово "видео" в зависимости от заданного числа
  String videoPlural() {
    if (this < 21) {
      if (this <= 1) return S.current.video1;
      if (this > 1 && this < 5) return S.current.video2;
      if (this >= 5) return S.current.video5;
    }
    final cs = toString()
        .substring(toString().length - 1, toString().length);
    return int.parse(cs).videoPlural();
  }

  /// склоняет слово "аудиофайл" в зависимости от заданного числа
  String audiofilePlural() {
    if (this < 21) {
      if (this <= 1) return S.current.audio1;
      if (this > 1 && this < 5) return S.current.audio2;
      if (this >= 5) return S.current.audio5;
    }
    final cs = toString()
        .substring(toString().length - 1, toString().length);
    return int.parse(cs).audiofilePlural();
  }

  /// склоняет слово "участник" в зависимости от заданного числа
  String memberPlural() {
    if (this < 21) {
      if (this <= 1) return S.current.member1;
      if (this > 1 && this < 5) return S.current.member2;
      if (this >= 5) return S.current.member5;
    }
    final cs = toString()
        .substring(toString().length - 1, toString().length);
    return int.parse(cs).memberPlural();
  }

  String? weekNumberPlural(){
    if(this == 1) return S.current.weekFirst;
    if(this == 2) return S.current.weekSecond;
    if(this == 3) return S.current.weekThird;
    if(this == 4) return S.current.weekFourth;
    return null;
  }
}
