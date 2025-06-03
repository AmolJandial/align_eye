import 'package:flutter/material.dart';

class MyDeviceScreen extends StatelessWidget {
  const MyDeviceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: Center(child: Text('My Device'))));
  }
}
