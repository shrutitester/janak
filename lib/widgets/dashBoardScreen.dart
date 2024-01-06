import 'package:basket_ball/widgets/loginScreen.dart';
import 'package:basket_ball/widgets/product/productGalleryScreen.dart';
import 'package:basket_ball/widgets/stockMovementScreen.dart';
import 'package:basket_ball/widgets/vendor/vendorList.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/colorConstants.dart';
import '../constants/stringConstants.dart';
import 'adminPanel/adminPanelList.dart';
import 'orderByBar/orderByBarcodeScreen.dart';
import 'account/ledgerScreen.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            // alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 6.5,
            color: Color(0xFF00587E),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 15, top: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            StringConstants.welcome,
                            style: TextStyle(
                                color: ColorConstants.mainBgColor,
                                fontSize: 20),
                          ),
                          Text(
                            StringConstants.projectName,
                            style: TextStyle(
                                color: ColorConstants.mainBgColor,
                                fontSize: 24),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 26.5,
                        width: 30.29,
                        child: InkWell(
                          onTap: () {
                            showAlertDialog(context);
                          },
                          child: Image.asset('assets/images/logout.png'),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color(0xFFF5F5F5),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          Get.to(const ProductGalleryScreen());
                        },
                        child: SizedBox(
                          width: 156,
                          height: 140,
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/salesOrder.png'),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  StringConstants.salesOrder,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily:
                                          StringConstants.gilroyFontFamily),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          Get.to(const OrderByBarcodeScreen());
                        },
                        child: SizedBox(
                          width: 156,
                          height: 140,
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/OrderBooking.png'),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  StringConstants.orderByBarCode,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily:
                                          StringConstants.gilroyFontFamily),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          Get.to(const VendorScreen());
                        },
                        child: SizedBox(
                          width: 156,
                          height: 140,
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/Vendor.png'),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  StringConstants.vendor,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily:
                                          StringConstants.gilroyFontFamily),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          Get.to(const LedgerScreen());
                        },
                        child: SizedBox(
                          width: 156,
                          height: 140,
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/Account.png'),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  StringConstants.account,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily:
                                          StringConstants.gilroyFontFamily),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          Get.to(const StockMovementScreen());
                        },
                        child: SizedBox(
                          width: 156,
                          height: 140,
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/StockMovement.png'),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  StringConstants.stockMovement,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily:
                                          StringConstants.gilroyFontFamily),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          Get.to(const SalesOrderScreen());
                        },
                        child: SizedBox(
                          width: 156,
                          height: 140,
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/DebitNote.png'),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  StringConstants.adminPanel,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily:
                                          StringConstants.gilroyFontFamily),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
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
