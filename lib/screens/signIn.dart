// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:lava/screens/register.dart';
import 'package:lava/views/acccountBelow.dart';
import 'package:lava/views/constantsClolor.dart';
import 'package:lava/views/textField.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isabscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/Color logo with background.png',
                  height: 100,
                  width: 200,
                ),
                SizedBox(
                  height: 20,
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
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32)),
                ),
                TextFormField(
                  // controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: isabscure,

                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: GreyColor.withOpacity(0.3),
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: BlueColor.withOpacity(0.3),
                      ),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(32),
                          bottomRight: Radius.circular(32)),
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: GreyColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                    prefixIcon: Icon(
                      Icons.lock_outlined,
                      color: BlueColor,
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
                    contentPadding: EdgeInsets.all(8),
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
          ),
        ),
      ),
    );
  }
}
