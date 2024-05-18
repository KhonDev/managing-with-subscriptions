import 'package:flutter/material.dart';
import 'package:managing_with_subscriptions/on_board/answer.dart';
import 'package:managing_with_subscriptions/on_board/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnswerQuesion(),
    );
  }
}
