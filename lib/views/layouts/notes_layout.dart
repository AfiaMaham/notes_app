import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/text_and_style.dart';
import 'package:notes_app/helpers/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import '../../controller/test_controller.dart';

class NotesLayout extends StatelessWidget {
  TestController controller = Get.put(TestController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.whiteColor,
          elevation: 0,
          title: TextAndStyle("Home", 18.sp, "poppins Regular", FontWeight.w600,
              AppColor.black),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: ListView.builder(
            itemCount: controller.notes.length,
            itemBuilder: (context, index) => Card(
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                leading: CircleAvatar(
                  backgroundColor: AppColor.DarkPurple,
                  radius: 18.sp,
                  child: Icon(Icons.lightbulb),
                ),
                tileColor: AppColor.deepPurple,
                title: Text(
                  "${controller.notes[index]['title']}",
                  style: TextStyle(
                      color: AppColor.whiteColor, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "${controller.notes[index]['data']}",
                  style: TextStyle(color: AppColor.whiteColor),
                ),
              ),
            ),
          ),
        ));
  }
}
