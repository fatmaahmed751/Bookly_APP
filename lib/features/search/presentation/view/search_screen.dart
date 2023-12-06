import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../views/widgets/custom_text.dart';
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
            const GridViewWidget(),
          ],
        ),
      ),
    );
  }
}



