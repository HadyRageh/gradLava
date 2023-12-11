// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:lava/screens/register.dart';
import 'package:lava/views/acccountBelow.dart';
import 'package:lava/views/constantsClolor.dart';
import 'package:lava/views/textField.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                hintText: "Email",
                hintStyle: TextStyle(
                    color: GreyColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
                prefixIcon:
                    Icon(Icons.email_outlined, color: Color(0xffADA8A8)),
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
            height: 20,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                  color: BlueColor,
                ),
              )),
          SizedBox(
            height: 15,
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
                  'Log in',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: WhiteColor),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.,
            children: [
              Text(
                'don\'t have an account? ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: GreyColor,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
                child: Text('Create',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: BlueColor,
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          AccountBelow(),
        ],
      ),
    );
  }
}
