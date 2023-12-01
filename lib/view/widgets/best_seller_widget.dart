import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../core/constants.dart';
import 'list_view_top_picks.dart';

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .33,
            child: AspectRatio(
              aspectRatio: 5 / 9,
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
          RatingBar.builder(

            minRating: 1,
            //  direction: isVertical ? Axis.vertical : Axis.horizontal,
            allowHalfRating: true,
            unratedColor: AppColors.primaryColor.withOpacity(0.2),
            itemCount: 5,
            itemSize: 20.0,
            itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
            itemBuilder: (context,index ) =>  Icon(
              // selectedIcon ??
              Icons.star,
              color: AppColors.primaryColor,
            ),
            onRatingUpdate: (rating) {
              // setState(() {
              // rating = rating;
              // });
            },
            updateOnDrag: true,
          ),
        ]
    );
  }
}