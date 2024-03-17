import 'package:common/common.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// определяется платформа и потом принимается решение
/// о масштабировании интерфейса
extension DLSSizeExtension on num {
  /// ширина
  double get w => DlsPlatform.dlsPlatform == DlsPlatformType.mobile
      ? ScreenUtil().setWidth(this)
      : toDouble();

  /// высота
  double get h => DlsPlatform.dlsPlatform == DlsPlatformType.mobile
      ? ScreenUtil().setHeight(this)
      : toDouble();

  /// радиус
  double get r => DlsPlatform.dlsPlatform == DlsPlatformType.mobile
      ? ScreenUtil().radius(this)
      : toDouble();

  /// шрифт
  double get sp => DlsPlatform.dlsPlatform == DlsPlatformType.mobile
      ? ScreenUtil().setSp(this)
      : toDouble();
}
