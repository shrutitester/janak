// import 'package:basket_ball/controller/addProductController.dart';
// import 'package:custom_searchable_dropdown/custom_searchable_dropdown.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../constants/colorConstants.dart';
// import '../constants/stringConstants.dart';
// import '../constants/stylecontants.dart';
// import '../model/categoryModel.dart';
//
// class ComplainScreen extends StatefulWidget {
//   const ComplainScreen({super.key});
//
//   @override
//   State<ComplainScreen> createState() => _ComplainScreenState();
// }
//
// class _ComplainScreenState extends State<ComplainScreen> {
//   var selected = '';
//   DesignCategories? designCategories;
//   String? designCatCode;
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<AddProductController>(builder: (controller) {
//       return Scaffold(
//         appBar: _appBar(),
//         body: SingleChildScrollView(
//           child: Container(
//             height: MediaQuery
//                 .of(context)
//                 .size
//                 .height,
//             width: MediaQuery
//                 .of(context)
//                 .size
//                 .width,
//             child: Column(
//               children: [
//                 CustomSearchableDropDown(
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 10, vertical: 0),
//                   searchBarHeight: 70,
//                   menuHeight: 150,
//                   items: controller.designCategories,
//                   label: StringConstants.selectCategory,
//                   labelStyle: const TextStyle(
//                       fontWeight: FontWeight.normal,
//                       color: Colors.black,
//                       fontFamily:
//                       StringConstants.gilroyFontFamily,
//                       fontSize: 12),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(4),
//                       border: Border.all(color: Colors.grey)),
//                   dropdownItemStyle: const TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.normal,
//                       fontFamily:
//                       StringConstants.gilroyFontFamily,
//                       fontSize: 12),
//                   dropDownMenuItems:
//                   controller.designCategories.map((item) {
//                     return item.designCatName;
//                   }).toList(),
//                   onChanged: (value) {
//                     if (value != null) {
//                       selected = value.toString();
//                       designCategories = value;
//                       designCatCode =
//                           designCategories?.designCatCode ?? '';
//                     }
//                   },
//                 ),
//                 SizedBox(height: 10,),
//               ],
//             ),
//           ),
//         ),
//       );
//     });
//   }
//
//   _appBar() {
//     return AppBar(
//         leading: IconButton(
//           onPressed: (){
//             Get.back();
//           },
//           icon: Icon(Icons.arrow_back_ios_new),
//         ),
//         title: Text(StringConstants.complain,
//             style: AppStyles.regularText(
//                 color: ColorConstants.white,
//                 fontWeight: FontWeight.w600,
//                 fontSize: 18)));
//   }
//
// }
