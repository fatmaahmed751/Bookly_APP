import 'dart:math';

import 'package:flutter/cupertino.dart';

import '../../../../core/constants.dart';
import '../../../../views/widgets/custom_text.dart';
//import 'search_category_Items.dart';

class SearchModel {
  final String image;
  final String text;

  SearchModel({
    required this.image,
    required this.text,
  });
}

class GridViewWidget extends StatelessWidget {
  GridViewWidget({super.key});
  final List<SearchModel> onBoarding = [
    SearchModel(
      image: 'assets/images/business.png',
      text: 'Business',
    ),
    SearchModel(
      image: 'assets/images/novels.png',
      text: 'Novels',
    ),
    SearchModel(
      image: 'assets/images/biography.png',
      text: 'Biography',
    ),
    SearchModel(
      image: 'assets/images/children.png',
      text: 'Children',
    ),
    SearchModel(
      image: 'assets/images/fiction.png',
      text: 'Fiction',
    ),
    SearchModel(
      image: 'assets/images/cookery.png',
      text: 'Cookery',
    )
  ];
  final List<Color> colorList = [
    const Color(0xffB7143C),
    const Color(0xffE6A500),
    const Color(0xffEF4C45),
    const Color(0xff09ADE2),
    const Color(0xffD36A43),
  ];

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: SizedBox(
        // color: Colors.yellow,
        // height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(right: 12.0, left: 12),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 2.5,
              mainAxisSpacing: 6.0,
              crossAxisSpacing: 5.0,
            ),
            itemBuilder: (context, index) {
              int randomIndex = Random().nextInt(colorList.length);
              return  categoryItemsWidget(onBoarding[index], randomIndex);
            },
            itemCount: onBoarding.length,
          ),
        ),
      ),
    );
  }

  Widget categoryItemsWidget(SearchModel model, int randomIndex) => Container(
        // height:202 ,
        // width: 120,
        decoration: BoxDecoration(
          color: colorList[randomIndex],
          //const Color(0xffB7143C),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              children: [
                CustomText(
                  text: model.text,
                  fontWeight: FontWeight.bold,
                  color: AppColors.kPrimaryColor,
                  size: 13,
                ),
                const SizedBox(height: 7),
                Image.asset(
                  model.image,
                  height: 150,
                  width: 90,
                ),
              ],
            ),
          ),
        ),
      );
}
