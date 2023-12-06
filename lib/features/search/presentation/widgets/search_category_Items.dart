import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../views/widgets/custom_text.dart';

class CategoryItemsWidget extends StatelessWidget {
  final List<Color> colorList = [
    const Color(0xffB7143C),
    const Color(0xffE6A500),
    const Color(0xffEF4C45),
    const Color(0xff09ADE2),
    const Color(0xffD36A43),
  ];

  CategoryItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    int randomIndex = Random().nextInt(colorList.length);
    //int index = colorList.iterator as int;
    return Container(
      // height:202 ,
      // width: 120,
      decoration: BoxDecoration(
        color:colorList[randomIndex],
        //const Color(0xffB7143C),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              const CustomText(
                text: 'Biography',
                fontWeight: FontWeight.bold,
                color: AppColors.kPrimaryColor,
                size: 13,
              ),
              const SizedBox(height: 7),
              Image.asset(
                'assets/images/tree.png',
                height: 150,
                width: 90,
              ),
            ],
          ),
        ),
      ),

    );
  }
}