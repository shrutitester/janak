import 'package:basket_ball/constants/stringConstants.dart';
import 'package:basket_ball/utils/lotsOfThemes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../component/roundedButton.dart';
import '../component/roundedInputField.dart';
import '../constants/colorConstants.dart';
import 'dashBoardScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool _isObscure = true;
  String _isShowPass = 'Password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: ColorConstants.secondaryColor
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.,
                crossAxisAlignment: CrossAxisAlignment.start,
                textDirection: TextDirection.ltr,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 5 ,
                  ),
                  const Text(StringConstants.welcome, style: LotOfThemes.heading2,),
                  LotOfThemes.heightMargin(10.0),
                  const Text(StringConstants.signInYourAccountToContinue, style: LotOfThemes.heading3,),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height/3 +10,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: ColorConstants.mainBgColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)
                  )
                ),
                child: Form(
                  key: formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height /8,),
                        RoundedInputField(
                          prefixIcon: Icon(
                            Icons.lock, color: ColorConstants.blackColor,),
                          label: 'Password',
                          maxLength: 24,
                          counterText: "",
                          textinputAction: TextInputAction.done,
                          onChanged: (value) {
                            // _controller.updatePassword(value);
                            // password = value;
                          },
                          obscureText: _isObscure,
                          cursorColor: ColorConstants.blackColor,
                          suffixIcon: IconButton(
                              icon: Icon(_isObscure
                                  ? Icons.visibility_off
                                  : Icons.visibility, color: ColorConstants
                                  .blackColor,),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                  _isObscure == true
                                      ? _isShowPass = 'Password'
                                      : _isShowPass = 'InVisible';
                                });
                              }),
                          type: _isShowPass,
                        ),
                        LotOfThemes.heightMargin(30.0),
                        SizedBox(
                            height: 40,
                            child: RoundedButton(
                                    text: StringConstants.submit,
                                    btnColor: ColorConstants.primaryColor,
                                    btnWidth: MediaQuery.of(context).size.width,
                                    press: () => Get.defaultDialog(
                                      radius: 8,
                                      content: const Text(StringConstants.areYouSureToLogin),
                                      onCancel: (){
                                        Get.back();
                                      },
                                      onConfirm: (){
                                        Get.offAll(const DashBoardScreen());
                                      }
                                    ),
                                  )
                                )
                      ],
                    ),
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}
