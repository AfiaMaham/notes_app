import 'package:flutter/material.dart';

import '../helpers/constants.dart';

class FieldOfText extends StatelessWidget {
  String? hint;
  String? helper;
  TextInputType? keyboardType;
  bool obscure;
  bool isFilled;
  IconData? icon;
  int? maxLines;
  VoidCallback? onIconTap;
  TextEditingController? controller;

  FieldOfText({
    this.keyboardType,
    this.hint,
    this.obscure = false,
    this.helper,
    required this.isFilled,
    this.icon,
    this.maxLines,
    this.onIconTap,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines ?? 1,
      obscureText: obscure,
      obscuringCharacter: '*',
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(onTap: onIconTap, child: Icon(icon)),
        filled: isFilled,
        fillColor: AppColor.textFilled,
        hintText: hint,
        helperText: helper,
        helperStyle: TextStyle(
          fontFamily: "Poppins Regular",
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColor.grayShade3,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        hintStyle: TextStyle(
          fontFamily: "Poppins Regular",
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColor.grayShade3,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: isFilled
              ? BorderSide.none
              : BorderSide(
                  width: 1,
                  color: AppColor.grayShade3,
                ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: isFilled
              ? BorderSide.none
              : BorderSide(
                  width: 1,
                  color: AppColor.grayShade3,
                ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: isFilled
              ? BorderSide.none
              : BorderSide(
                  width: 1,
                  color: AppColor.grayShade3,
                ),
        ),
      ),
    );
  }
}
