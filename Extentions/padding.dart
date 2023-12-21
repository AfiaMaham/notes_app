import 'package:flutter/material.dart';

extension PaddingExtention on Widget {
  Widget allPadding(double padding) {
    return Padding(padding: EdgeInsets.all(padding), child: this);
  }

  Widget onlyPadding({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return Padding(
        padding:
        EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
        child: this);
  }

  Widget symmetricPadding({double horizontal = 0, double vertical = 0}) {
    return Padding(
        padding:
        EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: this);
  }
}
