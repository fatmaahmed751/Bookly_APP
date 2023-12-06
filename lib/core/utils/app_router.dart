import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import '../../features/Drawer/presentation/view/our_book_screen.dart';
import '../../features/auth_and_register/presentation/view/profile_screen.dart';
import '../../features/search/presentation/view/search_screen.dart';
import '../../features/home/presentation/view/home_screen.dart';
import '../../views/screens/on_boarding_screen.dart';
import '../../views/screens/splash_screen.dart';

abstract class AppRouter {
  static const  onBoardingScreen =  '/onBoardingScreen';
  static const homeScreen = '/HomeScreen';
  static const searchScreen = '/SearchScreen';
  static const profileScreen = '/ProfileScreen';
  static const ourBookScreen = '/OurBookScreen';
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
        const  OnBoardingScreen(),
    ),
        GoRoute(
          path: ourBookScreen,
          builder: (BuildContext context, GoRouterState state) =>
          const  OurBookScreen(),
        ),
    GoRoute(
          path: homeScreen,
          builder: (BuildContext context, GoRouterState state) =>
          const HomeScreen(),
        ),
     GoRoute(
          path: searchScreen,
          builder: (BuildContext context, GoRouterState state) =>
          const SearchScreen(),
        ),
        GoRoute(
          path: profileScreen,
          builder: (BuildContext context, GoRouterState state) =>
          const ProfileScreen(),
        ),
  ]
  );
}
