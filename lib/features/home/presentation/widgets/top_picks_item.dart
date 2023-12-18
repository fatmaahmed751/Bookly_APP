
import 'package:bookly_app/features/home/data/models/BestSellerBooks.dart';
import 'package:bookly_app/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/home_cubit/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/componenets.dart';
import '../../../../core/constants.dart';
import 'custom_error_message.dart';
class TopPicksList extends StatelessWidget {
  const TopPicksList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(

        builder: (context, state) {
          if (state is HomeTopPickSuccessState) {
            return SizedBox(
              height: 260,
              //color: Colors.red,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      detailsBook(state.topPicksBook[index], context),
                  separatorBuilder: (context, index) =>
                  const SizedBox(
                    width: 5,
                  ),
                  itemCount: state.topPicksBook.length),
            );
          } else if (state is HomeBestSellerFailureState) {
            return CustomErrorMessage(errorMessage: state.errorMessage,);
          }
          return const Center(child: CircularProgressIndicator());
        }

    );
  }


  Widget detailsBook(BestSellerBooks books, context) =>
      Column(
        children: [
          SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * .25,
            child: Container(
              width: 120,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(
                      books.volumeInfo.imageLinks?.thumbnail ??
                          'https://i.pinimg.com/564x/bc/42/a4/bc42a40ea31850951a52f99d8dbd457a.jpg'),
                  fit: BoxFit.cover
                ),
              ),
            ),
          ),

          const SizedBox(
              height: 10),
          bookName(text: books.volumeInfo.title??'Divide Emel'.substring(0,9)),
          const SizedBox(
            height: 10,
          ),
          authorName(text: books.volumeInfo.authors?.last??'Divide Emel'.substring(0,3)),
        ],
      );


}