import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../Widgets/text_and_style.dart';
import '../../../Widgets/text_form_field.dart';
import '../../../helpers/constants.dart';
import '../../Widgets/container_widget.dart';
import '../../controller/test_controller.dart';

class HomeScreen extends StatelessWidget {
  TestController controller = Get.put(TestController());
  TextEditingController titleController = TextEditingController();
  TextEditingController dataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TextAndStyle("Notes", 23.sp, "poppins Regular",
                          FontWeight.w600, AppColor.black)
                      .paddingOnly(left: 33.w),
                  TextAndStyle("Edit", 13.sp, "poppins Regular",
                          FontWeight.w200, AppColor.grayShade)
                      .paddingOnly(left: 25.w),
                ],
              ),
              TextAndStyle("Name", 13.sp, "poppins Regular", FontWeight.w200,
                      AppColor.black)
                  .paddingOnly(top: 5.h),
              FieldOfText(
                isFilled: true,
                keyboardType: TextInputType.text,
                hint: "Muhammad Ali Hassan Sheikh",
                icon: Icons.cancel_outlined,
                controller: titleController,
                onIconTap: () {
                  titleController.clear();
                },
              ).paddingOnly(top: 1.5.h),
              TextAndStyle("Write your data here", 13.sp, "poppins Regular",
                      FontWeight.w200, AppColor.black)
                  .paddingOnly(top: 2.h),
              Container(
                height: 30.h,
                child: FieldOfText(
                  maxLines: 25,
                  keyboardType: TextInputType.text,
                  isFilled: true,
                  controller: dataController,
                  hint:
                      "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
                ),
              ).paddingOnly(top: 1.5.h),
              ContainerWidget(
                color: AppColor.deepPurple,
                text: 'Save',
                isIcon: false,
                textColor: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(10),
                onButtonTap: () {
                  Map<String, String> newNotes = {
                    'title': titleController.text,
                    'data': dataController.text,
                  };
                  controller.notes.add(newNotes);
                  // Get.back();
                  Navigator.pop(context);
                },
              ).paddingOnly(top: 23.h, bottom: 3.h),
            ],
          ),
        ),
      ),
    );
  }
}
