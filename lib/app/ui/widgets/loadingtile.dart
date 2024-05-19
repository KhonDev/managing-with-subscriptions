import 'package:flutter/material.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/circularindicator.dart';

class LoadingTile extends StatelessWidget {
  final String text;
  final double value;
  const LoadingTile({
    required this.text,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 12.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.blue100,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 24,
            height: 24,
            child: MyCircularIndicator(
              value: value,
            ),
          ),
          const SizedBox(width: 12),
          Text(
            text,
            style: TextStyles.s18w500cblue,
          ),
        ],
      ),
    );
  }
}

