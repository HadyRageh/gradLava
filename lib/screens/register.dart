// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:lava/views/acccountBelow.dart';
import 'package:lava/views/constantsClolor.dart';
import 'package:lava/views/textField.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isabscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            'assets/images/Color logo with background.png',
            height: 100,
            width: 200,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37),
            child: TextFormField(
              // controller: emailController,
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              decoration: decorationTextfieldTop.copyWith(
                hintText: "Full Name",
                hintStyle: TextStyle(
                    color: GreyColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
                prefixIcon: Icon(
                  Icons.person_2_outlined,
                  color: GreyColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37),
            child: TextFormField(
              // controller: emailController,
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              decoration: decorationTextfieldBottom.copyWith(
                hintText: "Email",
                hintStyle: TextStyle(
                    color: GreyColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: GreyColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37),
            child: TextFormField(
              // controller: emailController,
              keyboardType: TextInputType.emailAddress,
              obscureText: isabscure,
              decoration: decorationTextfieldBottom.copyWith(
                hintText: "Password",
                hintStyle: TextStyle(
                    color: GreyColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
                prefixIcon: Icon(
                  Icons.lock_outlined,
                  color: GreyColor,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isabscure = !isabscure;
                    });
                  },
                  icon: isabscure
                      ? Icon(Icons.visibility_off_outlined)
                      : Icon(Icons.visibility_outlined),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: 313,
              decoration: BoxDecoration(
                color: BlueColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Create Account',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: WhiteColor),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          AccountBelow(),
        ],
      ),
    );
  }
}
