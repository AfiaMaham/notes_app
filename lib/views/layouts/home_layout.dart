import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/text_and_style.dart';
import 'package:notes_app/helpers/constants.dart';
import 'package:sizer/sizer.dart';
class HomeLayout extends StatelessWidget {
  const HomeLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 7.h,
        ),
        Image.asset("assets/images/Illustration2.png"),
        SizedBox(
          height: 3.h,
        ),
        TextAndStyle(
          "Start Your Journey",
          20.sp,
          "poppins Regular",
          FontWeight.bold,
        ),
        SizedBox(
          height: 2.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Text(
            "Every big step start with small step.Notes your first idea and start your journey!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "poppins Regular",
              fontSize: 13.sp,
              fontWeight: FontWeight.w200,
              color: AppColor.grayShade,
            ),
          ),
        ),
        SizedBox(
          height: 3.h,
        ),
        Image.asset(
          "assets/images/Arrow.png",
          scale: 2.3,
        ),
      ],
    );
  }
}