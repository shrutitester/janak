import 'package:basket_ball/widgets/product/productDetailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colorConstants.dart';
import '../../constants/stringConstants.dart';
import '../../constants/stylecontants.dart';

class ProductGalleryScreen extends StatefulWidget {
  const ProductGalleryScreen({super.key});

  @override
  State<ProductGalleryScreen> createState() => _ProductGalleryScreenState();
}

class _ProductGalleryScreenState extends State<ProductGalleryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: 15,
              itemBuilder: (context, index){
                return Container(
                  color: Color(0xFFF8F8F8),
                  child: InkWell(
                    onTap: (){
                      Get.to(ProductDetailsScreen());
                    },
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.blueGrey
                                  ),
                                  height: 120,
                              width: 100,
                              // color: Colors.grey,
                            )),
                            SizedBox(width: 10,),
                            Expanded(
                              flex: 7,
                              child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(StringConstants.productName),
                                Text(StringConstants.sizes),
                                Text(StringConstants.price),
                                Row(
                                  children: [
                                    Expanded(child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 0.0),
                                      // width: 40,
                                      height: 35.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4.0),
                                        color: ColorConstants.red,
                                      ),
                                      child: OutlinedButton(
                                        onPressed: () {
                                          // onSubmit();
                                        },
                                        // icon: Icon(
                                        //   Icons.qr_code,
                                        //   color: ColorConstants.white,
                                        //   size: 24.0,
                                        // ),
                                        child: Text(StringConstants.reject,
                                            style: TextStyle(
                                              color: ColorConstants.white,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: StringConstants.gilroyFontFamily,
                                              fontSize: 12,
                                              overflow: TextOverflow.ellipsis,
                                            )), // <-- Text
                                      ),
                                    )),
                                    SizedBox(width: 8,),
                                    Expanded(child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 0.0),
                                      // width: MediaQuery.of(context).size.width,
                                      height: 35.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4.0),
                                        color: ColorConstants.green,
                                      ),
                                      child: OutlinedButton(
                                        onPressed: () {
                                          Get.to(ProductDetailsScreen());
                                        },
                                        // icon: Icon(
                                        //   Icons.qr_code,
                                        //   color: ColorConstants.white,
                                        //   size: 24.0,
                                        // ),
                                        child: Text(StringConstants.approve,
                                            style: TextStyle(
                                              color: ColorConstants.white,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: StringConstants.gilroyFontFamily,
                                              fontSize: 12,
                                              overflow: TextOverflow.ellipsis,
                                            )), // <-- Text
                                      ),
                                    ))
                                  ],
                                )
                              ],
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }

  _appBar() {
    return AppBar(
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text(StringConstants.productGallery,
            style: AppStyles.regularText(
                color: ColorConstants.white,
                fontWeight: FontWeight.w600,
                fontSize: 18)));
  }

}
