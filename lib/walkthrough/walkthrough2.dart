
import 'package:flutter/material.dart';

import '../animations/animations.dart';

class WalkThrough2 extends StatefulWidget {

  WalkThrough2({Key? key}) : super(key: key);

  @override
  _WalkThrough2 createState() => _WalkThrough2();
}

class _WalkThrough2 extends State<WalkThrough2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "You Package in                                                   Our Safe Hands",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  )
              ),
              SizedBox(height: 50),
              Stack(
                children: [
                  Positioned(
                    child: CustomAnimation(
                      animationData: AnimationData.image("assets/images/Group 843.png"),
                      duration: Duration(seconds: 1),
                      delay: Duration(seconds: 0),
                    ),
                  ),
                  Positioned(left: 140, top: 65,
                    child: CustomAnimation(
                      animationData: AnimationData.image("assets/images/Group 844.png"),
                      duration: Duration(milliseconds: 50),
                      delay: Duration(seconds: 1),
                    ),
                  )
                ],),
              SizedBox(height: 60),
              Row(children: [
                SizedBox(width: 50),
                Container(
                    width: 10,
                    height: 9,
                    decoration:     BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xffd4d4d4))
                ),
                SizedBox(width: 6),
                Container(
                    width: 33,
                    height: 9,
                    decoration:     BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xfffd8700))
                ),
                SizedBox(width: 6),
                Container(
                    width: 10,
                    height: 9,
                    decoration:     BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xffd4d4d4))
                ),
                SizedBox(width: 6),
                Container(
                    width: 10,
                    height: 9,
                    decoration:     BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xffd4d4d4))
                )],),
              SizedBox(height: 44),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Text(
                        "Skip",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                  ),
                  SizedBox(width: 50),
                  SizedBox(
                    width: 139,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/walkthorught3');
                      },
                      child: Text("Get Started"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xfffd8700),
                        primary: Colors.transparent, // Set the button color as transparent
                        elevation: 0, // No shadow
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(31.5),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        side: BorderSide(
                          color: Color(0xfffd8700),
                          width: 2,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
    );
  }
}
