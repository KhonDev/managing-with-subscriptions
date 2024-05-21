import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';

class CustomListTile extends StatefulWidget {
  const CustomListTile({super.key});

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.whiteF8,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: ListTile(
        title: const Text(
          'Notifactions',
          style: TextStyles.p2s16,
        ),
        trailing: CupertinoSwitch(
          activeColor: AppColors.deepBlue,
          value: switchValue,
          onChanged: (bool? value) {
            setState(() {
              switchValue = value ?? false;
            });
          },
        ),
      ),
    );
  }
}

class CustomTile extends StatelessWidget {
  final String svg;
  final String text;
  const CustomTile({super.key, required this.svg, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.whiteF8,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              svg,
              height: 24,
              width: 24,
            ),
          ),
          Text(
            text,
            style: TextStyles.p2s16,
          ),
        ],
      ),
    );
  }
}
