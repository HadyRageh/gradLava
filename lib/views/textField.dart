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
