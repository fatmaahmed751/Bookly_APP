import 'package:bookly_app/core/componenets.dart';
import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../../view/widgets/custom_app_bar.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color:AppColors.kPrimaryColor,
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height:100,
            width:330 ,
            child: screenText(
              text: 'Books For\n Every Taste',
            ),
          ),
          defaultButton(text: 'Sign In', function: (){}),
SizedBox(height: 20,),
          defaultButton(text: 'Sign Up', function: (){}),

// CustomAppBar(
//   title: 'Sign In',
// ),
        ],
      ),
    );
  }
}
