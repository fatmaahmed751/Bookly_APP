import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/componenets.dart';
import '../../../../core/constants.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../views/widgets/custom_text.dart';

class HelperInformation extends StatelessWidget {
  const HelperInformation({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController cityController = TextEditingController();

    TextEditingController  stateController = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          signInText(text: 'Help Us Help You'),
          Container(
            height:152 ,
            width:335 ,
            child: CustomText(text:'It seems as this is your first time using our app, please enter your location so we can filter our results and stock accordingly to your local store. If you choose to skip, you can change your location at any time in your account settings.',
           size: 15,
            fontWeight: FontWeight.w300,
            color: AppColors.secondTextColor,),
          ),
          defaultFormField(hintText: 'City', controller:
          stateController
          , type:TextInputType.text ),
          defaultFormField(hintText: 'State', controller:
          cityController, type:TextInputType.text ),

      TextButton(
        onPressed: () {
        GoRouter.of(context).push(AppRouter.homeScreen);
        },
        child: Text(
          "Skip",
          style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 17,
              fontWeight: FontWeight.normal),
        ),
      ),
        ],
      ),
    );
  }
}