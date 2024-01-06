import 'package:basket_ball/widgets/stockLedgerScreen.dart';
import 'package:basket_ball/widgets/stockStatusScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../constants/colorConstants.dart';
import '../constants/stringConstants.dart';
import '../utils/lotsOfThemes.dart';
import 'reOrderLevel/designStockScreen.dart';
import 'movementAnalysisScreen.dart';

class StockMovementScreen extends StatelessWidget {
  const StockMovementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_new),
          color: ColorConstants.mainBgColor,),
        title: const Text(
          StringConstants.stockMovement, style: LotOfThemes.heading2,),
        backgroundColor: ColorConstants.secondaryColor,
      ),
      body: ListView(
        children: [
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
                              Get.to(const StockStatusScreen());
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
                                      StringConstants.stockStatus,
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
                              Get.to(const StockLedgerScreen());
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
                                      StringConstants.stockLedger,
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
                              Get.to(const MovementAnalysisScreen());
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
                                      StringConstants.stockAnalysis,
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
                              Get.to(const DesignStockScreen());
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
                                    Text(
                                      StringConstants.reorderLevel,
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
}
