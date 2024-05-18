import 'package:flutter/material.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/on_board/answer.dart';
import 'package:managing_with_subscriptions/app/ui/on_board/on_boarding.dart';


void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
      theme: ThemeData(scaffoldBackgroundColor: AppColors.white),
    );
  }
}
   