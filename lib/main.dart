import 'package:flutter/material.dart';
import 'package:notes_app/views/screens/onboarding_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OnBoardingScreen(),
      );
    });
  }
}
