import 'package:flutter/material.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';

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
  List tile = [
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 56.0, 16.0, 0),
          child: AnswerTile(
            text: const Text(
              'What is your primary\ngoal for using this\nsubscription\nmanagement app?',
              style: TextStyles.header1s32,
            ),
            text2: 'Be aware of your spending on services and\nsubscriptions',
          ),
        ),
      ],
    ),
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 56.0, 16.0, 0),
          child: AnswerTile(
            text: const Text(
              'Don\'t let your money\ngo to no one knows\nwhere',
              style: TextStyles.header1s32,
            ),
            text2:
                'Calculate your spending on services and\nsubscriptions months in advance',
          ),
        ),
      ],
    ),
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 56.0, 16.0, 0),
          child: AnswerTile(
            text: const Text(
              'Don\'t miss payments\nand keep your\nrecords',
              style: TextStyles.header1s32,
            ),
            text2:
                'Don\'t be afraid to miss a charge, we will\nnotify you in advance',
          ),
        ),
      ],
    ),
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 56.0, 16.0, 0),
          child: AnswerTile(
            text: const Text(
              'Don\'t miss payments\nand keep your\nrecords',
              style: TextStyles.header1s32,
            ),
            text2:
                'Don\'t be afraid to miss a charge, we will\nnotify you in advance',
          ),
        ),
      ],
    ),
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 56.0, 16.0, 0),
          child: AnswerTile(
            text: const Text(
              'Don\'t miss payments\nand keep your\nrecords',
              style: TextStyles.header1s32,
            ),
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
          PageView(
            controller: controller,
            onPageChanged: (index) {
              onLastPage = index;
              setState(() {});
            },
            children: List.generate(
              tile.length,
              (index) => tile[index],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 48, 16.0, 27),
            child: Align(
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
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable, camel_case_types
class AnswerTile extends StatelessWidget {
  Widget text;
  String text2;
  AnswerTile({
    super.key,
    required this.text,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 24.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.arrow_back_ios_new_rounded, color: AppColors.deepBlue),
              SizedBox(width: 4),
              Text(
                'Back',
                style: TextStyle(
                    height: 1.0, fontSize: 23, color: AppColors.deepBlue),
              )
            ],
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(width: double.infinity, height: 160, child: text),
        const SizedBox(height: 28.0),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.blue100,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Text('To keep track of all my subscription\nexpenses',
              style: TextStyles.body2s16),
        )
      ],
    );
  }
}
