import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/helpers/constants.dart';
import 'package:notes_app/practice/page%20view%20builder.dart';
import 'package:notes_app/views/screens/onboarding_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:get_storage/get_storage.dart';
void main() async{
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          backgroundColor: AppColor.deepPurple,
          duration: 2000,
          splashTransition: SplashTransition.rotationTransition,
          // pageTransitionType: PageTransitionType.scale,
          splash: Image.asset(
            "assets/images/splash_icon.png",
            scale: 1.sp,
          ),
          nextScreen: OnBoardingScreen(),
        ),

        // home: MyView(),
        // home: Home2Layout(),
      );
    });
  }
}
