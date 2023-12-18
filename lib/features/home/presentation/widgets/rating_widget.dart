import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../core/constants.dart';

class RateWidget extends StatefulWidget {
  const RateWidget({
    super.key,
  });

  @override
  State<RateWidget> createState() => _RateWidgetState();
}

class _RateWidgetState extends State<RateWidget> {
  @override
  Widget build(BuildContext context) {
   final double rating=4.5;
   double  initialRating =4.5;
    return RatingBar.builder(
      initialRating: 4,
      minRating: 4,
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

        rating = initialRating;

      },
      updateOnDrag: true,
    );
  }
}