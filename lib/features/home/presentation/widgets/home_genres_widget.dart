import 'package:flutter/material.dart';
import 'dart:math';

final List<Color> colorList = [
  const Color(0xffB7143C),
  const Color(0xffE6A500),
  const Color(0xffEF4C45),
  const Color(0xff09ADE2),
  const Color(0xffD36A43),
];

final List<String> imageList = [
  "assets/images/demo_list_image/dd.png",
  "assets/images/demo_list_image/dd.png",
  // Image.asset('assets/images/demo_list_image/dd.png'),
  // Image.asset('assets/images/demo_list_image/day_four.png'),
  // Image.asset('assets/images/demo_list_image/emi.png'),
  // Image.asset('assets/images/demo_list_image/best.png'),
  // Image.asset('assets/images/demo_list_image/paper.png'),
  // Image.asset('assets/images/demo_list_image/tatte.png'),
  // Image.asset('assets/images/demo_list_image/zoo.png'),
];

Widget genresHomeWidget() => Container(
      height: 220,
      padding: const EdgeInsets.only(left: 10.0),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            int randomIndex = Random().nextInt(colorList.length);
            return genresWidget(randomIndex, index);
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 5,
              ),
          itemCount: 5),
    );

Widget genresWidget(int randomIndex, int imageIndex) => Container(
      height: 180,
      width: 270,
      decoration: BoxDecoration(
          color: colorList[randomIndex],
//colorList[randomIndex],
          borderRadius: BorderRadius.circular(12)),
      child: Center(
        child:Image.asset('assets/images/group_one.png',
height:130 ,
 width: 220,

//         Image.asset(
// imageList[imageIndex],
// // height:130 ,
// // width: 220,
//       ),
//),
      )
      ),
    );

//Image.asset('assets/images/group_one.png',
