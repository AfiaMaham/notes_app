import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../Widgets/text_and_style.dart';
import '../../Widgets/container_widget.dart';
import '../../Widgets/text_form_field.dart';
import '../../helpers/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'new_password_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  IconData arrowBack = Icons.arrow_back_ios;

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
              Padding(
                padding: EdgeInsets.only(top: 4.h),
                child: Image.asset("assets/images/Illustration1.png")
                    .paddingSymmetric(horizontal: 10.w),
              ),
              TextAndStyle("Forgot Password", 32, "poppins Regular",
                      FontWeight.w600, AppColor.black)
                  .paddingOnly(top: 5.h),
              TextAndStyle(
                      "Inset your email address to receive a code for creating a new password",
                      16,
                      "poppins Regular",
                      FontWeight.w400,
                      AppColor.grayShade2)
                  .paddingOnly(top: 2.h),
              TextAndStyle("Email Address", 16, "poppins Regular",
                      FontWeight.w400, AppColor.black)
                  .paddingOnly(top: 4.h),
              FieldOfText(
                keyboardType: TextInputType.emailAddress,
                hint: "anto_michael@gmail.com",
                isFilled: false,
              ).paddingOnly(top: 1.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NewPasswordScreen()),
                  );
                },
                child: ContainerWidget(
                  color: AppColor.deepPurple,
                  text: 'Send Code',
                  isIcon: false,
                  textColor: AppColor.whiteColor,
                ).paddingOnly(top: 10.h),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
