import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';
import 'package:managing_with_subscriptions/resources/app_router_constants.dart';

// ignore: camel_case_types
class AnswerQuesion extends StatefulWidget {
  const AnswerQuesion({
    super.key,
  });

  @override
  State<AnswerQuesion> createState() => _AnswerQuesionState();
}

// ignore: camel_case_types
class _AnswerQuesionState extends State<AnswerQuesion> {
  PageController controller = PageController();
  int onLastPage = 0;

  List answers = [
    "What is your primary\ngoal for using this\nsubscription\nmanagement app?",
    "How many subscription services are you currently using?",
    "Which categories of services are you most interested in managing?",
    "How do you prefer to be notified about your subscription details?",
    "What feature is most important to you in a subscription management app?",
  ];
  List thefirst = [
    "To keep track of all my subscription expenses",
    "None to 3",
    "Entertainment (e.g., streaming platforms)",
    "Email notifications",
    "Simplicity and ease of use"
  ];
  List second = [
    "To find new subscription services that interest me",
    "4 to 6",
    "Utilities (e.g., electricity, water, internet)",
    "Push notifications on my device",
    "Detailed analytics of my spending"
  ];
  List thethreed = [
    "To reduce my spending on unnecessary subscriptions",
    "7 to 10",
    "Health and wellness (e.g., gym, meditation apps)",
    "Text messages",
    "Recommendations for similar services"
  ];
  List thefourths = [
    "To get reminders about payment due dates",
    "More than 10",
    "Learning and productivity (e.g., online courses, software tools)",
    "No preference, as long as I receive the updates",
    "Options to cancel subscriptions directly through the app"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller,
            onPageChanged: (index) {
              onLastPage = index;
              setState(() {});
            },
            children: List.generate(
              5,
              (index) => Column(
                children: [
                  AnswerTile(
                    text: answers[index],
                    questionfourths: thefirst[index],
                    questionfirst: second[index],
                    questionthrees: thethreed[index],
                    questionsecond: thefourths[index],
                    onTap: () {
                      onLastPage != 4
                          ? controller.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn)
                          : GoRouter.of(context)
                              .pushNamed(MyAppRouteConstants.progressing);
                              
                    },
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.0, 1.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1.5,
                    color: AppColors.deepBlue,
                    width: 40,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    height: 1.5,
                    color: onLastPage >= 1
                        ? AppColors.deepBlue
                        : const Color.fromRGBO(212, 237, 255, 100),
                    width: 40,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 1.5,
                    color: onLastPage >= 2
                        ? AppColors.deepBlue
                        : const Color.fromRGBO(212, 237, 255, 100),
                    width: 40,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    height: 1.5,
                    color: onLastPage >= 3
                        ? AppColors.deepBlue
                        : const Color.fromRGBO(212, 237, 255, 100),
                    width: 40,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 1.5,
                    color: onLastPage == 4
                        ? AppColors.deepBlue
                        : const Color.fromRGBO(212, 237, 255, 100),
                    width: 40,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AnswerTile extends StatelessWidget {
  final String text;
  final String questionfirst;
  final String questionsecond;
  final String questionthrees;
  final String questionfourths;
  final VoidCallback onTap;
  const AnswerTile({
    super.key,
    required this.text,
    required this.questionfourths,
    required this.questionfirst,
    required this.questionthrees,
    required this.questionsecond,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    List answers = [
      questionfirst,
      questionsecond,
      questionthrees,
      questionfourths
    ];
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 56.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/vectors/backblue.svg'),
              const SizedBox(width: 4),
              const Text(
                'Back',
                style: TextStyles.s16w400cblue,
              )
            ],
          ),
          const SizedBox(height: 16),
          Text(
            text,
            style: TextStyles.header1s32,
          ),
          const SizedBox(height: 28.0),
          Column(
            children: List.generate(
              answers.length,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: MyAnswerContainer(
                  text: answers[index],
                  onTap: onTap,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BackWidget extends StatelessWidget {
  const BackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/vectors/backblue.svg'),
        const SizedBox(width: 4),
        const Text(
          'Back',
          style: TextStyles.s16w400cblue,
        )
      ],
    );
  }
}

class MyAnswerContainer extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const MyAnswerContainer({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.blue100,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(text, style: TextStyles.body2s16),
      ),
    );
  }
}
