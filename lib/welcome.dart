import 'package:flutter/material.dart';
import 'package:flutter_login_2/button.dart';
import 'package:flutter_login_2/sign_in/sign_in.dart';
import 'package:flutter_login_2/sign_up/sign_up.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
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
              flex: 2,
            ),
            Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Button(
                        textColor: Colors.white,
                        color: Color(0XFFFF8057),
                        text: "Sign Up",
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                      ),
                      SizedBox(height: 20),
                      Button(
                          textColor: Color(0XFFFF8057),
                          color: Colors.white,
                          text: "Sign In",
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignIn()));
                          })
                    ]),
                flex: 1),
            SizedBox(height: 40)
          ],
        )
      ],
    );
  }
}
