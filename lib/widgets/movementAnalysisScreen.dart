import 'package:basket_ball/controller/addProductController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:custom_searchable_dropdown/custom_searchable_dropdown.dart';
import 'package:intl/intl.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../component/roundedButton.dart';
import '../constants/colorConstants.dart';
import '../constants/stringConstants.dart';
import '../model/categoryModel.dart';
import '../model/supplierModel.dart';
import '../utils/lotsOfThemes.dart';
import 'reOrderLevel/designLedgerScreen.dart';
import 'loginScreen.dart';

class MovementAnalysisScreen extends StatefulWidget {
  const MovementAnalysisScreen({super.key});

  @override
  State<MovementAnalysisScreen> createState() => _MovementAnalysisScreenState();
}


class _MovementAnalysisScreenState extends State<MovementAnalysisScreen> {
  var selected = '';
  Parties? parties;
  DesignCategories? designCategories;
  String? partyCode, days, speed, designCatCode;
  DateTime currentDate = DateTime.now();
  String date = DateFormat("dd-MMM-yyyy").format(DateTime.now());
  String date1 = DateFormat("dd-MMM-yyyy").format(DateTime.now());
  bool isVisible = false;
  AddProductController _addProductController = Get.find();

  void showToast() {
    Fluttertoast.showToast(
        msg: _addProductController.movement ?? '',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new),
            color: ColorConstants.mainBgColor,),
          title: const Text(
            StringConstants.movementAnalysis, style: LotOfThemes.heading2,),
          backgroundColor: ColorConstants.secondaryColor,
          actions: [
            IconButton(
                onPressed: () {
                  Get.defaultDialog(
                      radius: 8,
                      content: Text(StringConstants.areYouSureToLogout),
                      onCancel: () {
                        Get.back();
                      },
                      onConfirm: () {
                        Get.offAll(const LoginScreen());
                      }
                  );
                },
                icon: Icon(Icons.power_settings_new_outlined,
                  color: ColorConstants.mainBgColor,))
          ],
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomSearchableDropDown(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 0),
                          searchBarHeight: 70,
                          menuHeight: 150,
                          items: controller.parties,
                          label: StringConstants.selectSupplier,
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
                          height: 10,
                        ),
                        CustomSearchableDropDown(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 0),
                          searchBarHeight: 70,
                          menuHeight: 150,
                          items: controller.designCategories,
                          label: StringConstants.selectCategory,
                          labelStyle: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              fontFamily:
                              StringConstants.gilroyFontFamily,
                              fontSize: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: Colors.grey)),
                          dropdownItemStyle: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontFamily:
                              StringConstants.gilroyFontFamily,
                              fontSize: 12),
                          dropDownMenuItems:
                          controller.designCategories.map((item) {
                            return item.designCatName;
                          }).toList(),
                          onChanged: (value) {
                            if (value != null) {
                              selected = value.toString();
                              designCategories = value;
                              designCatCode =
                                  designCategories?.designCatCode ?? '';
                            }
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: SizedBox(
                                  height: 45,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      // labelText: 'Starting Date',
                                        border: OutlineInputBorder(),
                                        suffixIcon:
                                        Icon(Icons.calendar_month_outlined)),
                                    controller:
                                    TextEditingController(text: date.toString()),
                                    readOnly: true,
                                    onTap: () async {
                                      DateTime? pickedDate = await showDatePicker(
                                          context: context,
                                          initialDate: currentDate,
                                          firstDate: DateTime(2000),
                                          lastDate: DateTime(2100));
                                      if (pickedDate != currentDate) {
                                        setState(() {
                                          currentDate = pickedDate!;
                                          date = DateFormat("dd-MMM-yyyy")
                                              .format(pickedDate);
                                        });
                                      }
                                    },
                                  ),
                                )),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                                child: SizedBox(
                                  height: 45,
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      // labelText: 'Last Date',
                                        border: OutlineInputBorder(),
                                        suffixIcon:
                                        Icon(Icons.calendar_month_outlined)),
                                    controller:
                                    TextEditingController(text: date1.toString()),
                                    readOnly: true,
                                  ),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //   children: [
                        //     Container(
                        //       decoration: BoxDecoration(
                        //           color: Colors.blueGrey,
                        //           borderRadius: BorderRadius.circular(20)
                        //       ),
                        //       alignment: Alignment.center,
                        //       height: 30,
                        //       width: 100,
                        //       child: Row(
                        //         children: [
                        //           Radio<String>(
                        //             value: StringConstants.today,
                        //             groupValue: days,
                        //             onChanged: (value){
                        //               setState(() {
                        //                 days = value.toString();
                        //                 date = DateFormat("dd-MMM-yyyy").format(DateTime.now());
                        //               });
                        //             },
                        //           ),
                        //           Text(StringConstants.today),
                        //         ],
                        //       ),
                        //     ),
                        //     Container(
                        //       decoration: BoxDecoration(
                        //           color: Colors.blueGrey,
                        //           borderRadius: BorderRadius.circular(20)
                        //       ),
                        //       alignment: Alignment.center,
                        //       height: 30,
                        //       width: 110,
                        //       child: Row(
                        //         children: [
                        //           Radio<String>(
                        //             value: StringConstants.weekly,
                        //             groupValue: days,
                        //             onChanged: (value){
                        //               setState(() {
                        //                 days = value.toString();
                        //                 // date = DateFormat("dd-MMM-yyyy").format(DateTime);
                        //               });
                        //             },
                        //           ),
                        //           Text(StringConstants.weekly),
                        //         ],
                        //       ),
                        //     ),
                        //     Container(
                        //       decoration: BoxDecoration(
                        //           color: Colors.blueGrey,
                        //           borderRadius: BorderRadius.circular(12)
                        //       ),
                        //       alignment: Alignment.center,
                        //       height: 30,
                        //       width: 110,
                        //       child: Row(
                        //         children: [
                        //           Radio<String>(
                        //             value: StringConstants.days,
                        //             groupValue: days,
                        //             onChanged: (value){
                        //               setState(() {
                        //                 days = value.toString();
                        //               });
                        //             },
                        //           ),
                        //           Text(StringConstants.days),
                        //         ],
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // const SizedBox(
                        //   height: 8,
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFF005D38),
                                    borderRadius: BorderRadius.circular(4)
                                ),
                                alignment: Alignment.center,
                                height: 45,
                                // width: 90,
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: StringConstants.fast,
                                      groupValue: speed,
                                      onChanged: (value){
                                        setState(() {
                                          speed = value.toString();
                                        });
                                      },
                                    ),
                                    Text(StringConstants.fast, style: TextStyle(color: ColorConstants.mainBgColor),),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFFE3950D),
                                  borderRadius: BorderRadius.circular(4)
                                ),
                                alignment: Alignment.center,
                                height: 45,
                                // width: 90,
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: StringConstants.slow,
                                      groupValue: speed,
                                      onChanged: (value){
                                        setState(() {
                                          speed = value.toString();
                                        });
                                      },
                                    ),
                                    Text(StringConstants.slow, style: TextStyle(color: ColorConstants.mainBgColor)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            height: 40,
                            child: RoundedButton(
                              text: StringConstants.show,
                              btnColor: ColorConstants.primaryColor,
                              btnWidth: MediaQuery.of(context).size.width - 4,
                              press: () async {
                                isVisible = true;
                                await controller.getMovementAnalysis(partyCode ?? '', date, date1,'<40');
                                showToast();
                              },
                            ))
                      ],
                    ),
                  ),
                  isVisible == true ? Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        color: ColorConstants.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                width: 70,
                                child: Text(
                                  StringConstants.design,
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                )),
                            Container(
                                alignment: Alignment.center,
                                width: 70,
                                child: Text(
                                  StringConstants.category,
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                )),
                            Container(
                                alignment: Alignment.center,
                                width: 50,
                                child: Text(
                                  StringConstants.size,
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                )),
                            Container(
                                alignment: Alignment.center,
                                width: 30,
                                child: Text(
                                  StringConstants.op,
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
                                width: 40,
                                child: Text(
                                  StringConstants.bal,
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                )),
                          ],
                        ),
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          itemCount: controller.model.length,
                          itemBuilder: (context, index) {
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
                                  child: InkWell(
                                    onTap: () async {
                                      await controller.getDesignLedger(controller.model[index].dESIGNCODE.toString() , date, date1);
                                      Get.to(DesignLedgerScreen(controller.model[index].dESIGNNAME??'', date, date1));
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 70,
                                          child: Text(
                                            controller.model[index].dESIGNNAME ?? '',
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 70,
                                          child: Text(
                                            controller.model[index].dESIGNCATNAME ??
                                                '',
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 50,
                                          child: Text(
                                            controller.model[index].sIZENAME ?? '',
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 40,
                                          child: Text(
                                            controller.model[index].oP.toString() ,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 30,
                                          child: Text(
                                            controller.model[index].iN.toString() ,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 30,
                                          child: Text(
                                            controller.model[index].oUT.toString() ,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 40,
                                          child: Text(
                                            controller.model[index].bAL.toString() ,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            );
                          }),
                    ],
                  ) : SizedBox(),
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
