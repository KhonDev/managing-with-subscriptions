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
      child: Center(child: Text(title, style: TextStyles.p2s16W)),
      decoration: BoxDecoration(
        color: AppColors.deepBlue,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
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
      child: Center(child: Text(title, style: TextStyles.p2s16R)),
      decoration: BoxDecoration(
        color: AppColors.pink,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
    );
  }
}