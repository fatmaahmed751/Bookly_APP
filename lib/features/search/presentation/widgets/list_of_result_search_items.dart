
import 'package:bookly_app/features/search/presentation/widgets/search_result_item.dart';
import 'package:flutter/material.dart';

Widget listOfSearchResult (context)=> SizedBox(
  //height: 900,
  child: ListView.separated(
      physics:const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context,index)=>  searchResultItem(),
      separatorBuilder: (context,index)=>const SizedBox(height: 1,),
      itemCount: 7),
);