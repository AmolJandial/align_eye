import 'package:align_eye/common/styles/app_assets.dart';
import 'package:align_eye/features/auth/widgets/auth_login_page.dart';
import 'package:align_eye/features/auth/widgets/auth_register_page.dart';
import 'package:align_eye/utils/app_strings.dart';
import 'package:align_eye/utils/extensions.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: context.height * 0.3,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildLogo(context),
              SizedBox(height: context.height * 0.05),
              _buildTabBar(),
            ],
          ),
        ),
        body: const TabBarView(children: [AuthLoginPage(), AuthRegisterPage()]),
      ),
    );
  }

  Widget _buildLogo(BuildContext context) {
    return SizedBox(width: context.width * 0.6, child: Image.asset(AppAssets.appLogo));
  }

  Widget _buildTabBar() {
    return const TabBar(tabs: [Tab(text: AppStrings.login), Tab(text: AppStrings.signUp)]);
  }
}
