import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:managing_with_subscriptions/resources/app_router_constants.dart';

  final mybox = Hive.box('userbox');

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    if (mybox.get('List') == null) {
      Future.delayed(const Duration(seconds: 2), () {
        GoRouter.of(context).pushNamed(MyAppRouteConstants.onBoardingRouteName);
      });
    }
    {
      Future.delayed(const Duration(seconds: 2), () {
        GoRouter.of(context).pushNamed(MyAppRouteConstants.homeScreenRouteName);
      });
      setState(() {});
    }
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: 215,
          height: 215,
          child: Image.asset(
            'assets/images/stat.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
