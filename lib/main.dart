import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:localwokal_0v/login_regiseration/login.dart';
import 'package:localwokal_0v/splashscreen.dart';
import 'package:localwokal_0v/walkthrough/walkthrough1.dart';
import 'package:localwokal_0v/walkthrough/walkthrough2.dart';
import 'package:localwokal_0v/walkthrough/walkthrough3.dart';
import 'package:localwokal_0v/walkthrough/walkthrough4.dart';
import 'package:simple_animations/simple_animations.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // Status bar color
    statusBarIconBrightness: Brightness.dark, // Dark or light icons
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // Set SplashScreen as the home widget
      routes: {
        '/walkthorught1': (context) => WalkThrough1(), // Define a route for your main screen
        '/walkthorught2': (context) => WalkThrough2(), // Define a route for your main screen
        '/walkthorught3': (context) => WalkThrough3(), // Define a route for your main screen
        '/walkthorught4': (context) => WalkThrough4(), // Define a route for your main screen
        '/login': (context) => Login(), // Define a route for your main screen
      },
    );
  }
}

