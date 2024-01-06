import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../constants/colorConstants.dart';
import '../../constants/stringConstants.dart';

class Ledger extends StatefulWidget {
  const Ledger({super.key});

  @override
  State<Ledger> createState() => _LedgerState();
}

class _LedgerState extends State<Ledger> {
  DateTime currentDate = DateTime.now();
  String date = DateFormat("dd-MMM-yyyy").format(DateTime.now());
  String date1 = DateFormat("dd-MMM-yyyy").format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: [
            Container(
            alignment: Alignment.center,
            height: 30,
            color: ColorConstants.primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    alignment: Alignment.center,
                    width: 80,
                    child: Text(
                      StringConstants.date,
                      style:
                      TextStyle(fontWeight: FontWeight.w500, color: ColorConstants.mainBgColor),
                    )),
                Container(
                    alignment: Alignment.center,
                    width: 70,
                    child: Text(
                      StringConstants.billNo,
                      style:
                      TextStyle(fontWeight: FontWeight.w500, color: ColorConstants.mainBgColor),
                    )),
                Container(
                    alignment: Alignment.center,
                    width: 70,
                    child: Text(
                      StringConstants.book,
                      style:
                      TextStyle(fontWeight: FontWeight.w500, color: ColorConstants.mainBgColor),
                    )),
                Container(
                    alignment: Alignment.center,
                    width: 90,
                    child: Text(
                      StringConstants.description,
                      style:
                      TextStyle(fontWeight: FontWeight.w500, color: ColorConstants.mainBgColor),
                    )),
                // Container(
                //     alignment: Alignment.center,
                //     width: 20,
                //     child: Text(
                //       StringConstants.inp,
                //       style:
                //       TextStyle(fontWeight: FontWeight.w500),
                //     )),
                // Container(
                //     alignment: Alignment.center,
                //     width: 30,
                //     child: Text(
                //       StringConstants.out,
                //       style:
                //       TextStyle(fontWeight: FontWeight.w500),
                //     )),
                // Container(
                //     alignment: Alignment.center,
                //     width: 40,
                //     child: Text(
                //       StringConstants.bal,
                //       style:
                //       TextStyle(fontWeight: FontWeight.w500),
                //     )),
              ],
            ),
          ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: 30,
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
                              // await controller.getDesignLedger(controller.items[index].dESIGNCODE.toString(), date, date1);
                              // Get.to(DesignLedgerScreen(controller.items[index].dESIGNNAME ??'', date, date1));
                            },
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 80,
                                  child: Text(
                                    // controller.items[index]
                                    //     .dESIGNNAME ??
                                        '01/04/2018',
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 70,
                                  child: Text(
                                    // controller.items[index]
                                    //     .dESIGNCATNAME ??
                                        '215815',
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 70,
                                  child: Text(
                                    // controller
                                    //     .items[index].sIZENAME ??
                                        'Opening',
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 90,
                                  child: Text(
                                    // controller.items[index].oP
                                    //     .toString(),
                                    'Forwarded'
                                  ),
                                ),
                                // Container(
                                //   alignment: Alignment.center,
                                //   width: 20,
                                //   child: Text(
                                //     controller.items[index].iN
                                //         .toString() ,
                                //   ),
                                // ),
                                // Container(
                                //   alignment: Alignment.center,
                                //   width: 30,
                                //   child: Text(
                                //     controller.items[index].oUT
                                //         .toString(),
                                //   ),
                                // ),
                                // Container(
                                //   alignment: Alignment.center,
                                //   width: 40,
                                //   child: Text(
                                //     controller.items[index].bAL
                                //         .toString() ,
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  }),
            ],
          ),
        ),
      ),
    );
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
      title: Text(StringConstants.ledger,
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: StringConstants.gilroyFontFamily,
            fontSize: 18),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0,left: 8),
          child: Container(
            // padding: EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(
                vertical: 10.0, horizontal: 0.0),
            width: MediaQuery.of(context).size.width/3.7,
            height: 20.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: ColorConstants.orange,
            ),
            child: OutlinedButton.icon(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    height: MediaQuery.of(context).size.height/4.4,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          color: ColorConstants.primaryColor,
                          height: 40,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(StringConstants.filter,style: TextStyle(color: ColorConstants.mainBgColor, fontWeight: FontWeight.w500, fontSize: 16),),
                                IconButton(onPressed: (){
                                  Get.back();
                                }, icon: Icon(Icons.cancel, color: ColorConstants.mainBgColor,), alignment: Alignment.center, padding: EdgeInsets.only(top: 1, bottom: 1),)
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: ColorConstants.white,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
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
                                Container(
                                  // padding: EdgeInsets.all(8),
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 0.0),
                                  width: MediaQuery.of(context).size.width,
                                  height: 44.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.0),
                                    color: ColorConstants.primaryColor,
                                  ),
                                  child: OutlinedButton.icon(
                                    onPressed: () {
                                      // onSubmit();
                                    },
                                    icon: Icon(
                                      Icons.filter_list_outlined,
                                      color: ColorConstants.white,
                                      size: 15.0,
                                    ),
                                    label: Text(StringConstants.filter,
                                        style: TextStyle(
                                          color: ColorConstants.white,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: StringConstants.gilroyFontFamily,
                                          fontSize: 14,
                                          overflow: TextOverflow.ellipsis,
                                        )), // <-- Text
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                );
                // onSubmit();
              },
              icon: Icon(
                Icons.filter_list_outlined,
                color: ColorConstants.white,
                size: 15.0,
              ),
              label: Text(StringConstants.filter,
                  style: TextStyle(
                    color: ColorConstants.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: StringConstants.gilroyFontFamily,
                    fontSize: 14,
                    overflow: TextOverflow.ellipsis,
                  )), // <-- Text
            ),
          ),
        )
      ],
    );
  }
}
