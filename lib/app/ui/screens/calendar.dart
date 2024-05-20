import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreeenState();
}

class _CalendarScreeenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            CalendarDatePicker2(
              config: CalendarDatePicker2Config(
                
                  disableMonthPicker: true,
                  disableModePicker: true,
                  calendarType: CalendarDatePicker2Type.single,
                  selectedDayTextStyle: TextStyles.s14w400white,
                  selectedDayHighlightColor: AppColors.deepBlue,
                  daySplashColor: AppColors.white),
              value: [
                DateTime.now(),
              ],
            ),
            const Text(
              'Today payments',
              style: TextStyles.header2s24,
            ),
            const SizedBox(height: 16),
            const Text(
              'You not have payments today',
              style: TextStyles.s12w400grey,
            ),
            const SizedBox(height: 48),
            const Text(
              'Upcoming payments',
              style: TextStyles.header2s24,
            ),
            const SizedBox(height: 48),
            const Row(
              children: [
                SizedBox(
                  height: 75,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('31 Jan', style: TextStyles.footnoteMed12),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 2,
                                backgroundColor: AppColors.grey,
                              ),
                            ),
                            Text('XBox', style: TextStyles.s12w500cblue),
                          ],
                        ),
                        Text(
                          '\$2,10',
                          style: TextStyles.s22w500black,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 8),
                SizedBox(
                  height: 75,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('31 Jan', style: TextStyles.footnoteMed12),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 2,
                                backgroundColor: AppColors.grey,
                              ),
                            ),
                            Text('XBox', style: TextStyles.s12w500cblue),
                          ],
                        ),
                        Text(
                          '\$2,10',
                          style: TextStyles.s22w500black,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 8),
                SizedBox(
                  height: 75,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('31 Jan', style: TextStyles.footnoteMed12),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 2,
                                backgroundColor: AppColors.grey,
                              ),
                            ),
                            Text('XBox', style: TextStyles.s12w500cblue),
                          ],
                        ),
                        Text(
                          '\$2,10',
                          style: TextStyles.s22w500black,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
