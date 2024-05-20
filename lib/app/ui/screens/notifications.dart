import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';
import 'package:managing_with_subscriptions/resources/app_router_constants.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 60),
          Row(
            children: [
              const Text(
                'Notifications',
                style: TextStyles.header1s32,
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context)
                      .pushNamed(MyAppRouteConstants.addnotification);
                },
                child: SizedBox(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/vectors/add.svg',
                        color: AppColors.deepBlue,
                      ),
                      const SizedBox(width: 4),
                      const Text(
                        'Add',
                        style: TextStyles.s16w400cblue,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const Spacer(),
          const Text(
            'You do not have active subscriptions to services',
            style: TextStyles.s12w400grey,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
