import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_login_2/button.dart';
import 'package:flutter_login_2/text_box/password_textbox.dart';
import 'package:flutter_login_2/text_box/text_input.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _passwordVisible = true;

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    FocusNode myFocusNode = new FocusNode();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.jpg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withAlpha(80),
          ),
          SingleChildScrollView(
            child: Stack(
              children: [
                Positioned(
                  left: 50,
                  top: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        tag: "Logo",
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      SizedBox(height: 20),
                      Hero(
                        tag: "LogoText",
                        child: Text(
                          "Enjoy the trip \nwith me",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat",
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.35),
                  height: 500,
                  padding:
                      EdgeInsets.only(top: 10, left: 40, right: 40, bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(150),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'New \nAccount',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                fontFamily: "Monserrat"),
                          ),
                          Column(children: [
                            Container(
                              width: 50,
                              height: 50,
                              child: Icon(Icons.camera_alt),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color(0XFFFF8057),
                                ),
                              ),
                            ),
                            Text(
                              "Upload picture",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ])
                        ],
                      ),
                      TextInput(
                        inputType: TextInputType.emailAddress,
                        myFocusNode: myFocusNode,
                        labeltext: "Email",
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8),
                      TextInput(
                          myFocusNode: myFocusNode,
                          inputType: TextInputType.text,
                          prefixIcon: Icon(Icons.person, color: Colors.black),
                          labeltext: "Username"),
                      SizedBox(
                        height: 8,
                      ),
                      PasswordTextBox(passwordVisible: _passwordVisible),
                      SizedBox(height: 50),
                      Button(
                          text: "Sign Up",
                          textColor: Colors.white,
                          press: () {
                            setState(() {
                              log("Sign up tapped");
                            });
                          },
                          color: Color(0XFFFF8057))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
