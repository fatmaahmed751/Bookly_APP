
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants.dart';
import '../../../../core/utils/app_router.dart';

class  BottomNavigation extends  StatelessWidget {
  final DrawerController _drawerController = const DrawerController(
    alignment: DrawerAlignment.start,
    child: Drawer(),
    //v: NavigatorState(),
  );

  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(22.0),
        topRight: Radius.circular(22.0),
      ),
      child: Container(

        decoration: BoxDecoration(
            color: Colors.red,
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  color: AppColors.authorColor,
                  offset: const Offset(2, 1)
              )
            ]
          // borderRadius: BorderRadius.only(
          //   topRight: Radius.circular(60)
          // )
        ),
        height: 56,
        child: BottomNavigationBar(
            elevation: 1.0,
            selectedItemColor: AppColors.kPrimaryColor,
            unselectedItemColor: AppColors.kPrimaryColor,
            backgroundColor: AppColors.primaryColor,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              if (index == 0) {
                _drawerController.isDrawerOpen;
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  height: 25,
                  padding: const EdgeInsets.all(0),
                  //decoration: BoxDecoration,
                  child: IconButton(

                      padding: const EdgeInsets.all(0),
                      icon: const Icon(Icons.home_outlined,
                      ),
                      onPressed: () {}),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Container(
                    height: 25,
                    padding: const EdgeInsets.all(0),
                    //decoration: BoxDecoration,
                    child: IconButton(
                        padding: const EdgeInsets.all(0),
                        icon: const Icon(Icons.search),
                        onPressed: () {
                          GoRouter.of(context).push(AppRouter.searchScreen);
                        }
                    ),
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Container(
                    height: 25,
                    padding: const EdgeInsets.all(0),
                    //decoration: BoxDecoration,
                    child: IconButton(
                        padding: const EdgeInsets.all(0),
                        icon: const Icon(Icons.favorite_border),
                        onPressed: () {
                          GoRouter.of(context).push(AppRouter.searchScreen);
                        }
                    ),
                  ),
                  label: 'WishList'),
              BottomNavigationBarItem(
                  icon: Container(
                    height: 25,
                    padding: const EdgeInsets.all(0),
                    //decoration: BoxDecoration,
                    child: IconButton(
                        padding: const EdgeInsets.all(0),
                        icon: const Icon(Icons.shopping_cart_outlined),

                        onPressed: () {
                          GoRouter.of(context).push(AppRouter.searchScreen);
                        }
                    ),
                  ),
                  label: 'Cart'),
            ]
        ),
      ),
    );
  }
}