import 'package:align_eye/common/styles/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppBorders {
  static OutlineInputBorder roundedOutline({
    double radius = 8.0,
    double width = 1.0,
    Color color = AppColors.darkBorderColor,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      borderSide: BorderSide(width: width, color: color),
    );
  }

  static RoundedRectangleBorder roundedRectangle({
    double radius = 8.0,
    double width = 0,
    Color color = AppColors.darkBorderColor,
  }) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      side: width != 0 ? BorderSide(width: width, color: color) : BorderSide.none,
    );
  }
}
