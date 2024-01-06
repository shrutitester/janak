import 'package:basket_ball/constants/stringConstants.dart';
import 'package:basket_ball/controller/addProductController.dart';
import 'package:basket_ball/widgets/orderByBar/orderBookingScreen.dart';
import 'package:custom_searchable_dropdown/custom_searchable_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/colorConstants.dart';
import '../../model/supplierModel.dart';
import '../loginScreen.dart';

class OrderByBarcodeScreen extends StatefulWidget {
  const OrderByBarcodeScreen({super.key});

  @override
  State<OrderByBarcodeScreen> createState() => _OrderByBarcodeScreenState();
}

class _OrderByBarcodeScreenState extends State<OrderByBarcodeScreen> {
  final formKey = GlobalKey<FormState>();
  var selected = '';
  Parties? parties;
  String? partyCode;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(builder: (controller) {
      return Scaffold(
        appBar: appBar(),
        body: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          color: Color(0xFFF5F5F5),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomSearchableDropDown(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 0),
                    searchBarHeight: 70,
                    menuHeight: 150,
                    items: controller.parties,
                    label: StringConstants.billTo,
                    labelStyle: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontFamily: StringConstants.gilroyFontFamily,
                        fontSize: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Colors.grey)),
                    dropdownItemStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontFamily: StringConstants.gilroyFontFamily,
                        fontSize: 12),
                    dropDownMenuItems: controller.parties.map((item) {
                      return item.partyName;
                    }).toList(),
                    onChanged: (value) {
                      if (value != null) {
                        selected = value.toString();
                        parties = value;
                        partyCode = parties?.partyCode ?? '';
                      }
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomSearchableDropDown(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 0),
                    searchBarHeight: 70,
                    menuHeight: 150,
                    items: controller.parties,
                    label: StringConstants.shipTo,
                    labelStyle: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontFamily: StringConstants.gilroyFontFamily,
                        fontSize: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Colors.grey)),
                    dropdownItemStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontFamily: StringConstants.gilroyFontFamily,
                        fontSize: 12),
                    dropDownMenuItems: controller.parties.map((item) {
                      return item.partyName;
                    }).toList(),
                    onChanged: (value) {
                      if (value != null) {
                        selected = value.toString();
                        parties = value;
                        partyCode = parties?.partyCode ?? '';
                      }
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomSearchableDropDown(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 0),
                    searchBarHeight: 70,
                    menuHeight: 150,
                    items: controller.parties,
                    label: StringConstants.remark,
                    labelStyle: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontFamily: StringConstants.gilroyFontFamily,
                        fontSize: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Colors.grey)),
                    dropdownItemStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontFamily: StringConstants.gilroyFontFamily,
                        fontSize: 12),
                    dropDownMenuItems: controller.parties.map((item) {
                      return item.partyName;
                    }).toList(),
                    onChanged: (value) {
                      if (value != null) {
                        selected = value.toString();
                        parties = value;
                        partyCode = parties?.partyCode ?? '';
                      }
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 0.0),
                    width: MediaQuery.of(context).size.width,
                    height: 44.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: ColorConstants.primaryColor,
                    ),
                    child: OutlinedButton.icon(
                      onPressed: () {
                        Get.to(OrderBookingScreen());
                      },
                      icon: Icon(
                        Icons.qr_code,
                        color: ColorConstants.white,
                        size: 24.0,
                      ),
                      label: Text(StringConstants.scanBarcode,
                          style: TextStyle(
                            color: ColorConstants.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: StringConstants.gilroyFontFamily,
                            fontSize: 12,
                            overflow: TextOverflow.ellipsis,
                          )), // <-- Text
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  appBar() {
    return AppBar(
      elevation: 0.0,
      leading: IconButton(
        onPressed: (){
          Get.back();
        },
        icon: Icon(Icons.arrow_back_ios_new),
      ),
      title: Text(StringConstants.orderByBarCode,
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: StringConstants.gilroyFontFamily,
            fontSize: 18),
      ),
      // actions: [
      //   Padding(
      //     padding: const EdgeInsets.all(2.0),
      //     child: IconButton(
      //         onPressed: () async {},
      //         icon: const Icon(Icons.history)),
      //   ),
      //   Padding(
      //     padding: const EdgeInsets.all(2.0),
      //     child: IconButton(
      //         onPressed: () async {},
      //         icon: const Icon(Icons.shopping_cart)),
      //   ),
      //   Padding(
      //     padding: const EdgeInsets.all(2.0),
      //     child: IconButton(
      //         onPressed: () async {
      //           showAlertDialog(context);
      //         },
      //         icon: const Icon(Icons.logout_outlined)),
      //   ),
      // ],
    );
  }

  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: const Text(StringConstants.logout),
      content: const Text(StringConstants.doYouWantTologout),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                  ModalRoute.withName('/'));
            },
            child: const Text(StringConstants.yes)),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(StringConstants.no)),
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
}
