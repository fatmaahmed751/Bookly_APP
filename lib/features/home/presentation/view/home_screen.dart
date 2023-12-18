import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/data/models/BestSellerBooks.dart';
import 'package:bookly_app/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/home_cubit/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/componenets.dart';
import '../../../../core/constants.dart';
import '../widgets/custom_error_message.dart';
import '../widgets/home_genres_widget.dart';
import '../../../../views/widgets/custom_app_bar.dart';
import '../../../../views/widgets/custom_text.dart';
import '../widgets/bestseller_list.dart';
import '../../../Drawer/presentation/widgets/drawer_widget.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/genres_widget.dart';
import '../widgets/rating_widget.dart';
import '../widgets/top_picks_item.dart';
import '../widgets/recently_viewed.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();

    TextEditingController emailController = TextEditingController();

    return Scaffold(
      key: _scaffoldKey,
      endDrawer: const DrawerContainer(),
      body: SingleChildScrollView(
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 380,
                  width: 360,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen[300],
                    //AppColors.primaryColor,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: (Radius.circular(120)),
                        bottomRight: Radius.circular(120)),
                    //   image: DecorationImage(
                    //     fit : BoxFit.cover,
                    //     image: AssetImage('assets/images/cir.png',
                    //       //alignment : Alignment.centerRight,
                    //     ),
                    //   )
                  ),

                  child: const Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Column(
                      children: [
                        CustomAppBar(
                          title: 'our top picks',
                          // fontWeight: FontWeight.w400,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                  TopPicksList(),

                ]
                ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 22),
                  child: CustomText(
                    text: 'Bestsellers',
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.start,
                    size: 22,
                  ),
                ),
                // GenresWidget(),

              const BestSellerList(),
                const SizedBox(height: 12),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: CustomText(
                    text: 'Genres',
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w400,
                    size: 22,
                  ),
                ),
                genresHomeWidget(),

                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: CustomText(
                    text: 'Recently Viewed',
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w400,
                    size: 22,
                  ),
                ),
                Container(
                  height: 220,
                  padding: const EdgeInsets.only(left: 10.0, top: 10),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          RecentlyViewed(imageIndex: index),
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 5,
                          ),
                      itemCount: 7),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 20),
                  child: CustomText(
                    text: 'Monthly Newsletter',
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w400,
                    size: 22,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: SizedBox(
                    height: 40,
                    width: 302,
                    child: CustomText(
                      text:
                          'Receive our monthly newsletter and receive updates on new stock, books and the occasional promotion',
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.normal,
                      size: 10,
                      heigtText: 2.0,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                defaultFormField(
                  controller: nameController,
                  hintText: 'Name',
                  type: TextInputType.text,
                ),
                defaultFormField(
                  controller: emailController,
                  hintText: 'email Address',
                  type: TextInputType.emailAddress,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 32,
                      width: 160,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          boxShadow: const [
                            BoxShadow(color: Colors.grey, blurRadius: 20)
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: TextButton(
                          onPressed: () {},
                          child: const CustomText(
                            text: 'Sign Up',
                            color: AppColors.kPrimaryColor,
                            fontWeight: FontWeight.normal,
                            size: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            )



        ),

    );
  }

  Widget bestSellerWidget(BestSellerBooks books, context) => Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .33,
          child: AspectRatio(
            aspectRatio: 5 / 9,
            child: Container(
              // width: 60,
              // height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                // color: Colors.red,
                image: DecorationImage(
                  image: NetworkImage(books.volumeInfo.imageLinks?.thumbnail ??
                          'https://i.pinimg.com/564x/bc/42/a4/bc42a40ea31850951a52f99d8dbd457a.jpg'
                      //  '${bestSellerBooks.items.indexOf(element)['items']['volumeInfo']['imageLinks']}'
                      ),
                  // AssetImage('assets/images/fatherhood.png')),
                ),
              ),
            ),
          ),
        ),
        bookName(text: books.volumeInfo.authors?.first ?? "Famous Author"),
        const SizedBox(
          height: 10,
        ),
        authorName(
            text: books.volumeInfo.authors?.last ??
                "Antonio Author".substring(0, 10)),
        // const SizedBox(
        //   height: 5,
        // ),
        const RateWidget(),
      ]);

  Widget detailsBook(BestSellerBooks books, context) => Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: Container(
              width: 120,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage(books
                            .volumeInfo.imageLinks?.thumbnail ??
                        'https://i.pinimg.com/564x/bc/42/a4/bc42a40ea31850951a52f99d8dbd457a.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(height: 10),
          bookName(
              text: books.volumeInfo.title ?? 'Divide Emel'.substring(0, 9)),
          const SizedBox(
            height: 10,
          ),
          authorName(
              text: books.volumeInfo.authors?.last ??
                  'Divide Emel'.substring(0, 3)),
        ],
      );
}

class BottomBorderRadiusClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(size.width - 40, 0);
    path.quadraticBezierTo(size.width, 0, size.width, 40);
    path.lineTo(size.width, size.height - 20);
    path.quadraticBezierTo(
        size.width, size.height, size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
