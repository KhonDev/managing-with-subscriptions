import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text(
                'Notifications',
                style: TextStyles.header1s32,
              ),
              Spacer(),
              SvgPicture.asset(
                'assets/vectors/Vector.svg',
                color: AppColors.deepBlue,
              ),
              SizedBox(width: 4),
              Text(
                'Add',
                style: TextStyles.s16w400cblue,
              ),
            ],
          ),
          Spacer(),
          Text(
            'You do not have active subscriptions to services',
            style: TextStyles.s12w400grey,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
