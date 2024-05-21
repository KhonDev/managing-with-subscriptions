import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';

// ignore: must_be_immutable
class NotificationTile extends StatefulWidget {
  bool switchValue;
  String image;
  String day;
  String cost;

  NotificationTile({
    super.key,
    required this.switchValue,
    required this.day,
    required this.image,
    required this.cost,
  });

  @override
  State<NotificationTile> createState() => _NotificationTileState();
}

class _NotificationTileState extends State<NotificationTile> {
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
        leading: SvgPicture.asset('${widget.image}'),
        subtitle: Text(
          '${widget.cost}\$ monthly Family+ plan',
          style: TextStyles.s12w400grey,
        ),
        title: Text(
          '${widget.day}',
          style: TextStyles.p2s16,
        ),
        trailing: CupertinoSwitch(
          activeColor: AppColors.deepBlue,
          value: widget.switchValue,
          onChanged: ( value) {
            setState(() {
              widget.switchValue = value ;
            });
          },
        ),
      ),
    );
  }
}
