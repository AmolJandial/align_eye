import 'package:align_eye/common/styles/app_assets.dart';
import 'package:align_eye/common/styles/app_borders.dart';
import 'package:align_eye/common/styles/app_colors.dart';
import 'package:align_eye/common/styles/app_text_themes.dart';
import 'package:align_eye/common/widgets/picker_input_field.dart';
import 'package:align_eye/utils/app_strings.dart';
import 'package:align_eye/utils/extensions.dart';
import 'package:flutter/material.dart';

class AuthDetailsScreen extends StatelessWidget {
  const AuthDetailsScreen({super.key});

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
              children: [_buildLogo(context), _buildCard(context)],
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
            Text(AppStrings.knowAboutYou, style: AppTextThemes.headlineLarge),
            _buildRow(),
            Text(AppStrings.forgotPasswordDesc, style: AppTextThemes.subtitleMedium),
            const TextField(
              decoration: InputDecoration(
                fillColor: AppColors.backgroundColor,
                filled: true,
                hintText: AppStrings.email,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                fillColor: AppColors.backgroundColor,
                filled: true,
                hintText: AppStrings.contact,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                fillColor: AppColors.backgroundColor,
                filled: true,
                hintText: AppStrings.city,
              ),
            ),
            PickerInputField(
              label: AppStrings.birthDay,
              picker: Text('birth'),
              iconData: Icons.date_range,
            ),
            PickerInputField(
              label: AppStrings.gender,
              picker: Text('gender'),
              iconData: Icons.date_range,
            ),
            SizedBox(
              width: context.width,
              child: ElevatedButton(onPressed: () {}, child: const Text(AppStrings.getStarted)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        OutlinedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.photo),
          label: const Text(AppStrings.uploadImage),
        ),
        Container(
          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8))),
          clipBehavior: Clip.antiAlias,
          width: 100,
          height: 100,
          child: Image.asset(AppAssets.placeholder, fit: BoxFit.cover),
        ),
      ],
    );
  }
}
