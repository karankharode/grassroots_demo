import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grassroots_demo/modules/WalletPage/models/OptionsModel.dart';

import '../modules/WalletPage/models/TokensModel.dart';

String primaryFontFamily = 'Onest';

final List<Options> optionsList = [
  Options(
    icon: FontAwesomeIcons.qrcode,
    title: 'Your address',
    active: true,
  ),
  Options(
    icon: FontAwesomeIcons.person,
    title: 'Aliases',
    active: false,
  ),
  Options(
    icon: FontAwesomeIcons.mobileButton,
    title: 'Balance',
    active: false,
  ),
  Options(
    icon: FontAwesomeIcons.arrowsLeftRight,
    title: 'Record',
    active: false,
  ),
];
final List<Tokens> tokensList = [
  Tokens(
      image: 'assets/images/coinIcons/diamond.png',
      title: "Waves",
      subtitle: "5.0054",
      active: true),
  Tokens(
      image: 'assets/images/coinIcons/pigeon.png',
      title: "Pigeon / My Token",
      subtitle: "1444.0567827",
      active: false),
  Tokens(
      image: 'assets/images/coinIcons/dollar.png',
      title: "UD Dollar",
      subtitle: "199.24",
      active: false),
];
