import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:managing_with_subscriptions/app/ui/theme/app_colors.dart';
import 'package:managing_with_subscriptions/resources/app_router_config.dart';
import 'package:managing_with_subscriptions/resources/data.dart';

appDatabase appDB = appDatabase();

void main() async {
  await Hive.initFlutter();
  var box = Hive.openBox('mybox');
  var notificationBox = Hive.openBox('notification');

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
