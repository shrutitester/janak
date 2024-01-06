import 'package:basket_ball/controller/addProductController.dart';
import 'package:basket_ball/model/categoryModel.dart';
import 'package:basket_ball/model/supplierModel.dart';
import 'package:basket_ball/widgets/reOrderLevel/designLedgerScreen.dart';
import 'package:basket_ball/widgets/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:custom_searchable_dropdown/custom_searchable_dropdown.dart';
import 'package:intl/intl.dart';

import '../../component/roundedButton.dart';
import '../../constants/colorConstants.dart';
import '../../constants/stringConstants.dart';
import '../../model/brandModel.dart';
import '../../utils/lotsOfThemes.dart';

class DesignStockScreen extends StatefulWidget {
  const DesignStockScreen({super.key});

  @override
  State<DesignStockScreen> createState() => _DesignStockScreenState();
}

class _DesignStockScreenState extends State<DesignStockScreen> {
  var selected = '';
  Parties? parties;
  Brands? brands;
  DesignCategories? designCategories;
  String? partyCode, brandCode, designCatCode, searchDesign;
  DateTime currentDate = DateTime.now();
  String date = DateFormat("dd-MMM-yyyy").format(DateTime.now());
  String date1 = DateFormat("dd-MMM-yyyy").format(DateTime.now());
  TextEditingController searchDesignController = TextEditingController();
  bool isVisible = false;
  AddProductController _addProductController = Get.find();


  void showToast() {
    Fluttertoast.showToast(
        msg: _addProductController.design ?? '',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(
      builder: (controller) {
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
              StringConstants.designStock,
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
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: CustomSearchableDropDown(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 0),
                                  searchBarHeight: 70,
                                  menuHeight: 150,
                                  items: controller.parties,
                                  label: StringConstants.selectSupplier,
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
                                      controller.parties.map((item) {
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
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: CustomSearchableDropDown(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 0),
                                  searchBarHeight: 70,
                                  menuHeight: 150,
                                  items: controller.brands,
                                  label: StringConstants.selectBrand,
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
                                      controller.brands.map((item) {
                                    return item.brandName;
                                  }).toList(),
                                  onChanged: (value) {
                                    if (value != null) {
                                      selected = value.toString();
                                      brands = value;
                                      brandCode = brands?.brandCode ?? '';
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: CustomSearchableDropDown(
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
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 42,
                                  child: TextField(
                                    controller: searchDesignController,
                                    keyboardType: TextInputType.name,
                                    maxLines: 1,
                                    onChanged: (value) {
                                      setState(() {
                                        searchDesign = value.toUpperCase();
                                      });
                                    },
                                    decoration: InputDecoration(
                                        hintText: StringConstants.searchDesign,
                                        hintStyle: TextStyle(fontSize: 12),
                                        suffixIcon: Icon(
                                          Icons.search,
                                          size: 17,
                                        ),
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
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
                                  controller: TextEditingController(
                                      text: date.toString()),
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
                                  decoration: InputDecoration(
                                      // labelText: 'Last Date',
                                      border: OutlineInputBorder(),
                                      suffixIcon:
                                          Icon(Icons.calendar_month_outlined)),
                                  controller: TextEditingController(
                                      text: date1.toString()),
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
                                        date1 = DateFormat("dd-MMM-yyyy")
                                            .format(pickedDate);
                                      });
                                    }
                                  },
                                ),
                              )),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                              height: 40,
                              child: RoundedButton(
                                text: StringConstants.show,
                                btnColor: ColorConstants.primaryColor,
                                btnWidth: MediaQuery.of(context).size.width - 4,
                                press: () async {
                                  isVisible = true;
                                  await controller.getDesignStock(
                                      partyCode ?? '',
                                      brandCode ?? '',
                                      designCatCode ?? '',
                                      searchDesign ?? '',
                                      date,
                                      date1);
                                  showToast();
                                },
                              ))
                        ],
                      ),
                    ),
                    isVisible ?
                    Column(
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
                                  width: 90,
                                  child: Text(
                                    StringConstants.design,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  )),
                              Container(
                                  alignment: Alignment.center,
                                  width: 90,
                                  child: Text(
                                    StringConstants.category,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  )),
                              Container(
                                  alignment: Alignment.center,
                                  width: 50,
                                  child: Text(
                                    StringConstants.size,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  )),
                              Container(
                                  alignment: Alignment.center,
                                  width: 30,
                                  child: Text(
                                    StringConstants.op,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  )),
                              Container(
                                  alignment: Alignment.center,
                                  width: 20,
                                  child: Text(
                                    StringConstants.inp,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  )),
                              Container(
                                  alignment: Alignment.center,
                                  width: 30,
                                  child: Text(
                                    StringConstants.out,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  )),
                              Container(
                                  alignment: Alignment.center,
                                  width: 40,
                                  child: Text(
                                    StringConstants.bal,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  )),
                            ],
                          ),
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            physics: ClampingScrollPhysics(),
                            itemCount: controller.items.length,
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
                                        await controller.getDesignLedger(controller.items[index].dESIGNCODE.toString(), date, date1);
                                        Get.to(DesignLedgerScreen(controller.items[index].dESIGNNAME ??'', date, date1));
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 90,
                                            child: Text(
                                              controller.items[index]
                                                      .dESIGNNAME ??
                                                  '',
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 90,
                                            child: Text(
                                              controller.items[index]
                                                      .dESIGNCATNAME ??
                                                  '',
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 50,
                                            child: Text(
                                              controller
                                                      .items[index].sIZENAME ??
                                                  '',
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 40,
                                            child: Text(
                                              controller.items[index].oP
                                                      .toString(),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 20,
                                            child: Text(
                                              controller.items[index].iN
                                                      .toString() ,
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 30,
                                            child: Text(
                                              controller.items[index].oUT
                                                      .toString(),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 40,
                                            child: Text(
                                              controller.items[index].bAL
                                                      .toString() ,
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
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 1.19,
                  left: 2,
                  right: 2,
                  bottom: 2,
                  child: Container(
                    height: 30,
                    color: ColorConstants.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                            child: Text(
                          StringConstants.total,
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )),
                        SizedBox(
                            child: Text(
                          StringConstants.design,
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )),
                        SizedBox(
                            child: Text(
                          StringConstants.design,
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )),
                        SizedBox(
                            child: Text(
                          StringConstants.design,
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )),
                      ],
                    ),
                  ))
            ],
          ),
        );
      },
    );
  }
}
