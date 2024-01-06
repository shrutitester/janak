import 'package:basket_ball/widgets/orderByBar/orderBookingScreen.dart';
import 'package:basket_ball/widgets/product/productImages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/colorConstants.dart';
import '../../constants/stringConstants.dart';
import '../../constants/stylecontants.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductImages(),
              // Row(
              //   // crossAxisAlignment: CrossAxisAlignment.start,
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              // // Text('data')
              // Expanded(
              //   flex: 3,
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       Container(
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(4),
              //             color: Colors.blueGrey
              //         ),
              //         height: 70,
              //         width: 70,
              //         // color: Colors.grey,
              //       ),
              //       SizedBox(height: 5,),
              //       Container(
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(4),
              //             color: Colors.blueGrey
              //         ),
              //         height: 70,
              //         width: 70,
              //         // color: Colors.grey,
              //       ),
              //       SizedBox(height: 5,),
              //       Container(
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(4),
              //             color: Colors.blueGrey
              //         ),
              //         height: 70,
              //         width: 70,
              //         // color: Colors.grey,
              //       ),
              //     ],
              //   ),
              // ),
              // Expanded(
              //   flex: 7,
              //     child: Container(
              //       alignment: Alignment.center,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(6),
              //           color: Colors.blueGrey
              //       ),
              //       height: 350,
              //       width: 80,
              //       // color: Colors.grey,
              //     ),
              // )
              //   ],
              // ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
              Text(StringConstants.productName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
              Text(StringConstants.articleNumber, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
              Text(StringConstants.categorys, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
              Text(StringConstants.brands, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
              Text(StringConstants.sizes, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
              Text(StringConstants.price, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              Row(
                children: [
                  Expanded(child: Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 0.0),
                    width: 40,
                    height: 42.0,
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
                            fontWeight: FontWeight.w500,
                            fontFamily: StringConstants.gilroyFontFamily,
                            fontSize: 14,
                            overflow: TextOverflow.ellipsis,
                          )), // <-- Text
                    ),
                  )),
                  SizedBox(width: 8,),
                  Expanded(child: Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 0.0),
                    width: MediaQuery.of(context).size.width,
                    height: 42.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: ColorConstants.green,
                    ),
                    child: OutlinedButton(
                      onPressed: () {
                        Get.to(OrderBookingScreen());
                      },
                      child: Text(StringConstants.approve,
                          style: TextStyle(
                            color: ColorConstants.white,
                            fontWeight: FontWeight.w500,
                            fontFamily: StringConstants.gilroyFontFamily,
                            fontSize: 14,
                            overflow: TextOverflow.ellipsis,
                          )), // <-- Text
                    ),
                  ))
                ],
              )
            ],
          ),
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
        title: Text(StringConstants.productDetails,
            style: AppStyles.regularText(
                color: ColorConstants.white,
                fontWeight: FontWeight.w600,
                fontSize: 18)));
  }
}
