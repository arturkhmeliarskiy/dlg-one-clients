import 'package:freezed_annotation/freezed_annotation.dart';

enum DlsBoolEnum{
  @JsonValue(0)
  no,
  @JsonValue(1)
  yes;
}

extension DlsBoolEnumExt on bool{
  DlsBoolEnum toEnum(){
    if(this) return DlsBoolEnum.yes;
    return DlsBoolEnum.no;
  }
}