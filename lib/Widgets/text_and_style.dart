import 'package:flutter/material.dart';

class TextAndStyle extends StatelessWidget {
  String? text;
  double? fontSize;
  String? fontFamily;
  FontWeight? weight;
  Color? color;
  TextDecoration? decor = TextDecoration.underline;

  TextAndStyle(
      this.text,
      [this.fontSize,
        this.fontFamily,
        this.weight,
        this.color,
        this.decor]);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
          fontWeight: weight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          color: color,
          decoration: decor),
    );
  }
}
