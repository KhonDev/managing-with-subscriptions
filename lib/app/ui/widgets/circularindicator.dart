import 'package:flutter/material.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';

class MyCircularIndicator extends StatelessWidget {
  final double value;
  final double? width;
  const MyCircularIndicator({
    required this.value,
    this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      strokeWidth: width ?? 2,
      value: value,
      color: AppColors.deepBlue,
    );
  }
}
