import 'package:flutter/material.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';

class onBoard extends StatelessWidget {
  final AssetImage image;
  final Widget text;
  final String textSecond;
  const onBoard({
    super.key,
    required this.image,
    required this.text,
    required this.textSecond,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 27.0),
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
          child: Text(textSecond, style: TextStyles.body2s16),
        ),
      ],
    );
  }
}
