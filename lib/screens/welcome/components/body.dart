import 'package:flutter/material.dart';
import 'package:ads_shopping/screens/Login/login_screen.dart';
import 'package:ads_shopping/screens/Signup/signup_screen.dart';
import 'package:ads_shopping/screens/welcome/components/background.dart';

import 'package:ads_shopping/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _email = TextEditingController();
    TextEditingController _password = TextEditingController();

    bool isLoading = false;
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset('assets/Presentation 21.png',
                height: 600, width: 1000000000, fit: BoxFit.fill),
            SizedBox(
              height: 2,
            ),

            SizedBox(
              height: 50,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              FlatButton(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                  ),
                  color: const Color(0xFF9AAEFF),
                  onPressed: () {
                    // setState(() {
                    //   isLoading = true;
                    // });
                    // AuthClass()
                    // .signIN(
                    // email: _email.text.trim(),
                    // password: _password.text.trim())
                    // .then((value) {
                    //debugPrint("CONNECTING_ACCOUNT : $value");
                    //if (value == "Welcome") {
                    //;
                    // Navigator.pushAndRemoveUntil(
                    //context,
                    // MaterialPageRoute(
                    // builder: (context) => LoginScreen()),
                    //(route) => false);
                    //} else {
                    //;
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                        (route) => false);
                    //}
                  },
                  child: Text("Log In ")),
              FlatButton(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                  ),
                  color: const Color(0xFF9AAEFF),
                  onPressed: () {
                    // setState(() {
                    //   isLoading = true;
                    // });
                    // AuthClass()
                    // .signIN(
                    // email: _email.text.trim(),
                    // password: _password.text.trim())
                    // .then((value) {
                    //debugPrint("CONNECTING_ACCOUNT : $value");
                    //if (value == "Welcome") {
                    //;
                    // Navigator.pushAndRemoveUntil(
                    //context,
                    // MaterialPageRoute(
                    // builder: (context) => LoginScreen()),
                    //(route) => false);
                    //} else {
                    //;
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                        (route) => false);
                    //}
                  },
                  child: Text("Register ")),
            ])
            //Social Auth Buttons
          ],
        ),
      ),
    );
  }
}
