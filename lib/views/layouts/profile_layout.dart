import 'package:flutter/material.dart';
import 'package:notes_app/helpers/constants.dart';
import 'package:sizer/sizer.dart';
import '../../Widgets/text_and_style.dart';
import '../screens/new_password_screen.dart';
import 'package:get/get.dart';

class ProfileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.whiteColor,
        title: TextAndStyle("Profile", 23.sp, "poppins Regular",
            FontWeight.w600, AppColor.black),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextAndStyle("Michael Antonio", 15.sp, "poppins Regular",
                    FontWeight.bold)
                .paddingOnly(top: 3.h),
            Row(
              children: [
                Icon(
                  Icons.email_outlined,
                  color: AppColor.grayShade,
                  size: 15.sp,
                ),
                SizedBox(
                  width: 2.w,
                ),
                TextAndStyle("anto_michael@gmail.com", 10.sp, "poppins Regular",
                    FontWeight.w200, AppColor.grayShade)
              ],
            ).paddingOnly(top: 1.h),
            Container(
              height: 5.h,
              width: 90.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: AppColor.deepPurple)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.edit_square,
                    color: AppColor.deepPurple,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  TextAndStyle("Edit Profile", 15.sp, "poppins Regular",
                      FontWeight.w200, AppColor.deepPurple),
                ],
              ),
            ).paddingOnly(top: 4.h),
            Divider(
              indent: 3.w,
              endIndent: 3.w,
              thickness: 1,
            ).paddingOnly(top: 3.h),
            TextAndStyle("APP SETTINGS", 10.sp, "poppins Regular",
                    FontWeight.w200, AppColor.grayShade)
                .paddingOnly(top: 2.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewPasswordScreen(),
                  ),
                );
              },
              child: Container(
                height: 7.h,
                width: 90.w,
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.lock_outline).paddingOnly(left: 3.w),
                    TextAndStyle(
                      "Change Password",
                      14.sp,
                      "poppins Regular",
                      FontWeight.w200,
                    ).paddingOnly(left: 3.w),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12.sp,
                      color: AppColor.grayShade,
                    ).paddingOnly(left: 28.w),
                  ],
                ),
              ),
            ),
            Container(
              height: 7.h,
              width: 90.w,
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 3.w,
                  ),
                  Icon(
                    Icons.logout,
                    color: AppColor.red,
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  TextAndStyle("Log Out", 14.sp, "poppins Regular",
                      FontWeight.w200, AppColor.red),
                ],
              ),
            ).paddingOnly(top: 2.h),
          ],
        ),
      ),
    );
  }
}
