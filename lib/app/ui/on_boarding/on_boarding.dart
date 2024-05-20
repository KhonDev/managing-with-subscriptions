import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/next_button.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/on_board.dart';
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
    const onBoard(
      image: AssetImage(
        'assets/images/music.png',
      ),
      text: Text('Make Your Service\nManagement\nEasier',
          style: TextStyles.header1s32),
      text2: 'Be aware of your spending on services and\nsubscriptions',
    ),
    const onBoard(
      image: AssetImage('assets/images/cinema.png'),
      text: Text('Don\'t let your money\ngo to no one knows\nwhere',
          style: TextStyles.header1s32),
      text2:
          'Calculate your spending on services and\nsubscriptions months in advance',
    ),
    const onBoard(
      image: AssetImage('assets/images/game.png'),
      text: Text('Don\'t miss payments\nand keep your\nrecords',
          style: TextStyles.header1s32),
      text2:
          'Don\'t be afraid to miss a charge, we will\nnotify you in advance',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16,top: 48,bottom: 40),
        child: Stack(
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
                    padding: EdgeInsets.zero,
                      color: AppColors.deepBlue,
                      child: const Text('Start', style: TextStyles.p2s16W),
                      onTap: () {
                        GoRouter.of(context).pushNamed(
                            MyAppRouteConstants.answerQuestionRouteName);
                      },
                    )
                  : NextButton(
                    padding: EdgeInsets.zero,

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

