import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../views/widgets/custom_text.dart';

Widget categoryItems()=>  Padding(
  padding: const EdgeInsets.only(top: 10.0),
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      const CustomText(
        text: 'Genre',
        color: AppColors.textColor,
        fontWeight: FontWeight.w400,
        size: 20,
      ),
      CustomText(
        text: 'New Release',
        color: AppColors.secondTextColor,
        fontWeight: FontWeight.w300,
        size: 18,
      ),
      CustomText(
        text: 'The Arts',
        color: AppColors.secondTextColor,
        fontWeight: FontWeight.w300,
        size: 20,
      ),
    ],
  ),
);