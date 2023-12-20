// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lava/screens/homePage.dart';
import 'package:lava/screens/morePage.dart';
import 'package:lava/screens/register.dart';
import 'package:lava/screens/signIn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lava',
      theme: ThemeData(
        fontFamily: 'Roboto',
        //scaffoldBackgroundColor: Color(0xffFFFFFF),
      ),
      home: HomePage(),
    );
  }
}
