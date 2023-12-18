import 'package:flutter/material.dart';
final List<String> imageList = [
  "assets/images/demo_list_image/dd.png",
  'assets/images/demo_list_image/zoo.png',
  'assets/images/demo_list_image/emi.png',
  'assets/images/demo_list_image/best.png',
  'assets/images/demo_list_image/paper.png',
  'assets/images/demo_list_image/tatte.png',
  //'assets/images/business.png'
  // Image.asset('assets/images/demo_list_image/zoo.png'),
];
 // final int imageIndex;

class PurchasesBookItem extends StatelessWidget {
  PurchasesBookItem({
    super.key,
    required this.imageIndex,
  });
  final List<String> imageList = [
    "assets/images/demo_list_image/dd.png",
    'assets/images/demo_list_image/zoo.png',
    'assets/images/demo_list_image/emi.png',
    'assets/images/demo_list_image/best.png',
    'assets/images/demo_list_image/paper.png',
    'assets/images/demo_list_image/tatte.png',
    ' assets/images/business.png'
  ];
  final int imageIndex;
  @override
  Widget build(BuildContext context) {
    // int randomIndex = Random().nextInt(imageList.length);
    // String randomImagePath = imageList[randomIndex];

    String selectedImagePath = imageList[imageIndex];
    return SizedBox(
      // height: MediaQuery.of(context).size.height * .40,
      child: AspectRatio(
        aspectRatio:10/ 14,
        child: Container(
          width: 128,
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
           //color: Colors.red,
            image:  DecorationImage(
                image: AssetImage(selectedImagePath),
              fit: BoxFit.cover
            ),
          ),
        ),
      ),

    );
  }
}
// Widget purchasesBook(context,int imageIndex) {
//   String selectedImagePath = imageList[imageIndex];
//
//   return Container();
// }
