import 'dart:async';
import 'package:flutter/material.dart';
import 'package:notes_app/helpers/constants.dart';
import 'package:notes_app/views/screens/onboarding_screen.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnBoardingScreen(),
          ));
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.deepPurple,
      body: Center(
        child: Image.asset(
          "assets/images/splash_icon.png",
          scale: 1.sp,
        ),
      ),
    );
  }
}
