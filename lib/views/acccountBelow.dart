// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lava/screens/homePage.dart';
import 'package:lava/screens/signIn.dart';
import 'package:lava/views/TextButtonBSkip.dart';
import 'package:lava/views/constantsClolor.dart';

class AccountBelow extends StatelessWidget {
  const AccountBelow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 1,
              width: 100,
              color: BlackColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'OR ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: GreyColor,
                ),
              ),
            ),
            Container(
              height: 1,
              width: 100,
              color: BlackColor,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                'assets/images/google loge.png',
                width: 60,
                height: 60,
              ),
            ),
            SizedBox(
              width: 40,
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                'assets/images/facebook logo.png',
                width: 60,
                height: 60,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButtonBSkip(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  );
                },
                textName: 'Back',
              ),
              TextButtonBSkip(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                textName: 'Skip',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
