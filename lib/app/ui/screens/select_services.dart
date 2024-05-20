import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/back.dart';

class SelectSevicees extends StatefulWidget {
  const SelectSevicees({super.key});

  @override
  State<SelectSevicees> createState() => _SelectSeviceesState();
}

class _SelectSeviceesState extends State<SelectSevicees> {
  @override
  Widget build(BuildContext context) {
    int selected = 0;

    List images = [
      'assets/vectors/spoty.svg',
      'assets/vectors/netflix.svg',
    ];
    void chandeIndex(int index) {
      selected = index;
      setState(() {});
    }

    Widget selectedItem(String text, int index, String image) {
      return SizedBox(
        height: 56,
        child: OutlinedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            side: BorderSide(
              color:
                  (selected == index) ? AppColors.deepBlue : AppColors.whiteF8,
            ),
            backgroundColor:
                (selected == index) ? AppColors.blue100 : AppColors.whiteF8,
          ),
          onPressed: () => chandeIndex(index),
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

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 56),
          const Row(
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
            Expanded(child: selectedItem('Spotify', 1, images[0])),
            const SizedBox(width: 8),
            Expanded(child: selectedItem('Netflix', 2, images[1])),
          ]),
          const SizedBox(height: 8),
          Row(children: [
            Expanded(child: selectedItem('Spotify', 3, images[0])),
            const SizedBox(width: 8),
            Expanded(child: selectedItem('Netflix', 4, images[1])),
          ]),
          const SizedBox(height: 8),
          Row(children: [
            Expanded(child: selectedItem('Spotify', 5, images[0])),
            const SizedBox(width: 8),
            Expanded(child: selectedItem('Spotify', 6, images[0])),
          ]),
          const SizedBox(width: 8),
          Row(children: [
            Expanded(child: selectedItem('Netflix', 5, images[1])),
            const SizedBox(width: 8),
            Expanded(child: selectedItem('Spotify', 6, images[0])),
          ]),
          const SizedBox(height: 8),
          Container(
            height: 56,
            width: 190.0,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: AppColors.whiteF8,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                SvgPicture.asset('assets/vectors/spoty.svg'),
                const SizedBox(width: 12),
                const Text(
                  'Spotify',
                  style: TextStyles.s16w400black,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
