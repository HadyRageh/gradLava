// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lava/views/constantsClolor.dart';

const decorationTextfieldTop = InputDecoration(
  // To delete borders
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: BlueColor,
      ),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10), topRight: Radius.circular(10))),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: BlueColor,
      ),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10), topRight: Radius.circular(10))),

  contentPadding: EdgeInsets.all(8),
);
const decorationTextfieldBottom = InputDecoration(
  // To delete borders
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: BlueColor,
      ),
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: BlueColor,
      ),
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))),

  contentPadding: EdgeInsets.all(8),
);

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    super.key,
    required this.borderRadius,
    required this.controller,
    required this.hintName,
    required this.prefixIcon,
    required this.textInputType,
  });
  final BorderRadius borderRadius;
  final TextEditingController controller;
  final String hintName;
  final Icon prefixIcon;
  final TextInputType textInputType;
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
