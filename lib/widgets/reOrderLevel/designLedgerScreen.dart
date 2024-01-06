import 'package:basket_ball/controller/addProductController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colorConstants.dart';
import '../../constants/stringConstants.dart';
import '../../utils/lotsOfThemes.dart';
import '../loginScreen.dart';

// ignore: must_be_immutable
class DesignLedgerScreen extends StatefulWidget {
   String designName;
   String date;
   String date1;
  DesignLedgerScreen(this.designName, this.date, this.date1);

  @override
  State<DesignLedgerScreen> createState() => _DesignLedgerScreenState();
}

class _DesignLedgerScreenState extends State<DesignLedgerScreen> {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios_new),
            color: ColorConstants.mainBgColor,
          ),
          title: const Text(
            StringConstants.designLedger,
            style: LotOfThemes.heading2,
          ),
          backgroundColor: ColorConstants.secondaryColor,
          actions: [
            IconButton(
                onPressed: () {
                  Get.defaultDialog(
                      radius: 8,
                      content: const Text(StringConstants.areYouSureToLogout),
                      onCancel: () {
                        Get.back();
                      },
                      onConfirm: () {
                        Get.offAll(const LoginScreen());
                      });
                },
                icon: Icon(
                  Icons.power_settings_new_outlined,
                  color: ColorConstants.mainBgColor,
                ))
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          height: 40,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border:
                              Border.all(color: ColorConstants.midGrey),
                              borderRadius:
                              BorderRadius.all(Radius.circular(8))),
                          child: Text(
                            widget.date , textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Expanded(
                        child: Container(
                          height: 40,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border:
                              Border.all(color: ColorConstants.midGrey),
                              borderRadius:
                              BorderRadius.all(Radius.circular(8))),
                          child: Text(
                            widget.date1 , textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border:
                        Border.all(color: ColorConstants.midGrey),
                        borderRadius:
                        BorderRadius.all(Radius.circular(8))),
                    child: Text(
                      widget.designName , textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 30,
              color: ColorConstants.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      alignment: Alignment.center,
                      width: 60,
                      child: Text(
                        StringConstants.vchNo,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )),
                  Container(
                      alignment: Alignment.center,
                      width: 80,
                      child: Text(
                        StringConstants.date,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )),
                  Container(
                      alignment: Alignment.center,
                      width: 40,
                      child: Text(
                        StringConstants.type,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )),
                  Container(
                      alignment: Alignment.center,
                      width: 30,
                      child: Text(
                        StringConstants.inp,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )),
                  Container(
                      alignment: Alignment.center,
                      width: 30,
                      child: Text(
                        StringConstants.out,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )),
                  Container(
                      alignment: Alignment.center,
                      width: 60,
                      child: Text(
                        StringConstants.balance,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: controller.item.length,
                itemBuilder: (context, index){
                return Column(
                  children: [
                    Divider(
                      height: 3,
                      color: Colors.white10,
                    ),
                    Container(
                      height: 27,
                      color: index % 2 == 0
                          ? Colors.white10
                          : Colors.grey[300],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 60,
                            child: Text(
                              controller.item[index].vCHNO ?? '',
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 80,
                            child: Text(
                              controller.item[index].vCHDATE ?? '',
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 40,
                            child: Text(
                              controller.item[index].bOOKTYPE ?? '',
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 40,
                            child: Text(
                              controller.item[index].iN.toString() ,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 30,
                            child: Text(
                              controller.item[index].oUT.toString(),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 50,
                            child: Text(
                              controller.item[index].bAL.toString(),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                );
                })
          ],
        ),
      );
    });
  }
}
