import 'package:flutter/material.dart';

import 'list_view_container.dart';

Widget listOfReviews (context)=> SizedBox(
  height: 900,
  child: ListView.separated(
      physics:const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context,index)=> const ListReviews(),
      separatorBuilder: (context,index)=>const SizedBox(height: 10,),
      itemCount: 7),
);