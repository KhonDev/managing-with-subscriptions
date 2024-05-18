import 'package:flutter/material.dart';
import 'package:managing_with_subscriptions/App/screens/home_screen.dart';


void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(scaffoldBackgroundColor: AppColors.scaffoldBg),
      home: HomeScreen(),
    );
  }
}