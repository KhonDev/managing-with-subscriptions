import 'package:flutter/material.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/resources/app_router_config.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser:
          NyAppRouter.returnRouter(true).routeInformationParser,
      routerDelegate: NyAppRouter.returnRouter(true).routerDelegate,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.white),
    );
  }
}
