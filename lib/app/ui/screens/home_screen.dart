import 'package:flutter/material.dart';
import 'package:managing_with_subscriptions/app/ui/screens/settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SettingsScreen(),
    );
  }
}