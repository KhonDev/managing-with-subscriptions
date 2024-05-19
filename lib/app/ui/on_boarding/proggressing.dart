import 'package:flutter/material.dart';
import 'package:managing_with_subscriptions/app/ui/on_boarding/on_boarding.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';

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
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 60),
              GestureDetector(
                onTap: () {
                  valueall = 1;
                  setState(() {});
                },
                child: Container(
                  padding: const EdgeInsets.all(11.0),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: AppColors.blue100,
                    borderRadius: BorderRadius.circular(70),
                  ),
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
                      onTap: () {},
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
