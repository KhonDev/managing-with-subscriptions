import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/myanswer.dart';

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

