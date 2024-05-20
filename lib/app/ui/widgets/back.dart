import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';

class BackWidget extends StatelessWidget {
  bool? pop;
   BackWidget({
    this.pop,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pop == true
          ? () {}
          : () {
              GoRouter.of(context).pop();
            },
      child: Row(
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
    );
  }
}
