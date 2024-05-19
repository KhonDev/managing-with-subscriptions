import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:managing_with_subscriptions/app/ui/on_boarding/answer.dart';
import 'package:managing_with_subscriptions/app/ui/screens/add_service.dart';
import 'package:managing_with_subscriptions/app/ui/screens/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;

  List screens = [
    const Home(),
    const Home(),
    const Home(),
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
    return const Scaffold(
      body: AddService(),
    );
  }
}
