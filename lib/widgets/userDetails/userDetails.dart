import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colorConstants.dart';
import '../../constants/stringConstants.dart';
import '../../constants/stylecontants.dart';
import 'activeScreen.dart';
import 'inActiveScreen.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({super.key});

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: _appBar(),
        body: TabBarView(
          children: [
            // SingleChildScrollView(
            //   child: Container(
            //     color: Color(0xFFF8F8F8),
            //     child: Padding(
            //       padding: const EdgeInsets.all(12.0),
            //       child: Column(
            //         children: [
            //           Container(
            //             height: 30,
            //             color: ColorConstants.primaryColor,
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceAround,
            //               children: [
            //                 Text(StringConstants.names, style: TextStyle(color: ColorConstants.mainBgColor),),
            //                 Text(StringConstants.type, style: TextStyle(color: ColorConstants.mainBgColor)),
            //                 Text(StringConstants.phone, style: TextStyle(color: ColorConstants.mainBgColor)),
            //                 Text(StringConstants.status, style: TextStyle(color: ColorConstants.mainBgColor)),
            //               ],
            //             ),
            //           ),
            //           ListView.builder(
            //               shrinkWrap: true,
            //               physics: ClampingScrollPhysics(),
            //               itemCount: 15,
            //               itemBuilder: (context, index){
            //                 return Card(
            //                   child: Padding(
            //                     padding: const EdgeInsets.all(10.0),
            //                     child: Row(
            //                       children: [
            //                         Expanded(
            //                             flex: 3,
            //                             child: Container(
            //                               decoration: BoxDecoration(
            //                                   borderRadius: BorderRadius.circular(8),
            //                                   color: Colors.blueGrey
            //                               ),
            //                               height: 100,
            //                               width: 100,
            //                               // color: Colors.grey,
            //                             )),
            //                         SizedBox(width: 10,),
            //                         Expanded(
            //                           flex: 7,
            //                           child: Column(
            //                             crossAxisAlignment: CrossAxisAlignment.start,
            //                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                             children: [
            //                               Text(StringConstants.productName),
            //                               Text(StringConstants.sizes),
            //                               Text(StringConstants.price),
            //                               Text(StringConstants.brands),
            //                             ],
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 );
            //               }),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            InActiveScreen(),
            ActiveScreen()
          ],
        ),
      ),
    );
  }
  _appBar() {
    return AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_new),
          color: ColorConstants.mainBgColor,),
        bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(1), // Creates border
                color: Colors.red),
            tabs: [
              Tab(
                child: Container(
                  height: 40,width: 70,
                  alignment: Alignment.center,
                  // padding: EdgeInsets.all(25),
                  // color: Color(0xFF0E7D06),
                  child: Text(StringConstants.inActive),),
              ),
              Tab(child: Container(
                height: 40,width: 70,
                alignment: Alignment.center,
                // padding: EdgeInsets.all(16),
                // color: Color(0xFFECA01C),
                child: Text(StringConstants.active),),),
            ]),
        title: Text(StringConstants.userDetails,
            style: AppStyles.regularText(
                color: ColorConstants.white,
                fontWeight: FontWeight.w600,
                fontSize: 18)));

  }

}
