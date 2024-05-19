import 'package:flutter/material.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';

class MyTextField extends StatelessWidget {
  final String title;
  final String? hint;
  final TextEditingController controller;
  const MyTextField({
    super.key,
    required this.title,
    this.hint,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.footnote2s12Reg,
        ),
        const SizedBox(height: 8.0),
        TextField(
          controller: controller,
          cursorColor: AppColors.deepBlue,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(12),
            hintStyle: TextStyles.s14w400grey,
            isDense: true,
            hintText: hint ?? '',
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
            filled: true,
            fillColor: AppColors.whiteF8,
          ),
        ),
      ],
    );
  }
}
