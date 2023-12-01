import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/screens/home_screen.dart';
import '../../features/screens/on_boarding_screen.dart';
import '../../features/screens/splash_screen.dart';

abstract class AppRouter {
  static const  onBoardingScreen =  '/onBoardingScreen';
  static const homeScreen = '/HomeScreen';
  static final GoRouter router = GoRouter(
      routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const SplashScreen(),
    ),
    GoRoute(
      path: onBoardingScreen,
      builder: (BuildContext context, GoRouterState state) =>
          OnBoardingScreen(),
    ),
        GoRoute(
          path: homeScreen,
          builder: (BuildContext context, GoRouterState state) =>
          const HomeScreen(),
        ),
  ]
  );
}
