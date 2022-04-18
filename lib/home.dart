import 'package:ads_shopping/screens/intro_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        actions: [
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                //sign Out the User

                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => IntroPage()),
                    (route) => false);
              })
        ],
      ),
      body: Center(
        child: Text("Email"),
      ),
    );
  }
}
