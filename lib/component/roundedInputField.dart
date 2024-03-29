import 'package:basket_ball/component/textFieldContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/colorConstants.dart';
import '../constants/stringConstants.dart';
import '../utils/lotsOfThemes.dart';

class RoundedInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool? isEnable;
  final bool? obscureText;
  final FocusNode? focusNode;
  final String? label;
  final IconData? icon;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? type;
  final ValueChanged<String>? onChanged;
  String? saveValue;
  String? initialValue;
  List<TextInputFormatter>? inputFormatters;
  // final textCapitalization;
  final keyboardType;
  final textinputAction;
  final maxLength;
  final cursorColor;
  final counterText;

  RoundedInputField({
    Key? key,
    this.controller,
    this.hintText,
    this.inputFormatters,
    // this.textCapitalization,
    this.isEnable,
    this.obscureText,
    this.focusNode,
    this.label,
    this.icon,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.keyboardType,
    this.textinputAction,
    this.type,
    this.counterText,
    this.maxLength,
    this.cursorColor,
    this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: Center(
        child: TextFormField(
          obscureText: type == StringConstants.password ? true : false,
          onChanged: onChanged,
          keyboardType: keyboardType,
          textInputAction: textinputAction,
          focusNode: focusNode,
          enabled: isEnable,
          maxLength: maxLength,
          initialValue: initialValue,
          // inputFormatters: [UpperCaseTextFormatter()],
          // textCapitalization: textCapitalization,
          cursorColor: cursorColor,
          style: LotOfThemes.txt14Dark,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              hintStyle: LotOfThemes.txt14Dark,
              counterText: counterText,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  color: ColorConstants.textDark,
                  width: 1.0,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  color: ColorConstants.blackColor,
                  width: 1.0,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  color: ColorConstants.blackColor,
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  color: ColorConstants.blackColor,
                  width: 1.0,
                ),
              ),
              labelText: label,
              labelStyle: const TextStyle(
                  color: Colors.grey,
                  // fontWeight: FontWeight.bold,
                  fontFamily: StringConstants.gilroyFontFamily,
                  fontSize: 14),
              hintText: hintText),
          validator: (input) => validate(input!),
          onSaved: (input) => saveValue = input,
          controller: controller,
        ),
      ),
    );
  }

  validate(String input) {
    if (type == StringConstants.username) {
      return input.isNotEmpty ? null : StringConstants.username;
    }
    if (type == StringConstants.password) {
      return input.isNotEmpty ? null : StringConstants.password;
    }
    if (type == StringConstants.enterQty) {
      return input.isNotEmpty ? null : StringConstants.invalidQty;
    }
    if (type == StringConstants.packer) {
      return input.isNotEmpty ? null : StringConstants.enterPacker;
    }
    if (type == StringConstants.mobile) {
      return input.length == 10 ? null : StringConstants.invalidMobile;
    }
  }
}