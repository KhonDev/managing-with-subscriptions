import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/Custom_Button.dart';
import 'package:managing_with_subscriptions/app/ui/widgets/custom_listtile.dart';
import 'package:managing_with_subscriptions/resources/app_router_constants.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool selected = false;
  String? send;

  void delate(first, second) {
    selected ? first : second;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
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
            GestureDetector(
              onTap: () {
                GoRouter.of(context).pushNamed(MyAppRouteConstants.support,
                    pathParameters: {'send': send ?? ''});
              },
              child: CustomTile(
                svg: 'assets/vectors/support.svg',
                text: 'Support',
              ),
            ),
            const Spacer(),
            const CustomTile(
              svg: 'assets/vectors/share.svg',
              text: 'Share',
            ),
            const Spacer(),
            const CustomTile(
              svg: 'assets/vectors/star.svg',
              text: 'rote us',
            ),
            const Spacer(
              flex: 15,
            ),
            const Spacer(),
          ],
        ),
        send != null
            ? Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: Align(
                  alignment: const Alignment(0, 1),
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 5),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = !selected;
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: selected != true ? 49.0 : 220.0,
                        decoration: BoxDecoration(
                          color: selected == false
                              ? AppColors.pink
                              : AppColors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 16),
                            const Text(
                              'Are you sure you want to',
                              style: TextStyles.header2s24,
                            ),
                            const Text(
                              'delete your account?',
                              style: TextStyles.header2s24,
                            ),
                            SizedBox(height: 16),
                            const Text(
                              'Deleted data cannot be returned',
                              style: TextStyles.s14w400grey,
                            ),
                            SizedBox(height: 32),
                            Container(
                              width: double.infinity,
                              height: 49,
                              decoration: const BoxDecoration(
                                color: AppColors.pink,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: const Center(
                                child: Text('Send', style: TextStyles.p2s16R),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: Align(
                  alignment: const Alignment(0, 1),
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 5),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = !selected;
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: selected != true ? 49.0 : 220.0,
                        decoration: BoxDecoration(
                          color: selected == false
                              ? AppColors.pink
                              : AppColors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            selected
                                ? const SizedBox(height: 16)
                                : const SizedBox(),
                            selected
                                ? const Text(
                                    'Are you sure you want to',
                                    style: TextStyles.header2s24,
                                  )
                                : const SizedBox(),
                            selected
                                ? const Text(
                                    'delete your account?',
                                    style: TextStyles.header2s24,
                                  )
                                : const SizedBox(),
                            selected
                                ? const SizedBox(height: 16)
                                : const SizedBox(),
                            selected
                                ? const Text(
                                    'Deleted data cannot be returned',
                                    style: TextStyles.s14w400grey,
                                  )
                                : const SizedBox(),
                            selected
                                ? const SizedBox(height: 32)
                                : const SizedBox(),
                            selected
                                ? Container(
                                    width: double.infinity,
                                    height: 49,
                                    decoration: const BoxDecoration(
                                      color: AppColors.pink,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text('Delete',
                                          style: TextStyles.p2s16R),
                                    ),
                                  )
                                : const Row(
                                    children: [
                                      SizedBox(width: 12),
                                      Text('Delete account',
                                          style: TextStyles.p2s16R),
                                    ],
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
