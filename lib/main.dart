import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'core/constants.dart';
import 'features/screens/home_screen.dart';
import 'features/screens/splash_screen.dart';
import 'features/screens/test.dart';
void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp.router(
      routerConfig: AppRouter.router,
      theme:ThemeData.light().copyWith(
       // scaffoldBackgroundColor: AppColors.kPrimaryColor

      //textTheme:GoogleFonts
      ),
      debugShowCheckedModeBanner:false,

    );
  }
}

