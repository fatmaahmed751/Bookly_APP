import 'package:flutter/material.dart';

Widget purchasesBook(context) =>
    SizedBox(
     // height: MediaQuery.of(context).size.height * .40,
      child: AspectRatio(
        aspectRatio:10/ 14,
        child: Container(
          width: 135,
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            // color: Colors.red,
            image: const DecorationImage(
                image: AssetImage('assets/images/fatherhood.png')),
          ),
        ),
      ),

);