import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';
import 'package:managing_with_subscriptions/resources/app_router_constants.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({
    super.key,
  });

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController controller = PageController();
  int onLastPage = 0;
  List onboard = [
    Column(
      children: [
        onBoard(
          image: const AssetImage(
            'assets/images/music.png',
          ),
          text: const Text('Make Your Service\nManagement\nEasier',
              style: TextStyles.header1s32),
          text2: 'Be aware of your spending on services and\nsubscriptions',
        ),
      ],
    ),
    Column(
      children: [
        onBoard(
          image: const AssetImage('assets/images/cinema.png'),
          text: const Text('Don\'t let your money\ngo to no one knows\nwhere',
              style: TextStyles.header1s32),
          text2:
              'Calculate your spending on services and\nsubscriptions months in advance',
        ),
      ],
    ),
    Column(
      children: [
        onBoard(
          image: const AssetImage('assets/images/game.png'),
          text: const Text('Don\'t miss payments\nand keep your\nrecords',
              style: TextStyles.header1s32),
          text2:
              'Don\'t be afraid to miss a charge, we will\nnotify you in advance',
        ),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1.5,
                    color: AppColors.deepBlue,
                  ),
                ),
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      height: 1.5,
                      color: onLastPage >= 1
                          ? AppColors.deepBlue
                          : AppColors.blue100),
                ),
                Expanded(
                  child: Container(
                      height: 1.5,
                      color: onLastPage > 1
                          ? AppColors.deepBlue
                          : AppColors.blue100),
                ),
              ],
            ),
            PageView(
              controller: controller,
              onPageChanged: (index) {
                onLastPage = index;
                setState(() {});
              },
              children: List.generate(
                3,
                (index) => onboard[index],
              ),
            ),
            Container(
              alignment: const Alignment(0, 1),
              child: onLastPage == 2
                  ? NextButton(
                      color: AppColors.deepBlue,
                      child: const Text('Start', style: TextStyles.p2s16W),
                      onTap: () {
                        GoRouter.of(context).pushNamed(
                            MyAppRouteConstants.answerQuestionRouteName);
                      },
                    )
                  : NextButton(
                      onTap: () {
                        controller.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      },
                      child: const Text('Next', style: TextStyles.s16w600cblue),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

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
    return SizedBox(
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
            child: child));
  }
}

// ignore: must_be_immutable, camel_case_types
class onBoard extends StatelessWidget {
  AssetImage image;
  Widget text;
  String text2;
  onBoard({
    super.key,
    required this.image,
    required this.text,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text,
        const SizedBox(height: 32.0),
        Container(
          height: 207,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(image: image, fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const SizedBox(height: 32.0),
        SizedBox(
          height: 46,
          child: Text(text2, style: TextStyles.body2s16),
        ),
      ],
    );
  }
}
