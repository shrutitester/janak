import 'package:basket_ball/widgets/vendor/vendorListController.dart';
import 'package:flutter/material.dart';
import '../../../constants/colorConstants.dart';
import '../../../constants/stylecontants.dart';
import '../../../utils/app-images.dart';
import '../../../utils/lotsOfThemes.dart';
import '../../../utils/preferences.dart';
import '../../constants/stringConstants.dart';
import 'package:get/get.dart';
class VendorScreen extends StatefulWidget {
  const VendorScreen({Key? key}) : super(key: key);

  @override
  State<VendorScreen> createState() => _VendorScreenState();
}

class _VendorScreenState extends State<VendorScreen> {
  VendorController vendorController = VendorController();
  AppPreferences preference = AppPreferences();
  List<CardData> cardList = [];

  @override
  void initState() {
    cardList.addAll(vendorController.addList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: _appBar(),
        body: Container(
          color: Colors.grey.withOpacity(0.04),
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Wrap(children: gridItems(cardList)),
              ],
            ),
          ),
        ));
  }

  gridItems(List<CardData> list) {
    return List<Widget>.generate(list.length, (index) {
      return getGridItem(list[index]);
    });
  }

  getGridItem(CardData data) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => data.navigationName.isEmpty
          ? null
          : Navigator.pushNamed(context, data.navigationName),
      child: Container(
        width: width * 0.40,
        height: width * 0.35,
        margin: const EdgeInsets.all(10),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.imagePath + data.icon,
                height: width * 0.16,
                width: width * 0.16,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(data.name, style: LotOfThemes.dark14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_appBar() {
  return AppBar(
      leading: IconButton(
        onPressed: (){
          Get.back();
        },
        icon: Icon(Icons.arrow_back_ios_new),
      ),
      title: Text(StringConstants.vendor,
          style: AppStyles.regularText(
              color: ColorConstants.white,
              fontWeight: FontWeight.w600,
              fontSize: 18)));
}

