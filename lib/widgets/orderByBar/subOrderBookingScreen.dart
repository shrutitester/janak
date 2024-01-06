import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colorConstants.dart';
import '../../constants/stringConstants.dart';
import '../../utils/lotsOfThemes.dart';
import '../cartPartyScreen.dart';

class SubOrderBookingScreen extends StatefulWidget {
  const SubOrderBookingScreen({super.key});

  @override
  State<SubOrderBookingScreen> createState() => _SubOrderBookingScreenState();
}

class _SubOrderBookingScreenState extends State<SubOrderBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: InkWell(
          onTap: (){
            Get.to(CartPartyScreen());
          },
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.all(1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        StringConstants.barcode,
                                        style: LotOfThemes.txt14DarkSmall,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      // Padding(
                                      //   padding: const EdgeInsets.all(1.0),
                                      //   child: Text(
                                      //     widget.design.designName!,
                                      //     style: LotOfThemes.txt14Light,
                                      //     overflow: TextOverflow.ellipsis,
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        StringConstants.designName,
                                        style: LotOfThemes.txt14DarkSmall,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      // Padding(
                                      //   padding: const EdgeInsets.all(1.0),
                                      //   child: Text(
                                      //     widget.design.sizeName!,
                                      //     style: LotOfThemes.txt14Light,
                                      //     overflow: TextOverflow.ellipsis,
                                      //   ),
                                      // )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        StringConstants.hsnName,
                                        style: LotOfThemes.txt14DarkSmall,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      // Padding(
                                      //   padding: const EdgeInsets.all(1.0),
                                      //   child: Text(
                                      //     widget.design.colourName!,
                                      //     style: LotOfThemes.txt14Light,
                                      //     overflow: TextOverflow.ellipsis,
                                      //   ),
                                      // )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        StringConstants.size,
                                        style: LotOfThemes.txt14DarkSmall,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      // Padding(
                                      //   padding: const EdgeInsets.all(1.0),
                                      //   child: Text(
                                      //     widget.design.colourName!,
                                      //     style: LotOfThemes.txt14Light,
                                      //     overflow: TextOverflow.ellipsis,
                                      //   ),
                                      // )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        StringConstants.colorName,
                                        style: LotOfThemes.txt14DarkSmall,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      // Padding(
                                      //   padding: const EdgeInsets.all(1.0),
                                      //   child: Text(
                                      //     widget.design.colourName!,
                                      //     style: LotOfThemes.txt14Light,
                                      //     overflow: TextOverflow.ellipsis,
                                      //   ),
                                      // )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          8.0), // <= No more error here :)
                                      color: ColorConstants.primaryColor,
                                    ),
                                    padding: const EdgeInsets.all(1.0),
                                    child: IconButton(
                                        color: Colors.white,
                                        onPressed: () {
                                          // QuickAlert.show(
                                          //     context: context,
                                          //     type: QuickAlertType.confirm,
                                          //     barrierDismissible: true,
                                          //     text: 'Do you want to Delete!',
                                          //     confirmBtnText: 'Yes',
                                          //     cancelBtnText: 'No',
                                          //     onCancelBtnTap: () {
                                          //       Navigator.of(context).pop();
                                          //     },
                                          //     onConfirmBtnTap: () {
                                          //       removeCart(
                                          //           widget.design.partyCode.toString(),
                                          //           widget.design.designCode.toString(),
                                          //           widget.design.sizeCode.toString(),
                                          //           widget.design.colourCode.toString(),
                                          //           widget.design.mobileNo.toString());
                                          //       // Navigator.of(context).pop();
                                          //     });
                                        },
                                        icon: const Icon(Icons.edit)),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          8.0), // <= No more error here :)
                                      color: ColorConstants.red,
                                    ),
                                    padding: const EdgeInsets.all(1.0),
                                    child: IconButton(
                                        color: Colors.white,
                                        onPressed: () {
                                          // QuickAlert.show(
                                          //     context: context,
                                          //     type: QuickAlertType.confirm,
                                          //     barrierDismissible: true,
                                          //     text: 'Do you want to Delete!',
                                          //     confirmBtnText: 'Yes',
                                          //     cancelBtnText: 'No',
                                          //     onCancelBtnTap: () {
                                          //       Navigator.of(context).pop();
                                          //     },
                                          //     onConfirmBtnTap: () {
                                          //       removeCart(
                                          //           widget.design.partyCode.toString(),
                                          //           widget.design.designCode.toString(),
                                          //           widget.design.sizeCode.toString(),
                                          //           widget.design.colourCode.toString(),
                                          //           widget.design.mobileNo.toString());
                                          //       // Navigator.of(context).pop();
                                          //     });
                                        },
                                        icon: const Icon(Icons.delete)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const Divider(
                          height: 1.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(1.0),
                                    child: Text(
                                      "Rate :",
                                      style: LotOfThemes.textHeading14,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.all(1.0),
                                  //   child: Text(
                                  //     "₹ ${widget.design.rate!}",
                                  //     style: LotOfThemes.text16HeadingRed,
                                  //     overflow: TextOverflow.ellipsis,
                                  //   ),
                                  // ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(1.0),
                                    child: Text(
                                      "Qty :",
                                      style: LotOfThemes.textHeading14,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.all(1.0),
                                  //   child: Text(
                                  //     widget.design.qty!,
                                  //     style: LotOfThemes.text16HeadingRed,
                                  //     overflow: TextOverflow.ellipsis,
                                  //   ),
                                  // ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(1.0),
                                    child: Text(
                                      "Amt :",
                                      style: LotOfThemes.textHeading14,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.all(1.0),
                                  //   child: Text(
                                  //     widget.design.amount!,
                                  //     style: LotOfThemes.text16HeadingRed,
                                  //     overflow: TextOverflow.ellipsis,
                                  //   ),
                                  // ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _appBar() {
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
      // actions: [
      //   Padding(
      //     padding: const EdgeInsets.all(2.0),
      //     child: IconButton(
      //         onPressed: () {},
      //         icon: const Icon(Icons.qr_code_outlined)),
      //   )
      // ],
    );
  }
}
