import 'package:align_eye/common/styles/app_theme.dart';
import 'package:align_eye/features/auth/screens/auth_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

//Starts at auth screen
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      home: const AuthScreen(),
    );
  }
}
