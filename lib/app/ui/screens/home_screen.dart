import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:managing_with_subscriptions/app/ui/on_boarding/answer.dart';
import 'package:managing_with_subscriptions/app/ui/screens/calendar.dart';
import 'package:managing_with_subscriptions/app/ui/screens/home.dart';
import 'package:managing_with_subscriptions/app/ui/screens/notifications.dart';
import 'package:managing_with_subscriptions/app/ui/theme/text_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;

  List screens = [
    const Home(),
    const CalendarScreen(),
    const NotificationsScreen(),
    const Home(),
  ];
  List icons = [
    SvgPicture.asset('assets/vectors/Home 3.svg'),
    SvgPicture.asset('assets/vectors/Calendar Mark.svg'),
    SvgPicture.asset('assets/vectors/Bell.svg'),
    SvgPicture.asset('assets/vectors/Settings Minimalistic.svg'),
  ];
  List title = [
    "Home",
    "Calendar",
    "Notifications",
    "Settings",
  ];

  void onTapped(int index) {
    selectedindex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        selectedLabelStyle: TextStyles.s12w500cblue,
        type: BottomNavigationBarType.fixed,
        onTap: onTapped,
        currentIndex: selectedindex,
        items: List.generate(
          icons.length,
          (index) => BottomNavigationBarItem(
            icon: icons[index],
            label: title[index],
          ),
        ),
      ),
    );
  }
}
