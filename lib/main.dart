import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'core/constants.dart';
import 'features/screens/home_screen.dart';
import 'features/screens/splash_screen.dart';
void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      theme:ThemeData.light().copyWith(
       // scaffoldBackgroundColor: AppColors.kPrimaryColor

      //textTheme:GoogleFonts
      ),
      debugShowCheckedModeBanner:false,
     home:SplashScreen(),
    );
  }
}

