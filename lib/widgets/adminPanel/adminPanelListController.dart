import 'package:basket_ball/constants/stringConstants.dart';

import '../../../route/route-provide.dart';

class AdminPanelController {
  final userDetails = CardData(
      icon: 'Vendor.png',
      name: StringConstants.userDetails,
      navigationName: RoutesLinks.userDetails);

  final products = CardData(
      icon: 'Products.png',
      name: StringConstants.products,
      navigationName: RoutesLinks.products);

  addList() {
    List<CardData> cardList = [];
    // if (appType.toString().toLowerCase().contains('c')) {
    cardList.add(userDetails);
    cardList.add(products);
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
