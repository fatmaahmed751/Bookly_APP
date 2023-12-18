import 'package:bookly_app/features/home/data/models/BestSellerBooks.dart';
import 'package:bookly_app/features/home/presentation/manager/home_cubit/best_seller_cubit/best_seller_states.dart';
import 'package:bookly_app/features/home/presentation/manager/home_cubit/home_states.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_error_message.dart';
import 'package:bookly_app/features/home/presentation/widgets/rating_widget.dart';
import 'package:bookly_app/features/home/presentation/widgets/recently_viewed.dart';
import 'package:bookly_app/features/home/presentation/widgets/top_picks_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/componenets.dart';
import '../../../../core/constants.dart';
import '../../../../views/screens/show_book_detail.dart';
import '../manager/home_cubit/best_seller_cubit/best_seller_cubit.dart';
import '../manager/home_cubit/home_cubit.dart';


class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
      return BlocBuilder<BestSellerCubit, BestSellerStates>(

        builder: (context, state) {
          print("Current State: $state");
          if (state is BestSellerSuccessState) {
            print("Current State: $state");
            return
              SizedBox(
                height: 330,
                //color: Colors.red,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        bestSellerWidget(state.books[index], context),
                    separatorBuilder: (context, index) =>
                    const SizedBox(
                      width: 5,
                    ),
                    itemCount: state.books.length),
              );
          } else if (state is BestSellerFailureState) {
            return CustomErrorMessage(errorMessage: state.errorMessage,);
          }
          return const Center(child: CircularProgressIndicator());
          // return Container(
          //   height: 220,
          //   padding: const EdgeInsets.only(left: 10.0,top:10),
          //   child: ListView.separated(
          //       scrollDirection: Axis.horizontal,
          //       itemBuilder: (context, index) =>  RecentlyViewed(imageIndex: index),
          //       separatorBuilder: (context, index) => const SizedBox(
          //         width: 5,
          //       ),
          //       itemCount: 7),
          // );
          //  const Center(child: CircularProgressIndicator());
        }

    );
  }

  Widget bestSellerWidget(BestSellerBooks books, context) {
    return InkWell(
        onTap: () async {
          final Uri _url = Uri.parse(books.volumeInfo.previewLink!);
        if (!await launchUrl(_url)) {
          throw Exception('Could not launch $_url');
        }
          // Navigator.push(context, MaterialPageRoute(
          //     builder: (context) =>
          //          WebViewExample(
          //            url:  books.volumeInfo.previewLink!,
          //         )));
        },
        child: Column(
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
                            books.volumeInfo.imageLinks?.thumbnail ??
                                'https://i.pinimg.com/564x/bc/42/a4/bc42a40ea31850951a52f99d8dbd457a.jpg'
                          //  '${bestSellerBooks.items.indexOf(element)['items']['volumeInfo']['imageLinks']}'
                        ),
                        // AssetImage('assets/images/fatherhood.png')),
                      ),
                    ),
                  ),
                ),
              ),
              bookName(
                  text: books.volumeInfo.authors?.first ?? "Famous Author"),
              const SizedBox(
                height: 10,
              ),
              authorName(text: books.volumeInfo.authors?.last ??
                  "Antonio Author".substring(0, 10)),
              // const SizedBox(
              //   height: 5,
              // ),
              const RateWidget(),
            ]
        )
    );
  }
}

