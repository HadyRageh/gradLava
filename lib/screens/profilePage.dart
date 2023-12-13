// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lava/views/constantsClolor.dart';
import 'package:lava/views/listTile.dart';
import 'package:lava/views/textField.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhiteColor,
      appBar: AppBar(
        backgroundColor: WhiteColor,
        title: Text('Personal info '),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Save',
                style: TextStyle(
                  color: BlueColor,
                  fontSize: 16,
                ),
              ))
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 104,
                backgroundColor: BlueColor,
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/personn.jpeg'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                textInputType: TextInputType.text,
                controller: TextEditingController(),
                hintName: 'Full name',
                prefixIcon: Icon(
                  Icons.featured_play_list_outlined,
                  color: BlueColor,
                  size: 20,
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)),
              ),
              TextFieldWidget(
                textInputType: TextInputType.emailAddress,
                controller: TextEditingController(),
                hintName: 'Email',
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: BlueColor,
                  size: 20,
                ),
                borderRadius: BorderRadius.circular(0),
              ),
              TextFieldWidget(
                textInputType: TextInputType.number,
                controller: TextEditingController(),
                hintName: 'Phone',
                prefixIcon: Icon(
                  Icons.phone,
                  color: BlueColor,
                  size: 20,
                ),
                borderRadius: BorderRadius.circular(0),
              ),
              TextFieldWidget(
                textInputType: TextInputType.text,
                controller: TextEditingController(),
                hintName: 'Gender',
                prefixIcon: Icon(
                  Icons.man_outlined,
                  color: BlueColor,
                  size: 20,
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32)),
              ),
              SizedBox(
                height: 20,
              ),
              ListTileWidget(
                ListTileName: 'Change password',
                leadingIcon: Icon(
                  Icons.lock_outlined,
                  color: BlueColor,
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)),
                onTap: () {},
              ),
              ListTileWidget(
                ListTileName: 'Delete Account',
                leadingIcon: Icon(
                  Icons.delete_outlined,
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32)),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
