import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../core/constants.dart';

class RateWidget extends StatelessWidget {
  const RateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(

      minRating: 1,
      //  direction: isVertical ? Axis.vertical : Axis.horizontal,
      allowHalfRating: true,
      unratedColor: AppColors.primaryColor.withOpacity(0.2),
      itemCount: 5,
      itemSize: 20.0,
      itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
      itemBuilder: (context, index) =>
          Icon(
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
    );
  }
}