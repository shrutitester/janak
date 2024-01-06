import 'package:basket_ball/widgets/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/addProductController.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  AddProductController productController = Get.put(AddProductController());

  @override
  void initState() {
    _timerNavigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset('assets/images/splashScreen.png',fit: BoxFit.fill,),
        ),
      ),
    );
  }

  void _timerNavigate() async {
    Future.delayed(Duration(seconds: 4), () async {
      Get.offAll(() => LoginScreen());
    });
  }
}
