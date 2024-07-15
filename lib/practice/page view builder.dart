// import 'package:flutter/material.dart';
// import 'package:notes_app/controller/page%20view%20controller.dart';
// import 'package:get/get.dart';
// import 'package:notes_app/helpers/constants.dart';
// import 'package:notes_app/views/screens/onboarding_screen.dart';
// import 'package:sizer/sizer.dart';
//
// class PagesView extends StatelessWidget {
//   PagesViewController controller = Get.put(PagesViewController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text(
//             "Page View Builder",
//             style: TextStyle(color: AppColor.black),
//           ),
//           elevation: 0,
//           backgroundColor: AppColor.whiteColor,
//           actions: [
//             Obx(() {
//               return GestureDetector(
//                 onTap: () {
//                   Navigator.of(context).push(MaterialPageRoute(
//                     builder: (context) => OnBoardingScreen(),
//                   ));
//                 },
//                 child: Text(
//                   controller.pageIndex == controller.images.length - 1
//                       ? ""
//                       : "Skip",
//                   style: TextStyle(color: AppColor.black),
//                 ),
//               );
//             })
//           ]),
//       body: PageView.builder(
//         itemCount: controller.images.length,
//         scrollDirection: Axis.horizontal,
//         // controller: controller.,
//         onPageChanged: controller.onPageChanged,
//         itemBuilder: (context, index) => Column(
//           children: [
//             Column(
//               children: [
//                 Container(
//                   child:
//                       Image.asset(controller.images[index]).paddingAll(20.sp),
//                 ),
//                 Text(
//                   controller.text[index],
//                   style: TextStyle(
//                       color: AppColor.black,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 13.sp,
//                       fontFamily: "poppins regular"),
//                 )
//               ],
//             ),
//             Obx(() {
//               return GestureDetector(
//                 onTap: () {
//                   controller.pageIndex == controller.images.length - 1
//                       ? Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => OnBoardingScreen(),
//                           ))
//                       : controller.pageController.nextPage(
//                           duration: Duration(milliseconds: 100),
//                           curve: Curves.bounceIn,
//                         );
//                 },
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: AppColor.whiteColor,
//                   ),
//                   child: controller.pageIndex == controller.images.length - 1
//                       ? Text(""
//                           "Get started")
//                       : Icon(Icons.arrow_forward),
//                 ),
//               );
//             })
//           ],
//         ),
//       ),
//     );
//   }
// }
