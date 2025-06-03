import 'package:align_eye/common/styles/app_assets.dart';
import 'package:align_eye/common/styles/app_borders.dart';
import 'package:align_eye/common/styles/app_colors.dart';
import 'package:align_eye/common/styles/app_text_themes.dart';
import 'package:align_eye/utils/app_strings.dart';
import 'package:align_eye/utils/extensions.dart';
import 'package:flutter/material.dart';

class AuthForgetPasswordScreen extends StatelessWidget {
  const AuthForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 16,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: context.height * 0.1),
                _buildLogo(context),
                _buildCard(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogo(BuildContext context) {
    return SizedBox(width: context.width * 0.6, child: Image.asset(AppAssets.appLogo));
  }

  Widget _buildCard(BuildContext context) {
    return Card(
      elevation: 2,
      shape: AppBorders.roundedRectangle(),
      color: AppColors.cardColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back, size: 24),
            ),
            Text(AppStrings.forgotPassword, style: AppTextThemes.headlineLarge),
            Text(AppStrings.forgotPasswordDesc, style: AppTextThemes.subtitleMedium),
            const TextField(
              decoration: InputDecoration(fillColor: AppColors.backgroundColor, filled: true),
            ),
            SizedBox(
              width: context.width,
              child: ElevatedButton(onPressed: () {}, child: const Text(AppStrings.sendResetLink)),
            ),
          ],
        ),
      ),
    );
  }
}
