// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lava/screens/profilePage.dart';
import 'package:lava/views/constantsClolor.dart';
import 'package:lava/views/listTile.dart';

class MorePage extends StatelessWidget {
  MorePage({super.key});

  var borderRadiusT = const BorderRadius.only(
      topRight: Radius.circular(32), topLeft: Radius.circular(32));
  var borderRadiusB = const BorderRadius.only(
      bottomLeft: Radius.circular(32), bottomRight: Radius.circular(32));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhiteColor,
      appBar: AppBar(
        backgroundColor: WhiteColor,
        //elevation: 2,
        title: Text('More Option'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ListTileWidget(
              ListTileName: 'Profile',
              leadingIcon: Icon(
                Icons.person_2_outlined,
                color: BlueColor,
              ),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32), topRight: Radius.circular(32)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
            ListTileWidget(
              ListTileName: 'Chat',
              leadingIcon: Icon(
                Icons.messenger_outline,
                color: BlueColor,
              ),
              borderRadius: BorderRadius.circular(0),
              onTap: () {},
            ),
            ListTileWidget(
              ListTileName: 'About',
              leadingIcon: Icon(
                Icons.help_center_outlined,
                color: BlueColor,
              ),
              borderRadius: BorderRadius.circular(0),
              onTap: () {},
            ),
            ListTileWidget(
              ListTileName: 'Exit from account',
              leadingIcon: Icon(
                Icons.exit_to_app_rounded,
                color: BlueColor,
              ),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32)),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
