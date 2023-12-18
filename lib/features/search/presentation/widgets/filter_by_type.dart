import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../views/widgets/custom_text.dart';

Widget filterBy({
  required String categoryText,
  required String filterByTextOne,
  required String filterByTextTwo,
  required String filterByTextThree,
  required String filterByTextFour,
  required String filterByTextFive,
})=>SizedBox(
  height: 290,
  //color: Colors.red,
  child: ListView(
    physics: const NeverScrollableScrollPhysics(),
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 8),
        child: CustomText(text: categoryText,
          size: 15,
          color: AppColors.primaryColor,
        ),
      ),
      Row(
        children: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.circle_outlined,
            size: 20,)),
          const SizedBox(width: 5,),
          CustomText(text:filterByTextOne,
            size: 14,
            color: AppColors.secondTextColor,)
        ],
      ),
      Row(
        children: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.circle_outlined,
            size: 20,)),
          const SizedBox(width: 5,),
          CustomText(text: filterByTextTwo,
            size: 14,
            color: AppColors.secondTextColor,)
        ],
      ),
      Row(
        children: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.circle_outlined,
            size: 20,)),
          const SizedBox(width: 5,),
          CustomText(text: filterByTextThree,
            size: 14,
            color: AppColors.secondTextColor,)
        ],
      ),
      Row(
        children: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.circle_outlined,
            size: 20,)),
          const SizedBox(width: 5,),
          CustomText(text: filterByTextFour,
            size: 14,
            color: AppColors.secondTextColor,)
        ],
      ),
      Row(
        children: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.circle_outlined,
            size: 20,)),
          const SizedBox(width: 5,),
          CustomText(text: filterByTextFive,
            size: 14,
            color: AppColors.secondTextColor,)
        ],
      ),
    ],
  ),
);