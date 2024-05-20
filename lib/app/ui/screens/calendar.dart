import 'package:flutter/material.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreeenState();
}

class _CalendarScreeenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TableCalendar(
              locale: "en_US",
              calendarStyle: const CalendarStyle(),
              headerStyle: const HeaderStyle(
                formatButtonVisible: false,
                leftChevronVisible: true,
                rightChevronVisible: true,
                headerPadding:
                    EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
              ),
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
            ),
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
    );
  }
}
