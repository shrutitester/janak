import 'package:basket_ball/controller/addProductController.dart';
import 'package:custom_searchable_dropdown/custom_searchable_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../component/roundedButton.dart';
import '../constants/colorConstants.dart';
import '../constants/stringConstants.dart';
import '../model/brandModel.dart';
import '../model/categoryModel.dart';
import '../model/supplierModel.dart';
import '../utils/lotsOfThemes.dart';

class StockStatusScreen extends StatefulWidget {
  const StockStatusScreen({super.key});

  @override
  State<StockStatusScreen> createState() => _StockStatusScreenState();
}

class _StockStatusScreenState extends State<StockStatusScreen> {
  var selected = '';
  Parties? parties;
  DesignCategories? designCategories;
  Brands? brands;
  String? partyCode, designCatCode, brandCode;

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
            StringConstants.stockStatus.toUpperCase(),
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
