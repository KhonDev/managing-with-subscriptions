import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/next_button.dart';
import 'package:managing_with_subscriptions/resources/app_router_constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.whiteF8,
                borderRadius: BorderRadius.circular(-12),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 28.0),
                  const Text(
                    "- \$21,65 ",
                    style: TextStyles.s44w600cblack,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Monthly",
                    style: TextStyles.footnoteMed12,
                  ),
                  const SizedBox(height: 16),
                  NextButton(
                      color: AppColors.deepBlue,
                      foregroundColor: Colors.white,
                      child: const Text(
                        '+ Add service ',
                        style: TextStyles.p2s16W,
                      ),
                      onTap: () {
                        GoRouter.of(context)
                            .pushNamed(MyAppRouteConstants.addservice);
                      }),
                  const SizedBox(height: 24),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Expanded(
                          child: TabsContainer(
                            text: 'Active',
                            color: AppColors.blue100,
                          ),
                        ),
                        SizedBox(width: 4),
                        Expanded(
                          child: TabsContainer(
                            text: 'Inactive',
                            color: AppColors.whiteF3,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Column(
                      children: [
                        const ServicerTile(
                          images: 'assets/images/spoty.png',
                          following: Row(
                            children: [
                              Text(
                                '\$5 monthly',
                                style: TextStyles.s12w400grey,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                                child: CircleAvatar(
                                  radius: 2,
                                  backgroundColor: AppColors.grey,
                                ),
                              ),
                              Text(
                                'Family+ plan',
                                style: TextStyles.s12w400grey,
                              ),
                            ],
                          ),
                          day: Row(
                            children: [
                              Text(
                                '04/04/24',
                                style: TextStyles.s12w400grey,
                              ),
                              SizedBox(width: 4),
                              Text(
                                '—',
                                style: TextStyles.s12w400grey,
                              ),
                              SizedBox(width: 4),
                              Text(
                                '04/04/25',
                                style: TextStyles.s12w400grey,
                              ),
                            ],
                          ),
                          name: 'Spotify',
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
                          height: 70,
                          decoration: const BoxDecoration(
                            color: AppColors.whiteF8,
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(12),
                            ),
                          ),
                          child: const Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            'Lorem ipsum dolor sit amet consectetur.Lorem ipsum dolor sit amet consectetur.Lorem ipsum dolor sit amet consectetur.Lorem ipsum dolor sit amet consectetur.',
                            style: TextStyles.s14w400grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Column(
                      children: [
                        const ServicerTile(
                          images: 'assets/images/pc.png',
                          following: Row(
                            children: [
                              Text(
                                '\$5 monthly',
                                style: TextStyles.s12w400grey,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                                child: CircleAvatar(
                                  radius: 2,
                                  backgroundColor: AppColors.grey,
                                ),
                              ),
                              Text(
                                'Family+ plan',
                                style: TextStyles.s12w400grey,
                              ),
                            ],
                          ),
                          day: Row(
                            children: [
                              Text(
                                '04/04/24',
                                style: TextStyles.s12w400grey,
                              ),
                              SizedBox(width: 4),
                              Text(
                                '—',
                                style: TextStyles.s12w400grey,
                              ),
                              SizedBox(width: 4),
                              Text(
                                '04/04/25',
                                style: TextStyles.s12w400grey,
                              ),
                            ],
                          ),
                          name: 'XBOX',
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
                          height: 70,
                          decoration: const BoxDecoration(
                            color: AppColors.whiteF8,
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(12),
                            ),
                          ),
                          child: const Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            'Lorem ipsum dolor sit amet consectetur.Lorem ipsum dolor sit amet consectetur.Lorem ipsum dolor sit amet consectetur.Lorem ipsum dolor sit amet consectetur.',
                            style: TextStyles.s14w400grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ServicerTile extends StatelessWidget {
  final String images;
  final Widget following;
  final Widget day;
  final String name;
  const ServicerTile({
    super.key,
    required this.images,
    required this.following,
    required this.day,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(images),
        ),
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.blacktransparent),
                    child: following),
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.blacktransparent),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/vectors/url.svg'),
                      const SizedBox(width: 4),
                      const Text(
                        'URL',
                        style: TextStyles.s12w400white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(name, style: TextStyles.p2s16W), day],
                ),
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/vectors/Vector.svg',
                      width: 6,
                      height: 12,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TabsContainer extends StatelessWidget {
  final String text;
  final Color color;
  const TabsContainer({
    required this.text,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), color: color),
      child: Center(
        child: Text(
          text,
          style: TextStyles.s16w600cblue,
        ),
      ),
    );
  }
}
