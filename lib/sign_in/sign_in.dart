import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_login_2/button.dart';
import 'package:flutter_login_2/text_box/password_textbox.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _passwordVisible = true;
  String username = "Alex";

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
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
                            'Welcome back \nAlex',
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                          ClipOval(
                            child: Image.asset(
                              'assets/images/dp.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                      PasswordTextBox(passwordVisible: _passwordVisible),
                      SizedBox(height: 15),
                      Container(
                        alignment: Alignment.bottomRight,
                        padding: EdgeInsets.only(top: 10),
                        child: InkWell(
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0XFFFF8057),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Button(
                        text: "Sign In",
                        textColor: Colors.white,
                        press: () {
                          setState(() {
                            log("Sign in tapped");
                          });
                        },
                        color: Color(0XFFFF8057),
                      ),
                      SizedBox(height: 10),
                      Text("Or sign in with"),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                log("google");
                              });
                            },
                            child: Image.asset(
                              'assets/images/google.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                log("facebook");
                              });
                            },
                            child: Image.asset(
                              'assets/images/facebook.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                log("twitter");
                              });
                            },
                            child: Image.asset(
                              'assets/images/twitter.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ],
                      ),
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
