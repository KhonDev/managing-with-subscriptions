import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:managing_with_subscriptions/app/ui/screens/add_notification.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/back.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/next_button.dart';
import 'package:managing_with_subscriptions/resources/app_router_constants.dart';

// ignore: must_be_immutable
class SelectSeviceesScreen extends StatefulWidget {
  SelectSeviceesScreen({
    super.key,
  });

  @override
  State<SelectSeviceesScreen> createState() => _SelectSeviceesScreenState();
}

class _SelectSeviceesScreenState extends State<SelectSeviceesScreen> {
  int selected = 0;

  List images = [
    'assets/vectors/spoty.svg',
    'assets/vectors/netflix.svg',
  ];
  List labels = [
    'Spotify',
    'Netflix',
  ];
  void chandeIndex(int index) {}

  Widget selectedItem(String text, int index, String image) {
    return SizedBox(
      height: 56,
      child: OutlinedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          side: BorderSide(
            color: (selected == index) ? AppColors.deepBlue : AppColors.whiteF8,
          ),
          backgroundColor:
              (selected == index) ? AppColors.blue100 : AppColors.whiteF8,
        ),
        onPressed: () {
          selected = index;
          svgName = image;
          labelname = text;
          print(svgName);

          setState(() {});
        },
        child: Row(
          children: [
            SvgPicture.asset(image),
            const SizedBox(width: 12),
            Text(
              text,
              style: TextStyles.s16w400black,
            )
          ],
        ),
      ),
    );
  }

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
                Text(
                  'Select service',
                  style: TextStyles.p2s16,
                ),
                SizedBox(width: 66),
              ],
            ),
            const SizedBox(height: 45),
            Row(children: [
              Expanded(child: selectedItem(labels[0], 1, images[0])),
              const SizedBox(width: 8),
              Expanded(child: selectedItem(labels[1], 2, images[1])),
            ]),
            const SizedBox(height: 8),
            Row(children: [
              Expanded(child: selectedItem(labels[0], 3, images[0])),
              const SizedBox(width: 8),
              Expanded(child: selectedItem(labels[1], 4, images[1])),
            ]),
            const SizedBox(height: 8),
            Row(children: [
              Expanded(child: selectedItem(labels[0], 5, images[0])),
              const SizedBox(width: 8),
              Expanded(child: selectedItem(labels[0], 6, images[0])),
            ]),
            const SizedBox(height: 8),
            Row(children: [
              Expanded(child: selectedItem(labels[1], 7, images[1])),
              const SizedBox(width: 8),
              Expanded(child: selectedItem(labels[0], 8, images[0])),
              const SizedBox(height: 8),
            ]),
            const SizedBox(height: 8),
            Row(children: [
              Expanded(child: selectedItem(labels[0], 9, images[0])),
              const SizedBox(width: 8),
              const Expanded(
                child: SizedBox(),
              ),
              const SizedBox(height: 8),
            ]),
            Spacer(),
            NextButton(
              padding: EdgeInsets.zero,
              foregroundColor: AppColors.white,
              color: AppColors.deepBlue,
              child: const Text('Select'),
              onTap: () {
                GoRouter.of(context).pop();
                GoRouter.of(context).pop();
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants.addnotification);
              },
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
