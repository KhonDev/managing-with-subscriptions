import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:managing_with_subscriptions/app/ui/screens/select_services.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/back.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/mytextfield.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/next_button.dart';
import 'package:managing_with_subscriptions/resources/app_router_constants.dart';

String? svgName;
String? lableName;

class AddNotification extends StatefulWidget {
  const AddNotification({super.key});

  @override
  State<AddNotification> createState() => _AddNotificationState();
}

class _AddNotificationState extends State<AddNotification> {
   bool check = false;
  final TextEditingController day = TextEditingController();
  final TextEditingController cost = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 56),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackWidget(),
                  const Text(
                    'Add service',
                    style: TextStyles.p2s16,
                  ),
                  const SizedBox(width: 66),
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
                      svgName == null
                          ? const Text(
                              'Select service',
                              style: TextStyles.body1s14,
                            )
                          : Row(
                              children: [
                                SvgPicture.asset('$svgName'),
                                Text('$lableName'),
                              ],
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
                    GestureDetector(
                      onTap: () {
                        check = !check;
                        setState(() {});
                      },
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: check != true
                              ? AppColors.white
                              : AppColors.deepBlue,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColors.grey),
                        ),
                        child: check != true
                            ? const SizedBox()
                            : Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: SvgPicture.asset(
                                  'assets/vectors/smallgalochka.svg',
                                  color: AppColors.white,
                                ),
                              ),
                      ),
                    ),
                    const SizedBox(width: 12.0),
                    const Text(
                      'Remind every month',
                      style: TextStyles.body1s14,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
      floatingActionButton: NextButton(
        foregroundColor: AppColors.white,
        color: AppColors.deepBlue,
        child: const Text('Add', style: TextStyles.p2s16W),
        onTap: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
