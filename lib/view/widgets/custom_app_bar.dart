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
      const EdgeInsets.only(top: 0, bottom: 270, right: 20),
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
            fontWeight: FontWeight.bold,
            color: AppColors.kPrimaryColor,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_sharp,
                size: 22,
                color: AppColors.kPrimaryColor,
              ))
        ],
      ),
    );
  }
}
