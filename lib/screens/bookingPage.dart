// ignore_for_file: avoid_init_to_null, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:lava/screens/cardPage.dart';
import 'package:lava/views/appBarWidget.dart';
import 'package:lava/views/constantsClolor.dart';

class BookingPage extends StatelessWidget {
  BookingPage({super.key});
  var selectedItem = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: WhiteColor,
        leading: Image.asset(
          'assets/images/egypt logo.png',
          width: 20,
          height: 20,
        ),
        title: AppBarWidget(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_outlined,
                color: BlueColor,
                size: 30,
              )),
        ],
      ),
    );
  }
}
