import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

//import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/componenets.dart';
import '../../core/constants.dart';
import 'first_screen.dart';
class OnBoardingModel{
  final String image;
  final String text;
  final String subText;

  OnBoardingModel({
    required this.image,
    required this.text,
    required this.subText
  });
}

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();

  List<OnBoardingModel> onBoarding = [
    OnBoardingModel(
        image: 'assets/images/bibliophile.png',
        text: 'Discounted Secondhand Books',
        subText: 'Used and near new secondhand books at great prices'
    ),
    OnBoardingModel(
        image: 'assets/images/undraw_business_shop.png',
        text: '20 Book Grocers Nationally',
        subText: 'We\'ve successfully opened 20 stores across Australia'
    ),
    OnBoardingModel(
        image: 'assets/images/undraw_collecting_fj.png',
        text: 'Sell or Recycle Your Old Books With Us',
        subText: 'If you\'re looking to downsize, sell or recycle old books, we can help'),
  ];
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView.builder(
            controller: boardController,
            onPageChanged: (int index){
              if(index == onBoarding.length-1)
              {
                print(onBoarding.length);
                isLast= true;
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const FirstScreen()));
              }else{
                isLast= false;
                print(isLast);
              }
            },
            itemBuilder: (context, index) =>
                onBoardingWidget(onBoarding[index],context),
            itemCount: onBoarding.length,)
      ),
    );
  }

  Widget onBoardingWidget(OnBoardingModel model,context) =>
      Padding(
        padding: const EdgeInsets.only(right:10,top:50),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.center,
          children:[
            screenText(
              text: model.text,
            ),
            const SizedBox(height: 10),

            Container(
              width: 272,
              height: 52,
              child: Align(
                alignment: Alignment.center,
                child: screenSubText(
                  text: "${model.subText} ",
                  // fontSize: 14,
                  // fontWeight: FontWeight.w500,
                  // color: const Color(0xff7c7d7e),
                ),
              ),
            ),

            Container(
              height:400,
              child: Image(image: AssetImage("${model.image}"),
              ),
            ),
            const SizedBox(height: 20),
            SmoothPageIndicator(
              controller: boardController,
              count: onBoarding.length,
              axisDirection: Axis.horizontal,
              effect:  ScrollingDotsEffect(
                  spacing:  8.0,
                  radius:  4.0,
                  dotWidth:  8.0,
                  dotHeight:  8.0,
                  paintStyle:  PaintingStyle.fill,
                  strokeWidth:  1.5,
                  dotColor:  Colors.grey,
                  activeDotColor: AppColors.primaryColor!
              ),
            ),
            const SizedBox(height: 30,),

]
        ),
           // orangeButton(text: 'Next', function:(){}),



      );
}