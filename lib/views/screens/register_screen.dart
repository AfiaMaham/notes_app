import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import '../../Widgets/container_widget.dart';
import '../../Widgets/text_and_style.dart';
import '../../Widgets/text_form_field.dart';
import '../../helpers/constants.dart';

class RegisterScreen extends StatelessWidget {
  IconData arrowBack = Icons.arrow_back_ios;
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
      appBar: AppBar(
        backgroundColor: AppColor.whiteColor,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            arrowBack,
            size: 20,
            color: AppColor.deepPurple,
          ),
        ),
        title: TextAndStyle("Back to Login", 16, "poppins Regular",
            FontWeight.w500, AppColor.deepPurple),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextAndStyle("Register", 32, "poppins Regular", FontWeight.w600,
                      AppColor.black)
                  .paddingOnly(top: 1.h),
              TextAndStyle("And start taking notes", 16, "poppins Regular",
                      FontWeight.w400, AppColor.grayShade2)
                  .paddingOnly(top: 1.h),
              TextAndStyle("Full Name", 16, "poppins Regular", FontWeight.w600,
                      AppColor.black)
                  .paddingOnly(top: 4.h),
              FieldOfText(
                keyboardType: TextInputType.name,
                hint: "Example: John Doe",
                isFilled: false,
              ).paddingOnly(top: 1.h),
              TextAndStyle("Email Address", 16, "poppins Regular",
                      FontWeight.w600, AppColor.black)
                  .paddingOnly(top: 4.h),
              FieldOfText(
                keyboardType: TextInputType.emailAddress,
                hint: "Example: johndoe@gmail.com",
                isFilled: false,
              ).paddingOnly(top: 1.h),
              TextAndStyle("Password", 16, "poppins Regular", FontWeight.w600,
                      AppColor.black)
                  .paddingOnly(top: 4.h),
              SizedBox(height: 1.h),
              FieldOfText(
                keyboardType: TextInputType.text,
                hint: "********",
                obscure: true,
                isFilled: false,
              ).paddingOnly(top: 1.h),
              TextAndStyle("Retype Password", 16, "poppins Regular",
                      FontWeight.w600, AppColor.black)
                  .paddingOnly(top: 4.h),
              FieldOfText(
                keyboardType: TextInputType.text,
                hint: "********",
                obscure: true,
                isFilled: false,
              ).paddingOnly(top: 1.h),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: ContainerWidget(
                  color: AppColor.deepPurple,
                  text: 'Register',
                  width1: 37.w,
                  width2: 25.w,
                  isIcon: true,
                  textColor: AppColor.whiteColor,
                ).paddingOnly(top: 4.h),
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                      color: AppColor.grayLight,
                    ),
                  ),
                  TextAndStyle("Or", 12, "poppins Regular", FontWeight.w500,
                      AppColor.grayShade3),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                      color: AppColor.grayLight,
                    ),
                  ),
                ],
              ).paddingOnly(top: 1.5.h),
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
              ).paddingOnly(top: 1.5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextAndStyle("Already have an account?", 16,
                      "poppins Regular", FontWeight.w500, AppColor.deepPurple),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: TextAndStyle("Login here", 16, "poppins Regular",
                        FontWeight.w500, AppColor.deepPurple),
                  ),
                ],
              ).paddingOnly(top: 4.h, bottom: 2.h),
            ],
          ),
        ),
      ),
    );
  }
}
