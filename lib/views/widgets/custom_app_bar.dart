import 'package:bookly_app/core/constants.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title}) : super(key: key);
  final String title;
  // Color color = Color();
  // Widget? icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(top: 0, bottom: 260, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 15,),
          // IconButton(onPressed: (){
          //   Navigator.pop(context);
          // }, icon:const Icon(Icons.arrow_back_ios)),
          CustomText(
            text: title,
            size:22,
            fontWeight: FontWeight.w400,
            color: AppColors.mainColor,
          ),
          const Spacer(),
          IconButton(
              icon:  const Icon(
                Icons.menu_sharp,
                size: 24,
                color: AppColors.mainColor,
              ),
              onPressed: () {

              })
        ],
      ),
    );
  }
}
