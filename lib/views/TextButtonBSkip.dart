// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextButtonBSkip extends StatelessWidget {
  TextButtonBSkip({
    super.key,
    required this.onPressed,
    required this.textName,
  });
  final String textName;
  Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          textName,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Color(0xffADA8A8),
          ),
        ));
  }
}
