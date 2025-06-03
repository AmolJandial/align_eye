import 'package:align_eye/common/styles/app_colors.dart';
import 'package:align_eye/common/styles/app_text_themes.dart';
import 'package:flutter/material.dart';

class PickerInputField extends StatelessWidget {
  const PickerInputField({
    super.key,
    this.color = AppColors.backgroundColor,
    required this.label,
    required this.picker,
    required this.iconData,
  });
  final Color color;
  final String label;
  final Widget picker;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        border: Border.all(width: 2, color: AppColors.darkBorderColor),
        color: color,
      ),
      child: Row(
        spacing: 8,
        children: [
          Icon(iconData, size: 24, color: AppColors.lowEmphasisColor),
          Text(label, style: AppTextThemes.subtitleMedium),
          picker,
        ],
      ),
    );
  }
}
