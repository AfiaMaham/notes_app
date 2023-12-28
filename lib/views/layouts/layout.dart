import 'package:flutter/material.dart';
import 'package:notes_app/controller/test_controller.dart';
import 'package:notes_app/views/layouts/home_layout.dart';
import 'package:notes_app/views/layouts/profile_layout.dart';
import 'package:sizer/sizer.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import '../../helpers/constants.dart';
import '../screens/home_screen.dart';
import 'package:get/get.dart';

class Layout extends StatelessWidget {
  List<Widget> layouts = [
    HomeLayout(),
    ProfileLayout(),
  ];
  TestController controller = Get.put(TestController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: layouts[controller.selected.value],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.to(HomeScreen());
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => HomeScreen(),
              //   ),
              // );
            },
            backgroundColor: AppColor.deepPurple,
            child: Icon(Icons.add)),
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: [Icons.home, Icons.person],
          activeColor: AppColor.deepPurple,
          inactiveColor: AppColor.grayShade3,
          activeIndex: controller.selected.value,
          onTap: (int value) {
            controller.selected.value = value;
          },
          iconSize: 35,
          height: 10.h,
          notchMargin: 5,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.defaultEdge,
        ),
      );
    });
  }
}
