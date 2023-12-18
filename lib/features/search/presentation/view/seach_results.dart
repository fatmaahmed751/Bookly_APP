import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants.dart';
import '../../../../views/widgets/custom_text.dart';
import '../../../home/data/models/book_model.dart';
import '../../../home/presentation/manager/home_cubit/home_cubit.dart';
import '../../../home/presentation/manager/home_cubit/home_states.dart';
import '../../../home/presentation/widgets/rating_widget.dart';
import '../widgets/list_of_result_search_items.dart';
import '../widgets/search_widget.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height:5,
            ),
            const SearchBarWidget(),
            listOfSearchResult(context),

          ],
        ),
      ),
    );
  }


}
