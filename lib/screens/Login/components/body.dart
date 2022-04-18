// ignore: import_of_legacy_library_into_null_safe
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ads_shopping/screens/Login/login_screen.dart';

class Body extends StatelessWidget {
  bool isLoading = false;
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Scaffold(
      body: isLoading == false
          ? Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Login1.png"),
                  fit: BoxFit.cover,
                ),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 340,
                  ),
                  TextFormField(
                    controller: _email,
                    decoration: InputDecoration(hintText: "Email"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _password,
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ButtonTheme(
                          minWidth: 342.0,
                          height: 50.0,
                          child: FlatButton(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.black, width: 1),
                              ),
                              color: const Color(0xFF809AFE),
                              onPressed: signIn,
                              child: Text("Log In ")),
                        )
                      ]),

                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: BorderSide(color: Colors.black)),

                          primary: Colors.white24,
                          // Background color
                        ),
                        label: Text('Facebook'),
                        icon: Image.asset(
                          'assets/facebook.png',
                        ),
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
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                              (route) => false);
                          //}
                        },
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: BorderSide(color: Colors.black)),

                          primary: Colors.white24,
                          // Background color
                        ),
                        label: Text(
                          'Gmail',
                        ),
                        icon: Image.asset(
                          'assets/Gmail_Icon.png',
                        ),
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
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                              (route) => false);
                          //}
                        },
                      ),
                    ],
                  ),
                  //Social Auth Buttons
                ],
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _email.text.trim(),
      password: _password.toString().trim(),
    );
  }
}
