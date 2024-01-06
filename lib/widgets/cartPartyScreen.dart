import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/stringConstants.dart';
import '../utils/lotsOfThemes.dart';

class CartPartyScreen extends StatefulWidget {
  const CartPartyScreen({super.key});

  @override
  State<CartPartyScreen> createState() => _CartPartyScreenState();
}

class _CartPartyScreenState extends State<CartPartyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          StringConstants.partyName,
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
                          StringConstants.citys,
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
                          StringConstants.gstNo,
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
            ),
          )
        ],
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
      title: Text(
        StringConstants.cartParty,
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
              icon: const Icon(Icons.search)),
        )
      ],
    );
  }
}
