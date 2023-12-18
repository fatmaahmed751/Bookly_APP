import 'package:bookly_app/core/componenets.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/auth_and_register/presentation/view/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants.dart';
import '../../features/auth_and_register/presentation/view/login_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.only(top: 50),
      color:AppColors.kPrimaryColor,
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height:100,
            width:330 ,
            child: screenText(
              text: 'Books For\n Every Taste',
            ),
          ),
          defaultButton(text: 'Sign In', function: (){
           // GoRouter.of(context).push(AppRouter.loginScreen);
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
          }),
const SizedBox(height: 20,),
          defaultButton(text: 'Sign Up', function: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const RegisterScreen()));
           // GoRouter.of(context).push(AppRouter.registerScreen);
          }),
         // Image.network('https://i.pinimg.com/564x/df/8d/b1/df8db16625d8521bafbcdb3ece941817.jpg')
          Image.asset('assets/images/on_board_images/remove.png',
          width: 300,
          height: 350,
          alignment: Alignment.bottomCenter,),

// CustomAppBar(
//   title: 'Sign In',
// ),
        ],
      ),
    );
  }
}
