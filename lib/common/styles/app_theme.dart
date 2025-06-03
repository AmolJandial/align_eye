import 'package:align_eye/common/styles/app_borders.dart';
import 'package:align_eye/common/styles/app_colors.dart';
import 'package:align_eye/common/styles/app_text_themes.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static final appTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    textSelectionTheme: const TextSelectionThemeData(cursorColor: AppColors.primaryColor),
    navigationBarTheme: const NavigationBarThemeData(
      elevation: 2,
      indicatorColor: Colors.transparent,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: AppColors.backgroundColor,
    ),
    tabBarTheme: TabBarThemeData(
      dividerHeight: 0,
      indicator: const BoxDecoration(),
      splashFactory: NoSplash.splashFactory,
      labelStyle: AppTextThemes.headlineLarge,
      unselectedLabelStyle: AppTextThemes.headlineSmall.copyWith(color: AppColors.lowEmphasisColor),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: AppTextThemes.subtitleMedium,
      enabledBorder: AppBorders.roundedOutline(radius: 8, width: 2.0),
      focusedBorder: AppBorders.roundedOutline(
        radius: 8,
        width: 2.0,
        color: AppColors.primaryColor,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: AppBorders.roundedRectangle(radius: 8.0),
        textStyle: AppTextThemes.labelLarge.copyWith(color: AppColors.textColorTertiary),
        padding: const EdgeInsets.all(16),
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.textColorTertiary,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: AppBorders.roundedRectangle(radius: 8),
        side: const BorderSide(width: 2, color: AppColors.darkBorderColor),
        textStyle: AppTextThemes.labelLarge,
        foregroundColor: AppColors.textColorPrimary,
        iconColor: AppColors.primaryColor,
        padding: const EdgeInsets.all(16),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: AppTextThemes.bodyMedium.copyWith(color: AppColors.textButtonColor),
      ),
    ),
  );
}
