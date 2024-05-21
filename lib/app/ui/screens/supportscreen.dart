import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/back.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/mytextfield.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/next_button.dart';
import 'package:managing_with_subscriptions/resources/app_router_constants.dart';

class SupportScreen extends StatelessWidget {
  String? send;
  SupportScreen({
    super.key,
    required this.send,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 56),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackWidget(),
                const Text(
                  'Support',
                  style: TextStyles.p2s16,
                ),
                const SizedBox(width: 66),
              ],
            ),
            const SizedBox(height: 36),
            MyTextField(
              hint: 'Hello. How can I track my subscriptions?',
              title: 'Subject of address',
              controller: TextEditingController(),
            ),
            const SizedBox(height: 16),
            const Text(
              'Youre message',
              style: TextStyles.footnote2s12Reg,
            ),
            const SizedBox(height: 8.0),
            TextField(
              focusNode: FocusScopeNode(),
              maxLines: 4,
              controller: TextEditingController(),
              cursorColor: AppColors.deepBlue,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(12),
                hintStyle: TextStyles.s14w400grey,
                isDense: true,
                hintText: 'Hello. How can I track my subscriptions?',
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
            const SizedBox(height: 16.0),
          ],
        ),
      ),
      floatingActionButton: NextButton(
        color: AppColors.deepBlue,
        foregroundColor: AppColors.deepBlue,
        child: const Text(
          'Send',
          style: TextStyles.p2s16W,
        ),
        onTap: () {
          send = 'send';
          GoRouter.of(context).pop();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
