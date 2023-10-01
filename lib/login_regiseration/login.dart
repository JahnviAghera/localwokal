import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}
class _Login extends State<Login> {
  bool _isPasswordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }
  @override
  Widget build(BuildContext context) {
    setSystemUIOverlayStyle(); // Call the method to set status bar style
    return Scaffold(
      backgroundColor: Color(0xFF0274BC),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 101.5),
              SizedBox(
                  height: 59,
                  width: 61,
                  child: Image.asset("assets/images/logo.png")
              ),
              SizedBox(height: 35.5),
              Text(
                  "Let’s Sign You In",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  )
              ),
              SizedBox(height: 10),
              Text(
                  "Welcome back, you’ve been missed!",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  )
              ),
              SizedBox(height: 55),
              Padding(padding: EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: 460,
                  width: 418,
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Set background color to white
                        borderRadius: BorderRadius.circular(20), // Set border radius
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "Username or E-Mail",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                )
                            ),
                            TextField(
                              decoration: InputDecoration(
                                focusColor: Color(0xFF0274BC),
                                prefixIcon: Icon(Icons.person),
                                //TODO: IF USERNAME OR EMAIL AVIALABLE IN DATABASE SHOW BELOW ICON GREEN
                                suffixIcon: Icon(Icons.check, color: Colors.grey,),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF0274BC)), // Set the desired focus color for the bottom border
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                                "Password",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                )
                            ),
                            TextField(
                              obscureText: !_isPasswordVisible,
                              decoration: InputDecoration(
                                focusColor: Color(0xFF0274BC),
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: IconButton(
                                  icon: _isPasswordVisible ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                                  color: Colors.grey,
                                  onPressed: _togglePasswordVisibility,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF0274BC)), // Set the desired focus color for the bottom border
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 309,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(context, '/login');
                                    },
                                    child: Text("Sıgn In"),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xfffd8700),
                                      primary: Colors.transparent, // Set the button color as transparent
                                      elevation: 0, // No shadow
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                                      textStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      side: BorderSide(
                                        color: Color(0xfffd8700),
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                    child: Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Don’t have an account? ',
                                            style: TextStyle(
                                              color: Color(0xFF171717),
                                              fontSize: 18,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w300,
                                              height: 0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Sign Up',
                                            style: TextStyle(
                                              color: Color(0xFF0274BC),
                                              fontSize: 18,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              height: 0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.center,
                                    )
                                )
                              ],
                            )
                          ],
                        ),
                      )
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }

  void setSystemUIOverlayStyle() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Status bar color
      statusBarIconBrightness: Brightness.light, // Dark or light icons
    ));
  }
}
