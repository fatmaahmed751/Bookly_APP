import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../views/widgets/custom_text.dart';
import '../../../home/presentation/widgets/rating_widget.dart';

class ListReviews extends StatelessWidget {
  const ListReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0,right: 10,top: 10),
      child: Container(
        padding: const EdgeInsets.only(left: 20,top:20),
        width: 310,
        height: 150,
        decoration: BoxDecoration(
          color: const Color(0xffF9F9F9),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              offset: const Offset(0, 2),
              color: AppColors.secondTextColor!,
            )
          ],
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 55,
                  width: 185,
                  child: CustomText(
                      text:
                      'A must read for everybody. This book taught me so many things about...',
                      size: 12,
                      fontWeight: FontWeight.w300,
                      color:AppColors.secondTextColor
                  ),
                ),
                const SizedBox(height: 10,),
                CustomText(
                  text:
                  'Read more >',
                  size: 12,
                  fontWeight: FontWeight.w300,
                  color:AppColors.secondTextColor,

                ),
                const SizedBox(height: 10,),
                const RateWidget(),
              ],
            ),
            Container(
              width: 125,
              height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image:AssetImage('assets/images/rev.png'),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}