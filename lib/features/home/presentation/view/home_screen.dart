import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/componenets.dart';
import '../../../../core/constants.dart';
import '../widgets/best_seller_widget.dart';
import '../../../../views/widgets/custom_app_bar.dart';
import '../../../../views/widgets/custom_text.dart';
import '../widgets/bestseller_list.dart';
import '../../../Drawer/presentation/widgets/drawer_widget.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/genres_widget.dart';
import '../widgets/list_view_top_picks.dart';
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
            Stack(
                //fit : StackFit.passthrough,
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    alignment: Alignment.center,
                    //padding: const EdgeInsets.only(bottom: 0),
                    height: 390,
                    width: 450,
                    decoration:   BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: const BorderRadius.only(
                       bottomLeft:(Radius.circular(130)),
                        bottomRight: Radius.circular(130)
                      ),
                      // image: DecorationImage(
                      //   fit : BoxFit.cover,
                      //   image: AssetImage('assets/images/image.png',
                      //     //alignment : Alignment.centerRight,
                      //   ),
                      // )
                    ),
                    child: const CustomAppBar(
                      title: 'our top picks',
                     // fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    height: 395,
                    padding: const EdgeInsets.only(top: 70),
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => detailsBook(context),
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 20,
                            ),
                        itemCount: 5),
                  )
                ]),

            const Padding(
              padding: EdgeInsets.only(left: 10.0,top: 22),
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
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: CustomText(
                text: 'Genres',
                color: AppColors.textColor,
                fontWeight: FontWeight.w400,
                size: 22,
              ),
            ),

            Container(
              height: 220,
              padding: const EdgeInsets.only(left: 10.0),
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const GenresWidget(),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 5,
                      ),
                  itemCount: 5),
            ),
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
              padding: const EdgeInsets.only(left: 10.0),
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const RecentlyViewed(),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 5,
                      ),
                  itemCount: 5),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
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
                  child:  Center(
                    child: TextButton(
                      onPressed:(){

                      },
                  child: const CustomText(   text: 'Sign Up',
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
            //HalfCirclePainter(),
          ],
        ),


      ),
      bottomNavigationBar: const BottomNavigation()

    );
  }

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
