import 'package:ads_shopping/main.dart';
import 'package:ads_shopping/screens/Login/login_screen.dart';
import 'package:ads_shopping/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  PageController controller = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff6b705c),
        body: Center(
          child: Container(
            //width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/Phone And BG V1.png'),
              fit: BoxFit.fill,
            )),
            child: Stack(
              children: <Widget>[
                PageView(
                  onPageChanged: (value) {
                    setState(() {
                      pageIndex = value;
                    });
                  },
                  controller: controller,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Center(
                          child: Image.asset(
                            'assets/female_shopping_from_phone.png',
                            height: 300,
                            width: 400,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: Text(
                            'The right address for shopping any day',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.blueAccent),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 16.0),
                          child: Text(
                            'It is now very easy to reach the best quality among all the products on the internet! ',
                            textAlign: TextAlign.right,
                            style:
                                TextStyle(color: Colors.black, fontSize: 12.0),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Center(
                          child: Image.asset(
                            'assets/ads.png',
                            height: 200,
                            width: 300,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: Text(
                            'Get Any Thing Online ',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.blueAccent),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 16.0),
                          child: Text(
                            'You can buy anything ranging from digital products to hardware within few ads.',
                            textAlign: TextAlign.right,
                            style:
                                TextStyle(color: Colors.black, fontSize: 12.0),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Center(
                          child: Image.asset(
                            'assets/make_money.png',
                            height: 250,
                            width: 600,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: Text(
                            'Make your own money ',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.blueAccent),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 16.0),
                          child: Text(
                            'You can get your product with your tn-coin.',
                            textAlign: TextAlign.right,
                            style:
                                TextStyle(color: Colors.black, fontSize: 12.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  bottom: 16.0,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(8.0),
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: Colors.black, width: 2),
                                  color: pageIndex == 0
                                      ? Colors.blue.shade200
                                      : Colors.white),
                            ),
                            Container(
                              margin: EdgeInsets.all(8.0),
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: Colors.black, width: 2),
                                  color: pageIndex == 1
                                      ? Colors.blue.shade200
                                      : Colors.white),
                            ),
                            Container(
                              margin: EdgeInsets.all(8.0),
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: Colors.black, width: 2),
                                  color: pageIndex == 2
                                      ? Colors.blue.shade200
                                      : Colors.white),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Opacity(
                              opacity: pageIndex != 2 ? 1.0 : 0.0,
                              child: TextButton(
                                child: Text(
                                  'SKIP',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) => IntroPage()));
                                },
                              ),
                            ),
                            pageIndex != 2
                                ? FlatButton(
                                    splashColor: Colors.transparent,
                                    child: Text(
                                      'NEXT',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    onPressed: () {
                                      if (!(controller.page == 2.0))
                                        controller.nextPage(
                                            duration:
                                                Duration(milliseconds: 200),
                                            curve: Curves.linear);
                                    },
                                  )
                                : FlatButton(
                                    splashColor: Colors.transparent,
                                    child: Text(
                                      'FINISH',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginScreen()));
                                    },
                                  )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
