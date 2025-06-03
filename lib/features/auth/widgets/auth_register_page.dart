import 'package:align_eye/common/styles/app_text_themes.dart';
import 'package:align_eye/features/auth/screens/auth_details_screen.dart';
import 'package:align_eye/utils/app_strings.dart';
import 'package:align_eye/utils/extensions.dart';
import 'package:flutter/material.dart';

class AuthRegisterPage extends StatefulWidget {
  const AuthRegisterPage({super.key});

  @override
  State<AuthRegisterPage> createState() => _AuthRegisterPage();
}

class _AuthRegisterPage extends State<AuthRegisterPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildInputField(context, hintText: AppStrings.email),
            _buildInputField(context, hintText: AppStrings.password),
            _buildInputField(context, hintText: AppStrings.confirmPassword),
            SizedBox(
              width: context.width * 0.6,
              child: ElevatedButton(
                onPressed: () => _onSignUpPressed(context),
                child: const Text(AppStrings.createAccount),
              ),
            ),
            Text(AppStrings.orSignUpWith, style: AppTextThemes.subtitleLarge),
            SizedBox(
              width: context.width * 0.6,
              child: OutlinedButton.icon(
                onPressed: () {},
                label: const Text(AppStrings.google),
                icon: const Icon(Icons.golf_course),
              ),
            ),
            SizedBox(
              width: context.width * 0.6,
              child: OutlinedButton.icon(
                onPressed: () {},
                label: const Text(AppStrings.apple),
                icon: const Icon(Icons.golf_course),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(BuildContext context, {required String hintText}) {
    return SizedBox(
      width: context.width * 0.8,
      child: TextFormField(
        decoration: InputDecoration(hintText: hintText),
        style: AppTextThemes.bodyLarge,
      ),
    );
  }

  void _onSignUpPressed(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => const AuthDetailsScreen()));
  }
}
