import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {}

class ContainerWidget extends StatelessWidget {
  IconData arrowForward = Icons.arrow_forward;
  double? height;
  double? width;
  EdgeInsetsGeometry? padding;
  Color? color;
  Color? textColor;
  Widget? child;
  String? text;
  BorderRadiusGeometry? borderRadius;
  bool isIcon = true;
  double? width1;
  double? width2;

  ContainerWidget({
    this.padding,
    required this.color,
    required this.text,
    this.borderRadius,
    required this.isIcon,
    required this.textColor,
    this.width1,
    this.width2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 7.h,
      width: width ?? 90.w,
      padding: padding,
      decoration: BoxDecoration(
        color: color ,
        borderRadius: borderRadius ?? BorderRadius.circular(30),
      ),
      child: isIcon
          ? Row(
        children: [
          SizedBox(
            width: width1,
          ),
          Text(
            "$text",
            style: TextStyle(
                fontFamily: "Poppins Regular",
                fontSize: 13.sp,
                color: textColor,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: width2,
          ),
          Icon(
            arrowForward,
            color:textColor,
          ),
        ],
      )
          :
      SizedBox(
        width: 10.w,
        child: Center(
          child: Text(
            "$text",
            style: TextStyle(
                fontFamily: "Poppins Regular",
                fontSize: 13.sp,
                color: textColor,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
