import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:managing_with_subscriptions/app/ui/on_boarding/answer.dart';
import 'package:managing_with_subscriptions/app/ui/on_boarding/on_boarding.dart';
import 'package:managing_with_subscriptions/app/ui/on_boarding/proggressing.dart';
import 'package:managing_with_subscriptions/app/ui/on_boarding/splash_screen.dart';
import 'package:managing_with_subscriptions/app/ui/screens/error_page.dart';
import 'package:managing_with_subscriptions/app/ui/screens/home_screen.dart';
import 'package:managing_with_subscriptions/resources/app_router_constants.dart';

class NyAppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: MyAppRouteConstants.homeScreenRouteName,
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: HomeScreen(),
          );
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.splashRouteName,
        path: '/splash',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: SpalshScreen(),
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
        path: '/progress',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: Progressing(),
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
