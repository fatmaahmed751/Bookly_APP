import 'package:bookly_app/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/componenets.dart';
import '../../../../views/widgets/custom_text.dart';
import '../../../home/presentation/widgets/list_view_top_picks.dart';
import '../../../home/presentation/widgets/rating_widget.dart';
import '../widgets/list_of_purchases.dart';
import '../widgets/list_of_reviews.dart';
import '../widgets/stack_widget.dart';
import '../widgets/user_information.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2100,
      //MediaQuery.of(context).size.height,
      child: Scaffold(
        body: SingleChildScrollView(
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              backNavigation(context),
              const UserInformation(),
              const StackWidget(),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: CustomText(
                  text: 'Your reviews (7)',
                  size: 13,
                  fontWeight: FontWeight.w500,
                  color: AppColors.secondTextColor,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 10,),
              listOfReviews(context),


            ],
          ),
        ),
      ),
    );
  }
}

