import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:managing_with_subscriptions/app/ui/on_boarding/answer.dart';
import 'package:managing_with_subscriptions/app/ui/on_boarding/on_boarding.dart';
import 'package:managing_with_subscriptions/app/ui/on_boarding/progressing.dart';
import 'package:managing_with_subscriptions/app/ui/screens/splash_screen.dart';
import 'package:managing_with_subscriptions/app/ui/screens/add_notification.dart';
import 'package:managing_with_subscriptions/app/ui/screens/add_service.dart';
import 'package:managing_with_subscriptions/app/ui/screens/error_page.dart';
import 'package:managing_with_subscriptions/app/ui/screens/home.dart';
import 'package:managing_with_subscriptions/app/ui/screens/home_screen.dart';
import 'package:managing_with_subscriptions/app/ui/screens/select_services.dart';
import 'package:managing_with_subscriptions/app/ui/screens/settings_screen.dart';
import 'package:managing_with_subscriptions/app/ui/screens/supportscreen.dart';
import 'package:managing_with_subscriptions/resources/app_router_constants.dart';

class NyAppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: MyAppRouteConstants.splashRouteName,
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: SpalshScreen(),
          );
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.homeScreenRouteName,
        path: '/homescreen',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: HomeScreen(),
          );
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.onBoardingRouteName,
        path: '/on_boarding',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: OnBoarding(),
          );
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.answerQuestionRouteName,
        path: '/answer',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: AnswerQuesion(),
          );
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.progressing,
        path: '/progressing',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: Progressing(),
          );
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.homepage,
        path: '/homepage',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: Home(),
          );
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.addservice,
        path: '/add_services',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: AddService(),
          );
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.addnotification,
        path: '/add_notification',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: AddNotification(),
          );
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.selectsevicees,
        path: '/select_sevicees',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: SelectSeviceesScreen(
         
            ),
          );
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.support,
        path: '/support/:send',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: SupportScreen(
              send: state.pathParameters['send'],
            ),
          );
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.settings,
        path: '/settings',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: SettingsScreen()
          );
        },
      ),
    ],
    errorPageBuilder: (context, state) {
      return const MaterialPage(
        child: ErrorPage(),
      );
    },
  );
}
