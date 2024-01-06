import 'package:basket_ball/controller/addProductController.dart';
import 'package:custom_searchable_dropdown/custom_searchable_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../component/roundedButton.dart';
import '../constants/colorConstants.dart';
import '../constants/stringConstants.dart';
import '../model/brandModel.dart';
import '../model/categoryModel.dart';
import '../model/supplierModel.dart';
import '../utils/lotsOfThemes.dart';

class StockLedgerScreen extends StatefulWidget {
  const StockLedgerScreen({super.key});

  @override
  State<StockLedgerScreen> createState() => _StockLedgerScreenState();
}

class _StockLedgerScreenState extends State<StockLedgerScreen> {
  var selected = '';
  Parties? parties;
  DesignCategories? designCategories;
  Brands? brands;
  String? partyCode, designCatCode, brandCode;
  DateTime currentDate = DateTime.now();
  String date = DateFormat("dd-MMM-yyyy").format(DateTime.now());
  String date1 = DateFormat("dd-MMM-yyyy").format(DateTime.now());

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
          title: Text(
            StringConstants.stockLedger.toUpperCase(),
            style: LotOfThemes.heading2,),
          backgroundColor: ColorConstants.secondaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            shrinkWrap: true,
            children: [
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
              SizedBox(height: 10,),
              CustomSearchableDropDown(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 0),
                searchBarHeight: 70,
                menuHeight: 150,
                items: controller.parties,
                label: StringConstants.supplier,
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
              SizedBox(height: 10,),
              CustomSearchableDropDown(
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
              SizedBox(height: 10,),
              CustomSearchableDropDown(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 0),
                searchBarHeight: 70,
                menuHeight: 150,
                items: controller.parties,
                label: StringConstants.size,
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
              SizedBox(height: 10,),
              CustomSearchableDropDown(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 0),
                searchBarHeight: 70,
                menuHeight: 150,
                items: controller.parties,
                label: StringConstants.design,
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
              SizedBox(height: 10,),
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
              SizedBox(height: 10,),
              SizedBox(
                  height: 40,
                  child: RoundedButton(
                    text: StringConstants.show,
                    btnColor: ColorConstants.primaryColor,
                    btnWidth: MediaQuery.of(context).size.width - 4,
                    press: () async {
                      // await controller.getMovementAnalysis(partyCode ?? '', date, date1,'<40');
                    },
                  ))
            ],
          ),
        ),
      );
    });
  }
}
