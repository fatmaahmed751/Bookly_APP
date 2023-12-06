
import 'package:flutter/material.dart';

import '../../../../core/constants.dart';

Widget detailsBook(context) => Column(
  children: [
    SizedBox(
      height: MediaQuery.of(context).size.height * .35,
      child: AspectRatio(
        aspectRatio: 6 / 9,
        child: Container(
          // width: 60,
          // height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            // color: Colors.red,
            image: const DecorationImage(
                image: AssetImage('assets/images/fatherhood.png')),
          ),
        ),
      ),
    ),
    bookName(text: 'Fatherhood'),
    const SizedBox(
      height: 10,
    ),
    authorName(text: 'Fatherhood'),
  ],
);

Widget bookName({
  required String text,
  FontWeight? fontWeight,
  double? fontSize,
}) =>
    Text(
      text,
      style: TextStyle(
          color: AppColors.textColor,
          fontWeight: fontWeight,
          fontSize: 15,
          fontFamily: 'Bacute Regular'),
    );

Widget authorName({
  required String text,
  double? fontSize,
}) =>
    Text(
      text,
      style: TextStyle(
          color: AppColors.authorColor,
          fontWeight: FontWeight.w300,
          fontSize: 14,
          fontFamily: 'Bacute Regular'),
    );
