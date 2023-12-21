import 'package:flutter/material.dart';
import 'package:notes_app/views/layouts/profile_layout.dart';
import 'package:sizer/sizer.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import '../../Widgets/text_and_style.dart';
import '../../helpers/constants.dart';
import '../screens/home_screen.dart';


class HomeLayout extends StatefulWidget {
  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selected == 1
          ? ProfileLayout()
          : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 7.h,
          ),
          Image.asset("assets/images/Illustration2.png"),
          SizedBox(
            height: 3.h,
          ),
          TextAndStyle(
            "Start Your Journey",
            20.sp,
            "poppins Regular",
            FontWeight.bold,
          ),
          SizedBox(
            height: 2.h,
          ),
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
          ),
          SizedBox(
            height: 3.h,
          ),
          Image.asset(
            "assets/images/Arrow.png",
            scale: 2.3,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            });
          },
          backgroundColor: AppColor.deepPurple,
          child: Icon(Icons.add)),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [Icons.home, Icons.person],
        activeColor: AppColor.deepPurple,
        inactiveColor: AppColor.grayShade3,
        activeIndex: selected,
        onTap: (int value) {
          setState(() {
            selected = value;
          });
        },
        iconSize: 35,
        height: 10.h,
        notchMargin: 5,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
      ),
    );
  }
}
