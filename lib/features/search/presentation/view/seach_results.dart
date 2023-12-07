import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../views/widgets/custom_text.dart';
import '../../../home/presentation/widgets/rating_widget.dart';
import '../widgets/list_of_result_search_items.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            listOfSearchResult(context),

          ],
        ),
      ),
    );
  }


}
