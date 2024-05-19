import 'package:flutter/material.dart';
import 'package:managing_with_subscriptions/app/ui/screens/home_screen.dart';
import 'package:managing_with_subscriptions/app/ui/screens/settings_screen.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';


void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(scaffoldBackgroundColor: AppColors.white),
    );
  }
}
   