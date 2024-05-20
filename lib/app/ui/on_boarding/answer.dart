import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:managing_with_subscriptions/app/ui/on_boarding/splash_screen.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/answertile.dart';
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
                    index: onLastPage,
                    text: answers[index],
                    questionfourths: thefourths[index],
                    questionfirst: thefirst[index],
                    questionthrees: thethreed[index],
                    questionsecond: second[index],
                    onTap: () {
                      if (onLastPage != 4) {
                        controller.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      } else {
                        mybox.put(0, [0,'user'],);
                        GoRouter.of(context)
                            .pushNamed(MyAppRouteConstants.progressing);
                            print(mybox.get(0),);
                      }

                    },
                    back: () {
                      controller.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn);
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 56.0, right: 16.0, left: 16.0),
            child: Align(
              alignment: const Alignment(0.0, 1),
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
          ),
        ],
      ),
    );
  }
}
