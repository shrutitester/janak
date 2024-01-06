import 'package:basket_ball/controller/addProductController.dart';
import 'package:custom_searchable_dropdown/custom_searchable_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../constants/colorConstants.dart';
import '../../constants/stringConstants.dart';
import '../../model/supplierModel.dart';
import 'ledger.dart';
import '../loginScreen.dart';

class LedgerScreen extends StatefulWidget {
  const LedgerScreen({super.key});

  @override
  State<LedgerScreen> createState() => _LedgerScreenState();
}

class _LedgerScreenState extends State<LedgerScreen> {
  final formKey = GlobalKey<FormState>();
  var selected = '';
  Parties? parties;
  String? partyCode;
  DateTime currentDate = DateTime.now();
  String date = DateFormat("dd-MMM-yyyy").format(DateTime.now());
  String date1 = DateFormat("dd-MMM-yyyy").format(DateTime.now());

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
                    label: StringConstants.selectParty,
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
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 0.0),
                    width: MediaQuery.of(context).size.width,
                    height: 44.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: ColorConstants.primaryColor,
                    ),
                    child: OutlinedButton(
                      onPressed: () {
                        Get.to(Ledger());
                      },
                      child: Text(StringConstants.show,
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

  // onSubmit() {
  //   if (selectedPartyName.toString() == 'Select Party') {
  //     Get.snackbar("Alert!", 'Please Select Party',
  //         snackPosition: SnackPosition.TOP,
  //         backgroundColor: Colors.orangeAccent,
  //         colorText: Colors.white);
  //     // isLoading = false;
  //     return;
  //   }
  //   if (formKey.currentState?.validate() == true) {
  //     if (mobileNo!.toString() == '') {
  //       Get.snackbar("Alert!", 'Please Enter Mobile No.',
  //           snackPosition: SnackPosition.TOP,
  //           backgroundColor: Colors.orangeAccent,
  //           colorText: Colors.white);
  //       // isLoading = false;
  //       return;
  //     }
  //     Get.to(QRViewExample(selectedPartyValue!.partyCode!, mobileNo!, remark!));
  //   }
  // }

  appBar() {
    return AppBar(
      elevation: 0.0,
      leading: IconButton(
        onPressed: (){
          Get.back();
        },
        icon: Icon(Icons.arrow_back_ios_new),
      ),
      title: Text(StringConstants.ledger,
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
