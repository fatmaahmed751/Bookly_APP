import 'package:flutter/material.dart';

class RecentlyViewed extends StatelessWidget {
   RecentlyViewed({super.key,required this.imageIndex});
  final List<String> imageList = [


 "assets/images/recent_images/rec_six.jpg",
    "assets/images/recent_images/rec_five.jpg",
    "assets/images/recent_images/rec_four.jpg",
    "assets/images/recent_images/rec_three.jpg",
    "assets/images/recent_images/rec_two.jpg",
    "assets/images/recent_images/rec_one.jpg",
    "assets/images/recent_images/rec_sev.jpg",

    // 'assets/images/demo_list_image/tatte.png',
    // ' assets/images/business.png'
  ];
  final int imageIndex;
  @override
  Widget build(BuildContext context) {
    String selectedImagePath = imageList[imageIndex];
    return Container(
      width: 150,
      height:190 ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        // color: Colors.red,
        image:  DecorationImage(
            image: AssetImage(selectedImagePath),
          fit: BoxFit.cover
        ),
      ),
    );
  }
}
