import 'dart:math';

import 'package:bookly_app/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/home_cubit/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants.dart';
import '../../../../views/widgets/custom_text.dart';
import '../../../home/presentation/widgets/bottom_navigation.dart';
import '../widgets/category_row.dart';
import '../widgets/grid_view_widget.dart';
import '../widgets/search_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: SizedBox(
           height: MediaQuery.of(context).size.height,
           child: Column(
             children: [
                const SearchBarWidget(),
               categoryItems(),
               GridViewWidget(),
               //const BottomNavigation(),
             ],
           ),
         ),
       );

  }
}




