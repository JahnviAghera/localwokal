import 'dart:async';

import 'package:flutter/material.dart';

import 'animations/animations.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 2 seconds and then navigate to the home screen
    Timer(
      Duration(seconds: 6),
          () => Navigator.pushReplacementNamed(context, '/walkthorught1'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // You can customize the appearance of your splash screen here
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomAnimation(
              animationData: AnimationData.image("assets/images/logo.png"),
              duration: Duration(seconds: 2),
              delay: Duration(seconds: 1),
              curve: Curves.easeInOut,
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomAnimation(
                  animationData: AnimationData.text(
                    Text(
                      'LocalWokal',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  duration: Duration(seconds: 2),
                  delay: Duration(seconds: 2),
                  curve: Curves.easeInOut,
                ),
                SizedBox(height: 10),
                CustomAnimation(
                  animationData: AnimationData.text(
                    Text(
                      'Conneting Peoples',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  duration: Duration(seconds: 2),
                  delay: Duration(seconds: 3),
                  curve: Curves.easeInOut,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

