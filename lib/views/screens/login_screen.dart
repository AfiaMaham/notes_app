import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notes_app/views/screens/register_screen.dart';
import 'package:sizer/sizer.dart';
import '../../../Widgets/text_and_style.dart';
import '../../../Widgets/text_form_field.dart';
import '../../Widgets/container_widget.dart';
import '../../helpers/constants.dart';
import '../layouts/home_layout.dart';
import 'forget_password_screen.dart';

class ScreenLogin extends StatelessWidget {
  IconData arrowForward = Icons.arrow_forward;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColor.whiteColor,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.whiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 17.h),
            TextAndStyle("Let's Login", 32, "poppins Regular", FontWeight.w600,
                AppColor.black),
            SizedBox(height: 1.h),
            TextAndStyle("And notes your idea", 16, "poppins Regular",
                FontWeight.w400, AppColor.grayShade2),
            SizedBox(height: 4.h),
            TextAndStyle("Email Address", 16, "poppins Regular",
                FontWeight.w500, AppColor.black),
            SizedBox(height: 1.h),
            FieldOfText(
              keyboardType: TextInputType.emailAddress,
              hint: "Example: johndoe@gmail.com",
              isFilled: false,
            ),
            SizedBox(height: 4.h),
            TextAndStyle(
              "Password",
              16,
              "poppins Regular",
              FontWeight.w500,
              AppColor.black,
            ),
            SizedBox(height: 1.h),
            FieldOfText(
              obscure: true,
              keyboardType: TextInputType.name,
              hint: "********",
              isFilled: false,

            ),
            SizedBox(height: 1.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgotPasswordScreen(),
                  ),
                );
              },
              child: TextAndStyle(
                  "Forgot Password",
                  16,
                  "poppins Regular",
                  FontWeight.w500,
                  AppColor.deepPurple,
                  TextDecoration.underline),
            ),
            SizedBox(height: 7.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeLayout(),
                  ),
                );
              },
              child: ContainerWidget(
                color: AppColor.deepPurple,
                width1: 40.w,
                width2: 25.w,
                text: 'Login',
                isIcon: true,
                textColor: AppColor.whiteColor,
              ),
            ),
            SizedBox(height: 2.h),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    indent: 20,
                    endIndent: 10,
                    color: AppColor.grayLight,
                  ),
                ),
                TextAndStyle("Or", 12, "poppins Regular", FontWeight.w500,
                    AppColor.grayShade2),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    indent: 10,
                    endIndent: 20,
                    color: AppColor.grayLight,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Container(
              height: 7.h,
              width: 90.w,
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                border: Border.all(color: AppColor.grayShade3),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset(
                    "assets/images/ic_google.png",
                    height: 6.h,
                    width: 6.w,
                  ),
                  SizedBox(width: 5.w),
                  TextAndStyle("Login with Google", 13.sp, "poppins Regular",
                      FontWeight.w500, AppColor.black),
                ],
              ),
            ),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextAndStyle("Don't have any account? ", 16, "poppins Regular",
                    FontWeight.w500, AppColor.deepPurple),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterScreen(),
                      ),
                    );
                  },
                  child: TextAndStyle("Register here", 16, "poppins Regular",
                      FontWeight.w500, AppColor.deepPurple),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
