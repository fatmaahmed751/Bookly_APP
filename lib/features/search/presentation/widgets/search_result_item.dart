import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../views/widgets/custom_text.dart';
import '../../../home/presentation/widgets/rating_widget.dart';

Widget searchResultItem()=> Padding(
  padding: const EdgeInsets.only(left: 10.0,right: 10,top: 10),
  child: Container(
    width: 440,
    height: 190,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10
      )
    ),
    child: Row(
      textBaseline: TextBaseline.alphabetic,
      children: [
        Container(
          width: 120,
          height: 190,
          decoration: const BoxDecoration(
            // color: Colors.red,
          ),
          child: Image.asset(
            'assets/images/his.png',
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 22,
                width: 185,
                child: CustomText(
                  text: " The Heart of Hell ",
                  size: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.secondTextColor,
                  textAlign: TextAlign.start,),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomText(
                text: "Mitch Weiss",
                size: 12,
                fontWeight: FontWeight.w300,
                color: AppColors.secondTextColor,
              ),
              const RateWidget(),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: 181,
                child: CustomText(
                  text:
                  "The untold story of courage and sacrifice in the shadow of Iwo Jima.",
                  size: 10,
                  fontWeight: FontWeight.w200,
                  color: AppColors.secondTextColor,
                  heigtText: 1.8,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 3),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey, blurRadius: 20)
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: TextButton(
                            onPressed: () {},
                            child: const CustomText(
                              text: 'Add To Cart',
                              color: AppColors.kPrimaryColor,
                              fontWeight: FontWeight.normal,
                              size: 11,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5,),
                  Padding(
                    padding: const EdgeInsets.only(right: 3),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                            color: AppColors.kPrimaryColor,
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey, blurRadius: 20)
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: TextButton(
                            onPressed: () {},
                            child: CustomText(
                              text: 'Add To wishlist',
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.normal,
                              size: 10,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);