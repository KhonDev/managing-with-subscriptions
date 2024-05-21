import 'package:flutter/material.dart';
import 'package:managing_with_subscriptions/app/ui/theme/theme.dart';

class CustomButton extends StatelessWidget {
  final String title;
  const CustomButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.deepBlue,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Center(child: Text(title, style: TextStyles.p2s16W)),
    );
  }
}

class CustomDeleteButton extends StatelessWidget {
  final String title;
  const CustomDeleteButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.pink,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Center(child: Text(title, style: TextStyles.p2s16R),),
    );
  }
}