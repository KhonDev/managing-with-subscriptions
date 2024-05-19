import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/next_button.dart';
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
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 76.0, 16.0, 0),
          child: onBoard(
            image: const AssetImage(
              'assets/images/music.png',
            ),
            text: const Text('Make Your Service\nManagement\nEasier',
                style: TextStyles.header1s32),
            text2: 'Be aware of your spending on services and\nsubscriptions',
          ),
        ),
      ],
    ),
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 76.0, 16.0, 0),
          child: onBoard(
            image: const AssetImage('assets/images/cinema.png'),
            text: const Text('Don\'t let your money\ngo to no one knows\nwhere',
                style: TextStyles.header1s32),
            text2:
                'Calculate your spending on services and\nsubscriptions months in advance',
          ),
        ),
      ],
    ),
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 76.0, 16.0, 0),
          child: onBoard(
            image: const AssetImage('assets/images/game.png'),
            text: const Text('Don\'t miss payments\nand keep your\nrecords',
                style: TextStyles.header1s32),
            text2:
                'Don\'t be afraid to miss a charge, we will\nnotify you in advance',
          ),
        ),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 48, 16.0, 27),
            child: Row(
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
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Container(
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
          ),
        ],
      ),
    );
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
