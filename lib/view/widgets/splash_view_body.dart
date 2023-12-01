import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants.dart';
import '../../features/screens/on_boarding_screen.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    animationMethod();
    navigationMethod();
  }


  void dispose(){
    super.dispose();
    animationController.dispose();
  }
    @override
    Widget build(BuildContext context) {
      return Container(
        // height:650,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 360,
              //  MediaQuery.of(context).size.width,
              height: 260,
              //MediaQuery.of(context).size.height ,
              decoration: const BoxDecoration(
                // color: Colors.red,
                image: DecorationImage(
                  image: AssetImage('assets/images/booki.jpg'),
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            AnimatedBuilder(
                animation: slidingAnimation,
              builder: (context,_) {
                return SlideTransition(
                  position:slidingAnimation ,
                  child: Container(
                    height: 80,
                    width: 335,
                    child: Text('Books Tastey',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily:"Bacute Regular",
                        //decoration: TextDecoration.lineThrough,
                        textBaseline: TextBaseline.alphabetic,
                        color: AppColors.primaryColor,
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.ellipsis,

                      ),
                    ),
                  ),
                );
              }
            )
          ],
        ),
      );
    }
  void navigationMethod() {
    try {
      print('hhhhhhhhhhhhhh');
      Future.delayed(const Duration(seconds:3), () {
GoRouter.of(context).push(AppRouter.onBoardingScreen);
        // Navigator.pushReplacement(
        //     context, MaterialPageRoute(builder: (_) => OnBoardingScreen()));
        print('object');
      });
    } catch (e) {
      print(e.toString());
    }
  }

  void animationMethod() {
    animationController = AnimationController(vsync:this,duration:const Duration( seconds: 2) );

    slidingAnimation = Tween<Offset>(begin:const Offset(0,10) ,end: Offset.zero).animate(animationController);
    animationController.forward();
  }

}
