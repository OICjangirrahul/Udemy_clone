import 'dart:async';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:udamy/Screen/landingPage.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    Timer(
      Duration(seconds: 3),
      ()=> Navigator.pushReplacement(context, PageTransition(child: LandingPage(), type: PageTransitionType.rightToLeft))
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 300.0,
              
              child: Image.asset('assets/images/udemyLog.jpeg',),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: CircularProgressIndicator(
                  color: Colors.red,
                  backgroundColor: Colors.black,
                 
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
