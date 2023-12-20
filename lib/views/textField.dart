// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lava/views/constantsClolor.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    super.key,
    required this.borderRadius,
    required this.controller,
    required this.hintName,
    required this.prefixIcon,
    required this.textInputType,
    //  required this.suffixIcon,
    // required this.isSuffix,
  });
  final BorderRadius borderRadius;
  final TextEditingController controller;
  final String hintName;
  final Icon prefixIcon;
  //  Icon suffixIcon;
  final TextInputType textInputType;
  // final bool isSuffix;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hintName,
        hintStyle: TextStyle(
            color: GreyColor, fontSize: 18, fontWeight: FontWeight.w400),
        prefixIcon: prefixIcon,
        // suffixIcon: isSuffix?suffixIcon:Icon(Icons.true),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: GreyColor.withOpacity(0.3),
          ),
          borderRadius: borderRadius,
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: BlueColor.withOpacity(0.3),
            ),
            borderRadius: borderRadius),
        contentPadding: EdgeInsets.all(8),
      ),
    );
  }
}
