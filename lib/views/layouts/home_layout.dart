import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/text_and_style.dart';
import 'package:notes_app/helpers/constants.dart';
import 'package:notes_app/views/layouts/notes_layout.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import '../../controller/test_controller.dart';

class HomeLayout extends StatelessWidget {
  TestController controller = Get.put(TestController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SafeArea(
        child: controller.notes.isNotEmpty
            ? NotesLayout():Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/Illustration2.png")
                .paddingOnly(top: 7.h),
            TextAndStyle(
              "Start Your Journey",
              20.sp,
              "poppins Regular",
              FontWeight.bold,
            ).paddingOnly(top: 3.h),
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
            ).paddingOnly(top: 2.h),
            Image.asset(
              "assets/images/Arrow.png",
              scale: 2.3,
            ).paddingOnly(top: 3.h),
          ],
        ),
      );
    });
  }
}
