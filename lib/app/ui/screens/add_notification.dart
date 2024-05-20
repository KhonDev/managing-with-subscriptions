import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/back.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/mytextfield.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/next_button.dart';
import 'package:managing_with_subscriptions/resources/app_router_constants.dart';

class AddNotification extends StatelessWidget {
  const AddNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 56),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BackWidget(),
              Text(
                'Add service',
                style: TextStyles.p2s16,
              ),
              SizedBox(width: 66),
            ],
          ),
          const SizedBox(height: 36),
          GestureDetector(
            onTap: () {
              GoRouter.of(context)
                  .pushNamed(MyAppRouteConstants.selectsevicees);
            },
            child: Container(
              height: 42,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: AppColors.whiteF8,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const Text(
                    'Select service',
                    style: TextStyles.body1s14,
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    'assets/vectors/Vector.svg',
                    color: AppColors.black,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 28),
          MyTextField(
            hint: 'dd.mm.yy',
            title: 'Payment notification date',
            controller: TextEditingController(),
          ),
          const SizedBox(height: 16),
          MyTextField(
            hint: '\$0',
            title: 'Sum of payment',
            controller: TextEditingController(),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.grey),
                  ),
                  child: const SizedBox(),
                ),
                const SizedBox(width: 12.0),
                const Text(
                  'Remind every month',
                  style: TextStyles.body1s14,
                ),
              ],
            ),
          ),
          const Spacer(),
          NextButton(
            padding: EdgeInsets.zero,
            foregroundColor: AppColors.white,
            color: AppColors.deepBlue,
            child: const Text('Add', style: TextStyles.p2s16W),
            onTap: () {},
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
