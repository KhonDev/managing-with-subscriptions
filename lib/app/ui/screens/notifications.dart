import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/notificationtile.dart';
import 'package:managing_with_subscriptions/main.dart';
import 'package:managing_with_subscriptions/resources/app_router_constants.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  bool view = false;
  final appBox = Hive.box('appBox');
  @override
  void initState() {
    if (appBox.get('APPLIST') == null) {
      appDB.createData();
      view = false;
    }
    {
      appDB.loadData();
      view = true;
    }
    setState(() {});
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 60),
          Row(
            children: [
              const Text(
                'Notifications',
                style: TextStyles.header1s32,
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context)
                      .pushNamed(MyAppRouteConstants.addnotification);
                },
                child: SizedBox(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/vectors/add.svg',
                        color: AppColors.deepBlue,
                      ),
                      const SizedBox(width: 4),
                      const Text(
                        'Add',
                        style: TextStyles.s16w400cblue,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 24),
          view != false
              ? Expanded(
                  child: ListView.builder(
                      itemCount: appDB.appList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 12.0),
                          child: NotificationTile(
                            day: appDB.appList[index][2],
                            image: appDB.appList[index][1],
                            cost: appDB.appList[index][3],
                            switchValue: appDB.appList[index][4],
                          ),
                        );
                      }),
                )
              : const Column(
                  children: [
                    Spacer(),
                    Text(
                      'You do not have active subscriptions to services',
                      style: TextStyles.s12w400grey,
                    ),
                    Spacer()
                  ],
                ),
        ],
      ),
    );
  }
}
