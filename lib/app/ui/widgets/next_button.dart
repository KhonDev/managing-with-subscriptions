import 'package:flutter/material.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';

class NextButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  final Color? color;
  final Color? foregroundColor;
  final EdgeInsets? padding;
  const NextButton({
    super.key,
    required this.child,
    this.color,
    this.padding,
    this.foregroundColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
          width: double.infinity,
          height: 49,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: foregroundColor ?? AppColors.deepBlue,
                backgroundColor: color ?? AppColors.blue100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: onTap,
              child: child),),
    );
  }
}
