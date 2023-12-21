import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../Widgets/text_and_style.dart';
import '../../../Widgets/text_form_field.dart';
import '../../../helpers/constants.dart';
import '../../Widgets/container_widget.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController _titleController = TextEditingController();

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
                  SizedBox(width: 33.w),
                  TextAndStyle("Notes", 23.sp, "poppins Regular",
                      FontWeight.w600, AppColor.black),
                  SizedBox(
                    width: 25.w,
                  ),
                  TextAndStyle("Edit", 13.sp, "poppins Regular",
                      FontWeight.w200, AppColor.grayShade),
                ],
              ),
              SizedBox(
                height: 10.w,
              ),
              TextAndStyle("Name", 13.sp, "poppins Regular", FontWeight.w200,
                  AppColor.black),
              SizedBox(
                height: 2.w,
              ),
              FieldOfText(
                isFilled: true,
                keyboardType: TextInputType.text,
                hint: "Muhammad Ali Hassan Sheikh",
                icon: Icons.cancel_outlined,
                controller: _titleController,
                onIconTap: () {
                  _titleController.clear();
                },
              ),
              SizedBox(
                height: 3.w,
              ),
              TextAndStyle("Write your data here", 13.sp, "poppins Regular",
                  FontWeight.w200, AppColor.black),
              SizedBox(
                height: 2.w,
              ),
              Container(
                height: 30.h,
                child: FieldOfText(
                  maxLines: 25,
                  keyboardType: TextInputType.text,
                  isFilled: true,
                  hint:
                      "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
                ),
              ),
              SizedBox(
                height: 23.h,
              ),
              ContainerWidget(
                color: AppColor.deepPurple,
                text: 'Save',
                isIcon: false,
                textColor: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              SizedBox(
                height: 3.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
