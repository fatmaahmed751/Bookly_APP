
import 'package:flutter/material.dart';
import '../../../../core/constants.dart';
import '../../../../views/widgets/custom_text.dart';


Widget drawerRowItem({
  required void  Function() function,
  required String mainText,
  required String secondText,
}) =>
    InkWell(
      onTap:(){
        function();
      },
      child: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            CustomText(
              text: mainText,
              color: AppColors.authorColor,
              size: 14,
            ),
            const SizedBox(width: 30),
            CustomText(
              text: secondText,
              color: AppColors.primaryColor,
              size: 14,
            ),

// onTap: () {
//   // Handle navigation to settings
//   Navigator.pop(context);
// },
          ],
        ),
      ),
    );
