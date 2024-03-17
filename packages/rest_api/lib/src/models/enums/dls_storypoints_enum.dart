import 'package:freezed_annotation/freezed_annotation.dart';

enum DlsStorypointsEnum {
  unknown,
  @JsonValue('0,3')
  zeroToThree,
  @JsonValue('3,8')
  threeToEight,
  @JsonValue('8,21')
  eightToTwentyOne,
  @JsonValue('21,55')
  twentyOneToFiftyFive,
  @JsonValue('55,144')
  fiftyFiveToOneHundredFortyFour,
  @JsonValue('144,1000000')
  moreOneHundredFortyFour,
}
