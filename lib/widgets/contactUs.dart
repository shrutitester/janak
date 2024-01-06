// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:get/get.dart';
// import '../constants/colorConstants.dart';
// import '../constants/stringConstants.dart';
// import '../constants/stylecontants.dart';
//
// class ContactUsScreen extends StatefulWidget {
//   const ContactUsScreen({super.key});
//
//   @override
//   State<ContactUsScreen> createState() => _ContactUsScreenState();
// }
//
// class _ContactUsScreenState extends State<ContactUsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: _appBar(),
//       body: Card(
//         elevation: 2,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             TextButton(
//                 onPressed: () async {
//                   var url = Uri.parse('tel: 9876543210}');
//                   if (await canLaunchUrl(url)) {
//                     await launchUrl(url);
//                   } else {
//                     throw 'Could not launch $url';
//                   }
//                 },
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(Icons.phone, size: 18),
//                     SizedBox(width: 10,),
//                     Text('9876543210', style: TextStyle(color: Colors.black, fontSize: 16),)
//                   ],
//                 ))
//           ],
//         ),
//       ),
//     );
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
//         title: Text(StringConstants.contactUs,
//             style: AppStyles.regularText(
//                 color: ColorConstants.white,
//                 fontWeight: FontWeight.w600,
//                 fontSize: 18)));
//   }
// }
