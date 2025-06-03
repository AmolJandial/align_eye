import 'package:align_eye/common/styles/app_colors.dart';
import 'package:align_eye/features/arogyam/screens/arogyam_screen.dart';
import 'package:align_eye/features/discover/screens/discover_screen.dart';
import 'package:align_eye/features/menu/screens/menu_screen.dart';
import 'package:align_eye/features/my_device/screens/my_device_screen.dart';
import 'package:align_eye/features/together/screens/together_screen.dart';
import 'package:align_eye/utils/app_strings.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          const [
            MyDeviceScreen(),
            DiscoverScreen(),
            ArogyamScreen(),
            TogetherScreen(),
            MenuScreen(),
          ][selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: _onDestinationSelected,

        destinations: [
          _buildDestination(0, iconData: Icons.devices_other, label: AppStrings.myDevice),
          _buildDestination(1, iconData: Icons.explore, label: AppStrings.discover),
          _buildDestination(2, iconData: Icons.spa, label: AppStrings.arogyam),
          _buildDestination(3, iconData: Icons.handshake, label: AppStrings.together),
          _buildDestination(4, iconData: Icons.menu, label: AppStrings.menu),
        ],
      ),
    );
  }

  void _onDestinationSelected(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  NavigationDestination _buildDestination(
    int index, {
    required IconData iconData,
    required String label,
  }) {
    return NavigationDestination(
      icon: Icon(iconData, color: AppColors.lowEmphasisColor, size: 24),
      selectedIcon: Icon(iconData, color: AppColors.primaryColor, size: 32),
      label: label,
    );
  }
}
