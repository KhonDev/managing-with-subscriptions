import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/circularindicator.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/loadingtile.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/next_button.dart';
import 'package:managing_with_subscriptions/resources/app_router_constants.dart';

class Progressing extends StatefulWidget {
  const Progressing({super.key});

  @override
  State<Progressing> createState() => _ProgressingState();
}

class _ProgressingState extends State<Progressing> {
  double valueall = 0;
  double valuefirst = 0;
  double valuesecond = 0;
  double valuethress = 0;
  void progress() {
    Timer(const Duration(seconds: 1), () {
      valuefirst = 1;
      setState(() {});
      valueall = 0.3;
    });
    Timer(const Duration(seconds: 1), () {
      valuesecond = 1;
      setState(() {});

      valueall = 0.7;
    });
    Timer(const Duration(seconds: 1), () {
      valuefirst = 1;
      valuesecond = 1;
      valuethress = 1;
      setState(() {});

      valueall = 1;
    });
  }

  @override
  void initState() {
    progress();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 60),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: AppColors.blue100,
                  borderRadius: BorderRadius.circular(70),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: MyCircularIndicator(
                    value: valueall,
                    width: 3,
                  ),
                ),
              ),
              const SizedBox(height: 28.0),
              const SizedBox(
                height: 55,
                child: Column(
                  children: [
                    Text(
                      'Please wait',
                      style: TextStyles.footnote2s12Reg,
                    ),
                    Spacer(),
                    Text(
                      'We will create a profile to make it as',
                      style: TextStyles.s12w400grey,
                    ),
                    Text(
                      'convenient for you as possible.',
                      style: TextStyles.s12w400grey,
                    )
                  ],
                ),
              ),
              const Spacer(),
              LoadingTile(
                text: 'Personalizing your dashboard',
                value: valuefirst,
              ),
              const SizedBox(height: 8),
              LoadingTile(
                text: 'Optimizing notifications',
                value: valuesecond,
              ),
              const SizedBox(height: 8),
              LoadingTile(
                text:
                    'Tailoring subscription\nrecommendations to fit your\npreferences',
                value: valuethress,
              ),
              const Spacer(),
              valueall == 1
                  ? NextButton(
                      padding: EdgeInsets.zero,
                      color: AppColors.deepBlue,
                      child: const Text(
                        'Continue',
                        style: TextStyles.p2s16W,
                      ),
                      onTap: () {
                        GoRouter.of(context)
                            .pushNamed(MyAppRouteConstants.homeScreenRouteName);
                      },
                    )
                  : const SizedBox(
                      height: 49,
                    ),
              const SizedBox(height: 40.0)
            ],
          ),
        ),
      ),
    );
  }
}
