import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../Widgets/text_and_style.dart';
import '../../Widgets/container_widget.dart';
import '../../Widgets/text_form_field.dart';
import '../../helpers/constants.dart';
import 'login_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class NewPasswordScreen extends StatelessWidget {
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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ScreenLogin(),
              ),
            );
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            TextAndStyle("Create a New Password", 32, "poppins Regular",
                FontWeight.w600, AppColor.black),
            TextAndStyle(
                    "Your new password should be different from the previous password",
                    16,
                    "poppins Regular",
                    FontWeight.w400,
                    AppColor.grayShade2)
                .paddingOnly(top: 2.h),
            Align(
              alignment: Alignment.centerLeft,
              child: TextAndStyle("New Password", 16, "poppins Regular",
                      FontWeight.w500, AppColor.black)
                  .paddingOnly(top: 2.h),
            ),
            FieldOfText(
              keyboardType: TextInputType.text,
              hint: "********",
              obscure: true,
              helper: "min.8 characters, combination of 0-9, A-Z, a-z",
              isFilled: false,
            ).paddingOnly(top: 1.h),
            Align(
              alignment: Alignment.centerLeft,
              child: TextAndStyle("Retype New Password", 16, "poppins Regular",
                      FontWeight.w500, AppColor.black)
                  .paddingOnly(top: 4.h),
            ),
            FieldOfText(
              keyboardType: TextInputType.text,
              hint: "********",
              obscure: true,
              isFilled: false,
            ).paddingOnly(top: 1.h),
            ContainerWidget(
              color: AppColor.deepPurple,
              text: 'Create Password',
              isIcon: false,
              borderRadius: BorderRadius.circular(10),
              textColor: AppColor.whiteColor,
            ).paddingOnly(top: 27.h),
          ],
        ),
      ),
    );
  }
}
