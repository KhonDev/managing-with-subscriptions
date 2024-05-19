import 'package:flutter/material.dart';
import 'package:managing_with_subscriptions/app/ui/on_boarding/answer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AnswerQuesion(),
    );
  }
}