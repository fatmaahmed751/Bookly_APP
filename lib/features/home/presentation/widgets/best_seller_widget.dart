// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
//
// import '../../../../core/constants.dart';
// import '../../data/models/BestSellerBooks.dart';
// import '../manager/home_cubit/home_states.dart';
// import 'custom_error_message.dart';
// import 'list_view_top_picks.dart';
//
// class BestSellerWidget extends StatelessWidget {
//   // const BestSellerWidget(List<BestSellerBooks> books, {super.key});
//   BestSellerWidget(this.bestSellerBooks, {super.key});
//   BestSellerBooks bestSellerBooks;
//
//   @override
//   Widget build(BuildContext context) {
//     return  BlocBuilder(
//
//         builder: (context,state) {
//       if( state is HomeBestSellerSuccessState) {
//         return Column(
//             children: [
//               SizedBox(
//                 height: MediaQuery
//                     .of(context)
//                     .size
//                     .height * .33,
//                 child: AspectRatio(
//                   aspectRatio: 5 / 9,
//                   child: Container(
//                     // width: 60,
//                     // height: 100,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       // color: Colors.red,
//                       image: DecorationImage(
//                         image: NetworkImage(
//                           '${state.books[index].volumeInfo.imageLinks}'
//                           //'${state.books[index].v}'
//                           //  '${bestSellerBooks.items.indexOf(element)['items']['volumeInfo']['imageLinks']}'
//                         ),
//                         // AssetImage('assets/images/fatherhood.png')),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               bookName(text: 'Fatherhood'),
//               const SizedBox(
//                 height: 10,
//               ),
//               authorName(text: 'Fatherhood'),
//               RatingBar.builder(
//
//                 minRating: 1,
//                 //  direction: isVertical ? Axis.vertical : Axis.horizontal,
//                 allowHalfRating: true,
//                 unratedColor: AppColors.primaryColor.withOpacity(0.2),
//                 itemCount: 5,
//                 itemSize: 20.0,
//                 itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
//                 itemBuilder: (context, index) =>
//                     Icon(
//                       // selectedIcon ??
//                       Icons.star,
//                       color: AppColors.primaryColor,
//                     ),
//                 onRatingUpdate: (rating) {
//                   // setState(() {
//                   // rating = rating;
//                   // });
//                 },
//                 updateOnDrag: true,
//               ),
//             ]
//         );
//       }
//       CustomErrorMessage(errorMessage: state.errorMessage,);
//     );
//
//   }
// }