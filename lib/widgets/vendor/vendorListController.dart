import 'package:basket_ball/constants/stringConstants.dart';

import '../../../route/route-provide.dart';

class VendorController {
  final productUpload = CardData(
      icon: 'productUpload.png',
      name: StringConstants.productUpload,
      navigationName: RoutesLinks.productUpload);

  final productStatus = CardData(
      icon: 'productStatus.png',
      name: StringConstants.productStatus,
      navigationName: RoutesLinks.productStatus);

  addList() {
    List<CardData> cardList = [];
    // if (appType.toString().toLowerCase().contains('c')) {
    cardList.add(productUpload);
    cardList.add(productStatus);
    return cardList;
    // }
  }
}

class CardData {
  String icon = '';
  String name = '';
  String navigationName = '';

  CardData(
      {required this.icon, required this.name, required this.navigationName});
}
