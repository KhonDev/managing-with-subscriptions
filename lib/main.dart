import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/resources/app_router_config.dart';
import 'package:managing_with_subscriptions/resources/data.dart';

appDatabase appDB = appDatabase();
userData userDB = userData();

void main() async {
  await Hive.initFlutter();
  var listbox = await Hive.openBox('userbox');
  var app_box = await Hive.openBox('appBox');

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: NyAppRouter().router,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.white,
      ),
    );
  }
}
