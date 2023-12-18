
import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../views/widgets/custom_text.dart';
import '../../../home/presentation/widgets/rating_widget.dart';
import 'filter_by_type.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Padding(
        padding: const EdgeInsets.only(left: 12.0,right: 12,top: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40,),
              Container(
                height: 50,
                width: 335,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color:AppColors.secondTextColor!)
                ),
                child:  Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 8,right: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CustomText(text: "Filter",
                      size: 16,
                      color: AppColors.textColor,),
                      const Spacer(),
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: const CustomText(text: "cancel",
                          size: 14,),
                      )
                    ],
                  ),
                ),
              ),
              //const SizedBox(height:10,),
              filterBy(
                  categoryText:"Sort by",
                  filterByTextOne: "Featured Titles",
                filterByTextTwo:"Price: Low to High",
                filterByTextThree:"Price: High to Low",
                filterByTextFour:"Publication Date",
                filterByTextFive:"A - Z",
              ),
              filterBy(
                  categoryText:"Genre",
                filterByTextOne: "Biography",
                filterByTextTwo:"Business & Economics",
                filterByTextThree:"Children",
                filterByTextFour:"Cookery",
                filterByTextFive:"Fiction",
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8,top: 15),
                child: CustomText(text: "Average Customer Review",
                  size: 15,
                  color: AppColors.primaryColor,
                ),
              ),
              Row(
                  children:[
                    IconButton(onPressed: (){}, icon: const Icon(Icons.circle_outlined,
                      size: 20,)),
                    const RateWidget(),
              ] ),
              Row(
                  children:[
                    IconButton(onPressed: (){}, icon: const Icon(Icons.circle_outlined,
                      size: 20,)),
                    const RateWidget(),
                  ] ),
              Row(
                  children:[
                    IconButton(onPressed: (){}, icon: const Icon(Icons.circle_outlined,
                      size: 20,)),
                    const RateWidget(),
                  ] ),
              Row(
                  children:[
                    IconButton(onPressed: (){}, icon: const Icon(Icons.circle_outlined,
                      size: 20,)),
                    const RateWidget(),
                  ] ),


            ],
          ),
        ),
      ),
    );
  }

}
