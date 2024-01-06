import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/colorConstants.dart';
import '../constants/stringConstants.dart';

class ProfileDetailsScreen extends StatefulWidget {
  const ProfileDetailsScreen({super.key});

  @override
  State<ProfileDetailsScreen> createState() => _ProfileDetailsScreenState();
}

class _ProfileDetailsScreenState extends State<ProfileDetailsScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(StringConstants.firmName),
                SizedBox(height: 6,),
                SizedBox(
                  height: 42,
                  child: TextField(
                    // controller: searchDesignController,
                    keyboardType: TextInputType.name,
                    maxLines: 1,
                    onChanged: (value) {
                      setState(() {
                        // searchDesign = value.toUpperCase();
                      });
                    },
                    decoration: InputDecoration(
                        hintText: StringConstants.firmName,
                        hintStyle: TextStyle(fontSize: 12),
                        // suffixIcon: Icon(
                        //   Icons.search,
                        //   size: 17,
                        // ),
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(height: 10,),
                Text(StringConstants.whatsappNumber),
                SizedBox(height: 6,),
                SizedBox(
                  height: 42,
                  child: TextField(
                    // controller: searchDesignController,
                    keyboardType: TextInputType.name,
                    maxLines: 1,
                    onChanged: (value) {
                      setState(() {
                        // searchDesign = value.toUpperCase();
                      });
                    },
                    decoration: InputDecoration(
                        hintText: StringConstants.whatsappNumber,
                        hintStyle: TextStyle(fontSize: 12),
                        // suffixIcon: Icon(
                        //   Icons.search,
                        //   size: 17,
                        // ),
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(height: 10,),
                Text(StringConstants.phoneNumber),
                SizedBox(height: 6,),
                SizedBox(
                  height: 42,
                  child: TextField(
                    // controller: searchDesignController,
                    keyboardType: TextInputType.name,
                    maxLines: 1,
                    onChanged: (value) {
                      setState(() {
                        // searchDesign = value.toUpperCase();
                      });
                    },
                    decoration: InputDecoration(
                        hintText: StringConstants.phoneNumber,
                        hintStyle: TextStyle(fontSize: 12),
                        // suffixIcon: Icon(
                        //   Icons.search,
                        //   size: 17,
                        // ),
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(height: 10,),
                Text(StringConstants.addressOfFirm),
                SizedBox(height: 6,),
                SizedBox(
                  height: 42,
                  child: TextField(
                    // controller: searchDesignController,
                    keyboardType: TextInputType.name,
                    maxLines: 1,
                    onChanged: (value) {
                      setState(() {
                        // searchDesign = value.toUpperCase();
                      });
                    },
                    decoration: InputDecoration(
                        hintText: StringConstants.addressOfFirm,
                        hintStyle: TextStyle(fontSize: 12),
                        // suffixIcon: Icon(
                        //   Icons.search,
                        //   size: 17,
                        // ),
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment : CrossAxisAlignment.start,
                        children: [
                          Text(StringConstants.pinCode),
                          SizedBox(height: 6,),
                          SizedBox(
                            height: 42,
                            child: TextField(
                              // controller: searchDesignController,
                              keyboardType: TextInputType.name,
                              maxLines: 1,
                              onChanged: (value) {
                                setState(() {
                                  // searchDesign = value.toUpperCase();
                                });
                              },
                              decoration: InputDecoration(
                                  hintText: StringConstants.pinCode,
                                  hintStyle: TextStyle(fontSize: 12),
                                  // suffixIcon: Icon(
                                  //   Icons.search,
                                  //   size: 17,
                                  // ),
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment : CrossAxisAlignment.start,
                        children: [
                          Text(StringConstants.city),
                          SizedBox(height: 6,),
                          SizedBox(
                            height: 42,
                            child: TextField(
                              // controller: searchDesignController,
                              keyboardType: TextInputType.name,
                              maxLines: 1,
                              onChanged: (value) {
                                setState(() {
                                  // searchDesign = value.toUpperCase();
                                });
                              },
                              decoration: InputDecoration(
                                  hintText: StringConstants.city,
                                  hintStyle: TextStyle(fontSize: 12),
                                  // suffixIcon: Icon(
                                  //   Icons.search,
                                  //   size: 17,
                                  // ),
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Text(StringConstants.gstin),
                SizedBox(height: 6,),
                SizedBox(
                  height: 42,
                  child: TextField(
                    // controller: searchDesignController,
                    keyboardType: TextInputType.name,
                    maxLines: 1,
                    onChanged: (value) {
                      setState(() {
                        // searchDesign = value.toUpperCase();
                      });
                    },
                    decoration: InputDecoration(
                        hintText: StringConstants.gstin,
                        hintStyle: TextStyle(fontSize: 12),
                        // suffixIcon: Icon(
                        //   Icons.search,
                        //   size: 17,
                        // ),
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
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
                      Icons.qr_code,
                      color: ColorConstants.white,
                      size: 24.0,
                    ),
                    label: Text(StringConstants.submit,
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
      title: Text(StringConstants.profileDetails,
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
}
