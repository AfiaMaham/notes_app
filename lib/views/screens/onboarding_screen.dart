import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import '../../Widgets/container_widget.dart';
import '../../Widgets/text_and_style.dart';
import '../../helpers/constants.dart';
import 'login_screen.dart';
import 'package:get/get.dart';
class OnBoardingScreen extends StatelessWidget {
  IconData arrowForward = Icons.arrow_forward;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColor.deepPurple,
      statusBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
      backgroundColor: AppColor.deepPurple,
      body: Column(
        children: [
          SizedBox(height: 15.h), // here yoiu can use padding
          Image.asset("assets/images/Illustration1.png"),
          SizedBox(height: 3.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: TextAndStyle(
              "Jot Down anything you want to achieve, today or in the future",
              16.sp,
              "poppins Bold",
              FontWeight.w700,
              AppColor.whiteColor,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          ContainerWidget(
            onButtonTap: () {
              // Get.to(ScreenLogin());
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScreenLogin(),
                ),
              );
            },
            text: "Let's Get Started",
            color: AppColor.whiteColor,
            isIcon: true,
            textColor: AppColor.deepPurple,
            width1: 25.w,
            width2: 18.w,
          ),
        ],
      ),
    );
  }
}
