import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../views/widgets/custom_text.dart';
import '../../../auth_and_register/presentation/view/profile_screen.dart';
import '../view/our_book_screen.dart';
import 'drawer_row_item.dart';

Widget listItemsOfDrawer(context) => Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              child: const CustomText(
                text: 'Home',
                color: AppColors.mainColor,
                textAlign: TextAlign.left,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        drawerRowItem(
            function: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OurBookScreen()));
// GoRouter.of(context).push(AppRouter.ourBookScreen);
            },
            mainText: 'Our Books',
            secondText: 'Book'),
        drawerRowItem(
            function: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OurBookScreen()));
// GoRouter.of(context).push(AppRouter.ourBookScreen);
            },
            mainText: 'Our Stores',
            secondText: 'places'),
        drawerRowItem(
            function: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OurBookScreen()));
// GoRouter.of(context).push(AppRouter.ourBookScreen);
            },
            mainText: 'Careers',
            secondText: 'bride'),
        drawerRowItem(
            function: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OurBookScreen()));
// GoRouter.of(context).push(AppRouter.ourBookScreen);
            },
            mainText: 'Sell with Us',
            secondText: 'dollar'),
        drawerRowItem(
            function: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OurBookScreen()));
// GoRouter.of(context).push(AppRouter.ourBookScreen);
            },
            mainText: 'Pop-up Leasing',
            secondText: 'external-link-alt'),
        drawerRowItem(
            function: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OurBookScreen()));
// GoRouter.of(context).push(AppRouter.ourBookScreen);
            },
            mainText: 'Newsletter',
            secondText: 'newspaper'),
        drawerRowItem(
            function: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()));
// GoRouter.of(context).push(AppRouter.ourBookScreen);
            },
            mainText: 'Account',
            secondText: 'user'),
      ],
    );
