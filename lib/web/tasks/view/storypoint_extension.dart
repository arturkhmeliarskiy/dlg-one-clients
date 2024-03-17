import 'package:dls_one/common/gen/localization/l10n.dart';
import 'package:rest_api/rest_api.dart';

extension StorypointExtension on DlsStorypointsEnum {
  String localizeToUI() {
    switch (this) {
      case DlsStorypointsEnum.unknown:
        return S.current.not_selected[0].toUpperCase() +
            S.current.not_selected.substring(1, 10);
      case DlsStorypointsEnum.zeroToThree:
        return '0 - 3';
      case DlsStorypointsEnum.threeToEight:
        return '3 - 8';
      case DlsStorypointsEnum.eightToTwentyOne:
        return '8 - 21';
      case DlsStorypointsEnum.twentyOneToFiftyFive:
        return '21 - 55';
      case DlsStorypointsEnum.fiftyFiveToOneHundredFortyFour:
        return '55 - 144';
      case DlsStorypointsEnum.moreOneHundredFortyFour:
        return S.current.more('144');
    }
  }
}
