import 'package:align_eye/common/styles/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextThemes {
  static final headlineLarge = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textColorPrimary,
  );

  static final headlineSmall = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.textColorPrimary,
  );

  static final labelLarge = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textColorPrimary,
  );

  static final subtitleLarge = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: AppColors.lowEmphasisColor,
  );

  static final subtitleMedium = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: AppColors.lowEmphasisColor,
  );

  static final bodyLarge = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.textColorPrimary,
  );

  static final bodyMedium = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textColorPrimary,
  );
}
