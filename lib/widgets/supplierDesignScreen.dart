import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/colorConstants.dart';
import '../constants/stringConstants.dart';
import '../constants/stylecontants.dart';

class SupplierDesignScreen extends StatefulWidget {
  const SupplierDesignScreen({super.key});

  @override
  State<SupplierDesignScreen> createState() => _SupplierDesignScreenState();
}

class _SupplierDesignScreenState extends State<SupplierDesignScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: _appBar(),
        body: TabBarView(
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Row(
                    //   children: [
                    //     Expanded(
                    //         child: Container(
                    //           alignment: Alignment.center,
                    //           padding: EdgeInsets.all(15),
                    //           color: Color(0xFF0E7D06),
                    //           child: Text(StringConstants.approved),)),
                    //     Expanded(
                    //         child: Container(
                    //           alignment: Alignment.center,
                    //           padding: EdgeInsets.all(15),
                    //           color: Color(0xFFECA01C),
                    //           child: Text(StringConstants.pending),)),
                    //     Expanded(
                    //         child: Container(
                    //           alignment: Alignment.center,
                    //           padding: EdgeInsets.all(15),
                    //           color: Color(0xFFE61E1E),
                    //           child: Text(StringConstants.reject),)),
                    //   ],
                    // ),
                    Container(
                      color: Color(0xFFF8F8F8),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ListView.builder(
                          shrinkWrap: true,
                            physics: ClampingScrollPhysics(),
                            itemCount: 15,
                            itemBuilder: (context, index){
                            return Card(
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 3,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              color: Colors.blueGrey
                                          ),
                                          height: 100,
                                          width: 100,
                                          // color: Colors.grey,
                                        )),
                                    SizedBox(width: 10,),
                                    Expanded(
                                      flex: 7,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(StringConstants.productName),
                                          Text(StringConstants.sizes),
                                          Text(StringConstants.price),
                                          Text(StringConstants.brands),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.lightBlue,),

          ],
        ),
      ),
    );
  }
}

_appBar() {
  return AppBar(
    leading: IconButton(
      onPressed: (){
        Get.back();
      },
      icon: Icon(Icons.arrow_back_ios_new),
    ),
    bottom: TabBar(
      indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(1), // Creates border
          color: Colors.red),
        tabs: [
          Tab(
            child: Container(
              height: 45,width: 70,
              alignment: Alignment.center,
              // padding: EdgeInsets.all(25),
              // color: Color(0xFF0E7D06),
              child: Text(StringConstants.approved),),
          ),
          Tab(child: Container(
            height: 45,width: 70,
            alignment: Alignment.center,
            // padding: EdgeInsets.all(16),
            // color: Color(0xFFECA01C),
            child: Text(StringConstants.pending),),),
          Tab(child: Container(
            height: 45,width: 70,
            alignment: Alignment.center,
            // padding: EdgeInsets.all(25),
            // color: Color(0xFFE61E1E),
            child: Text(StringConstants.reject),),),
    ]),
    title: Text(StringConstants.productStatus,
        style: AppStyles.regularText(
            color: ColorConstants.white,
            fontWeight: FontWeight.w600,
            fontSize: 18)),
  );
}