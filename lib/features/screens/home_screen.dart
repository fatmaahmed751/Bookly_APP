import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../core/componenets.dart';
import '../../core/constants.dart';
import '../../view/widgets/best_seller_widget.dart';
import '../../view/widgets/custom_app_bar.dart';
import '../../view/widgets/custom_text.dart';
import '../../view/widgets/genres_widget.dart';
import '../../view/widgets/list_view_top_picks.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
              //fit : StackFit.passthrough,
              alignment: Alignment.bottomCenter,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 420,
                  width: 486,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(180),
                        bottomLeft: Radius.circular(180),
                      )),
                  child: const SizedBox(
                    height: 40,
                    width: 335,
                    child: CustomAppBar(title: 'Our Top Picks'),
                  ),
                ),
                Container(
                  height: 380,
                  //color: Colors.red,
                  padding: const EdgeInsets.only(top: 40),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => detailsBook(context),
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 20,
                          ),
                      itemCount: 5),
                )
              ]),
          const CustomText(text: 'Bestsellers',
            color: AppColors.textColor,
            fontWeight:FontWeight.bold,
            size:18,),
          ListView.separated(
              itemBuilder: (context,index)=>const BestSellerWidget(),
              separatorBuilder: (context,index)=>const SizedBox(width: 5,),
              itemCount: 5),
          const CustomText(text: 'Genres',
            color: AppColors.textColor,
            fontWeight:FontWeight.bold,
            size:18,),
          ListView.separated(
              itemBuilder: (context,index)=>const GenresWidget(),
              separatorBuilder: (context,index)=>const SizedBox(width: 5,),
              itemCount: 5),
          const CustomText(text: 'Recently Viewed',
            color: AppColors.textColor,
            fontWeight:FontWeight.bold,
            size:18,),
          const CustomText(text: 'Monthly Newsletter',
            color: AppColors.textColor,
            fontWeight:FontWeight.bold,
            size:18,),
          const CustomText(text: 'Receive our monthly newsletter and receive updates on new stock, books and the occasional promotion',
            color: AppColors.mainColor,
            fontWeight:FontWeight.normal,
            size:10,),
          // defaultFormField(
          //   controller: ,
          //   hintText: ,
          //   type: ,
          // ),
          // defaultFormField(
          //   controller: ,
          //   hintText: ,
          //   type: ,
          // ),

        ],
      ),
    );
  }
}



