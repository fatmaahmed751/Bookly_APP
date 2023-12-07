import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/constants.dart';
import '../../../../views/widgets/custom_text.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0,left: 20),
      child: SizedBox(
       // color: Colors.red,
        height: 300,
        child: ListView(
          physics:const NeverScrollableScrollPhysics() ,
         shrinkWrap: true,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: 'Will Newman',
                    fontWeight:FontWeight.normal ,
                    size:22 ,
                    color: AppColors.secondTextColor,),
                  SizedBox(
                    height: 36,
                    width: 169,
                    child: CustomText(text:'Constantly travelling and keeping up to date with business related books',
                      fontWeight:FontWeight.w300 ,
                      size:10 ,
                      color: AppColors.secondTextColor,
                      // textOverflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 50),
              const CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage('assets/images/im_three.jpg'),
              ),

            ],
          ),
          const SizedBox(height:20),
          Row(
            children: [
              SizedBox(
                height: 12,
                width: 185,
                child: CustomText(text: 'location-arrow Newcastle - Australia',
                    fontWeight:FontWeight.w200 ,
                    size: 9,
                    color:AppColors.secondTextColor),
              ),
              const SizedBox(width:20),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 32,
                    width: 115,
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, blurRadius: 20)
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child:  Center(
                      child: TextButton(
                        onPressed:(){

                        },
                        child: const CustomText(   text: 'Edit Profile',
                          color: AppColors.kPrimaryColor,
                          fontWeight: FontWeight.normal,
                          size: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
          const SizedBox(height:30),
          Row(
            children: [
              SizedBox(
                height:60 ,
                width: 40,
                child: Column(
                  children: [
                    CustomText(text:"21",
                      size: 12,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.center,
                      color: AppColors.secondTextColor,),
                    CustomText(text:"Books",
                      size: 10,
                      fontWeight: FontWeight.w600,
                      textAlign: TextAlign.center,
                      color: AppColors.secondTextColor,),
                  ],
                ),
              ),
              const SizedBox(width:40),
              SizedBox(
                height:60 ,
                width: 40,
                child: Column(
                  children: [
                    CustomText(text:"7",
                      size: 12,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.center,
                      color: AppColors.secondTextColor,),
                    CustomText(text:"Reviews",
                      size: 10,
                      fontWeight: FontWeight.w600,
                      textAlign: TextAlign.center,
                      color: AppColors.secondTextColor,),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height:10),
          CustomText(text: 'Your purchases (21)',
            size: 13,
            fontWeight: FontWeight.w500,
            color: AppColors.secondTextColor,
            textAlign: TextAlign.left,),
        ],
        ),
      ),
    );
  }
}
