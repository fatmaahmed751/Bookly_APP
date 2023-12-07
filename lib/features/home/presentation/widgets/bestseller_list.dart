import 'package:bookly_app/features/home/data/models/BestSellerBooks.dart';
import 'package:bookly_app/features/home/presentation/manager/home_cubit/home_states.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_error_message.dart';
import 'package:bookly_app/features/home/presentation/widgets/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../core/constants.dart';
import '../manager/home_cubit/home_cubit.dart';
import 'best_seller_widget.dart';
import 'list_view_top_picks.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeStates>(

      builder: (context,state) {
        if( state is HomeBestSellerSuccessState){
          return SizedBox(
            height: 330,
            //color: Colors.red,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>  bestSellerWidget(state.books[index],context),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 5,
                ),
                itemCount: state.books.length),
          );
        }else if(state is HomeBestSellerFailureState){
          CustomErrorMessage(errorMessage: state.errorMessage,);
        }
        return  const Center(child: CircularProgressIndicator());
      }

    );
  }
  Widget bestSellerWidget(BestSellerBooks books,context)=>Column(
      children: [
        SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height * .33,
          child: AspectRatio(
            aspectRatio: 5 / 9,
            child: Container(
              // width: 60,
              // height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                // color: Colors.red,
                image: DecorationImage(
                  image: NetworkImage(
                      books.volumeInfo.imageLinks?.thumbnail ?? ''
                    //  '${bestSellerBooks.items.indexOf(element)['items']['volumeInfo']['imageLinks']}'
                  ),
                  // AssetImage('assets/images/fatherhood.png')),
                ),
              ),
            ),
          ),
        ),
        bookName(text: books.volumeInfo.authors!.first),
        const SizedBox(
          height: 10,
        ),
        authorName(text: 'Fatherhood'),
        const RateWidget(),
      ]
  );
}


