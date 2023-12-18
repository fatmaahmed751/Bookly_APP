import 'package:flutter/material.dart';

import 'list_view_container.dart';

Widget listOfReviews (context)=> ListView.separated(
    physics:const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemBuilder: (context,index)=>  ListReviews(imageIndex:index,),
    separatorBuilder: (context,index)=>const SizedBox(height: 10,),
    itemCount: 7);