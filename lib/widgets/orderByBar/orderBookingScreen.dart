import 'package:basket_ball/component/roundedButton.dart';
import 'package:basket_ball/constants/stringConstants.dart';
import 'package:basket_ball/controller/addProductController.dart';
import 'package:basket_ball/widgets/orderByBar/subOrderBookingScreen.dart';
import 'package:custom_searchable_dropdown/custom_searchable_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../component/roundedInputField.dart';
import '../../constants/colorConstants.dart';
import '../../model/supplierModel.dart';
import '../../utils/lotsOfThemes.dart';
import 'bookingListItem.dart';

class OrderBookingScreen extends StatefulWidget {
  const OrderBookingScreen({super.key});

  @override
  State<OrderBookingScreen> createState() => _OrderBookingScreenState();
}

class _OrderBookingScreenState extends State<OrderBookingScreen> {
  final formKey = GlobalKey<FormState>();
  var selected = '';
  Parties? parties;
  String? partyCode;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(builder: (controller) {
      return Scaffold(
        appBar: appBar(),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            margin: const EdgeInsets.symmetric(
                vertical: 10.0, horizontal: 0.0),
            width: MediaQuery.of(context).size.width ,
            height: 44.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: ColorConstants.primaryColor,
            ),
            child: OutlinedButton(
              onPressed: () {
                Get.to(SubOrderBookingScreen());
              },
              child: Text(StringConstants.scanBarcode,
                  style: TextStyle(
                    color: ColorConstants.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: StringConstants.gilroyFontFamily,
                    fontSize: 14,
                    overflow: TextOverflow.ellipsis,
                  )), // <-- Text
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return BookingListItem();
                  }),
              Card(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.black,
                      border: Border.all(
                          width: 1
                      )
                  ),
                  height: 44,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          StringConstants.totals,
                          style: LotOfThemes.txt14WhiteSmall,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Qty : ",
                          style: LotOfThemes.txt14WhiteSmall,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "Amt : ",
                          style: LotOfThemes.txt14WhiteSmall,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10, horizontal: 15),
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      crossAxisAlignment:
                      CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: [
                            CustomSearchableDropDown(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 0),
                              searchBarHeight: 70,
                              menuHeight: 150,
                              items: controller.parties,
                              label: StringConstants.selectAgent,
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
                              height: 10.0,
                            ),
                            CustomSearchableDropDown(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 0),
                              searchBarHeight: 70,
                              menuHeight: 150,
                              items: controller.parties,
                              label: StringConstants.selectTransport,
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
                            // const SizedBox(
                            //   height: 3.0,
                            // ),
                            RoundedInputField(
                              hintText: StringConstants.booking,
                              // controller: _bookingController,
                              keyboardType: TextInputType.text,
                              textinputAction:
                              TextInputAction.next,
                              onChanged: (value) {
                                // setState(() {
                                //   booking = value;
                                // });
                              },
                              // type: StringConstants.booking,
                            ),
                            // const SizedBox(
                            //   height: 10.0,
                            // ),
                            RoundedInputField(
                              // initialValue: _addProductController
                              //     .cartList![0].remark,
                              hintText:
                              StringConstants.enterRemark,
                              keyboardType: TextInputType.text,
                              // controller: _remarkController,
                              textinputAction:
                              TextInputAction.next,
                              onChanged: (value) {
                                // setState(() {
                                //   remark = value;
                                // });
                              },
                              // type: StringConstants.remark,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
      title: Text(
        StringConstants.orderBooking,
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: StringConstants.gilroyFontFamily,
            fontSize: 18),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.qr_code_outlined)),
        )
      ],
    );
  }
}
