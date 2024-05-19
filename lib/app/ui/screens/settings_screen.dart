import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/Custom_Button.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/custom_listtile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(
          flex: 3,
        ),
        Text('Settings', style: TextStyles.header1s32),
        Spacer(),
        CustomListTile(),
        Spacer(),
        CustomTile(
          svg: 'assets/vectors/support.svg',
          text: 'Support',
        ),
        Spacer(),
        CustomTile(
          svg: 'assets/vectors/share.svg',
          text: 'Share',
        ),
        Spacer(),
        CustomTile(
          svg: 'assets/vectors/star.svg',
          text: 'rote us',
        ),
      
        Spacer(
          flex: 15,
        ),
        CustomDeleteButton(title: 'Delete'),
        Spacer(),
        
      ],
    );
  }
}
