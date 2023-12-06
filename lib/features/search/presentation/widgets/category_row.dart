import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../views/widgets/custom_text.dart';

Widget categoryItems()=> const Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    CustomText(
      text: 'Genres',
      color: AppColors.textColor,
      fontWeight: FontWeight.w400,
      size: 22,
    ),
    CustomText(
      text: 'Genres',
      color: AppColors.textColor,
      fontWeight: FontWeight.w400,
      size: 22,
    ),
    CustomText(
      text: 'Genres',
      color: AppColors.textColor,
      fontWeight: FontWeight.w400,
      size: 22,
    ),
  ],
);