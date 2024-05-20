import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:managing_with_subscriptions/app/ui/on_boarding/answer.dart';
import 'package:managing_with_subscriptions/app/ui/theme/theme.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/back.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/mytextfield.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/next_button.dart';

class AddService extends StatefulWidget {
  const AddService({super.key});

  @override
  State<AddService> createState() => _AddServiceState();
}

class _AddServiceState extends State<AddService> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 56),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BackWidget(),
              Text(
                'Add service',
                style: TextStyles.p2s16,
              ),
              SizedBox(width: 66),
            ],
          ),
          const SizedBox(height: 24.0),
          Container(
            width: double.infinity,
            height: 103,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.deepBlue, width: 1.5),
                borderRadius: BorderRadius.circular(12),
                color: AppColors.whiteF3),
            child: const Center(
              child: Text(
                '+ Add pictures',
                style: TextStyles.s16w600cblue,
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          MyTextField(
            title: 'Name of service',
            controller: TextEditingController(),
          ),
          const SizedBox(height: 16.0),
          MyTextField(
            title: 'Price (monthly)',
            controller: TextEditingController(),
          ),
          const SizedBox(height: 16.0),
          MyTextField(
            title: 'URL',
            controller: TextEditingController(),
          ),
          const SizedBox(height: 16.0),
          MyTextField(
            title: 'Start of subscription',
            controller: TextEditingController(),
          ),
          const SizedBox(height: 16.0),
          MyTextField(
            title: 'End of subscription',
            controller: TextEditingController(),
          ),
          const SizedBox(height: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Note',
                style: TextStyles.footnote2s12Reg,
              ),
              const SizedBox(height: 8.0),
              TextField(
                maxLines: 4,
                controller: TextEditingController(),
                cursorColor: AppColors.deepBlue,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(12),
                  hintStyle: TextStyles.s14w400grey,
                  isDense: true,
                  hintText: 'Optional',
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
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        check = !check;
                        setState(() {});
                      },
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: check != true
                              ? AppColors.white
                              : AppColors.deepBlue,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColors.grey),
                        ),
                        child: check != true
                            ? SizedBox()
                            : Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: SvgPicture.asset(
                                  'assets/vectors/smallgalochka.svg',
                                  color: AppColors.white,
                                ),
                            ),
                      ),
                    ),
                    const SizedBox(width: 12.0),
                    const Text(
                      'Send notification with date selection?',
                      style: TextStyles.body1s14,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40.0),
              NextButton(
                padding: EdgeInsets.zero,
                color: AppColors.deepBlue,
                foregroundColor: AppColors.white,
                child: const Text(
                  'Add',
                  style: TextStyles.p2s16W,
                ),
                onTap: () {},
              ),
              const SizedBox(height: 50.0),
            ],
          ),
        ],
      ),
    );
  }
}
