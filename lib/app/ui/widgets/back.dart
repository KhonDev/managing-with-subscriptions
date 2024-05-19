import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';

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