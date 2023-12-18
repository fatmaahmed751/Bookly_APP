import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/search/presentation/view/seach_results.dart';
import 'package:bookly_app/features/search/presentation/widgets/filter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/constants.dart';
import '../../../../views/widgets/custom_text.dart';
import '../../../home/presentation/manager/home_cubit/home_cubit.dart';
import '../../../home/presentation/manager/home_cubit/home_states.dart';
import '../../../home/presentation/widgets/rating_widget.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 50),
            child: SizedBox(
              height: 45,
              width: double.infinity,
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search Books, Authors, or ISBN',
                  hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'SF Pro Text',
                      color: AppColors.secondTextColor),
                  filled: true,
                  fillColor: Colors.grey[200],
                  suffixIcon: IconButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>const FilterScreen()));
                    },
                    icon:  Image.asset('assets/images/demo_list_image/filter.png',
                    height: 18,)
                  ),
                  prefixIcon: IconButton(
                    onPressed: () {
                 // Navigator.push(context,MaterialPageRoute(builder: (context)=>const FilterScreen()));
                    },
                    icon: const Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      size: 18,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide.none),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                ),
                // cursorColor: AppColors.grey,
                onFieldSubmitted: (String value) {

                  print(value);
                  searchController.clear();
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const SearchResults()));
                  HomeCubit.get(context).fetchSearchBooks(value);
                },
              ),
            ),
          );
        });
  }
}
