
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../views/screens/cart_screen.dart';
import '../../../../views/screens/wish_list_screen.dart';
import '../../../Drawer/presentation/widgets/drawer_widget.dart';
import '../../../search/presentation/view/search_screen.dart';
import '../view/home_screen.dart';

class  BottomNavigation extends  StatefulWidget {

  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final DrawerController _drawerController = const DrawerController(
    alignment: DrawerAlignment.start,
    child: Drawer(),
    //v: NavigatorState(),
  );
  int currentIndex = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const WishListScreen(),
    const CartScreen(),
    // Add more screens as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const DrawerContainer(),
      body:screens[currentIndex] ,
      bottomNavigationBar:  ClipRRect(
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
              currentIndex: currentIndex,
              onTap: (index) {
                print(index);
                setState(() {
                  currentIndex = index;
                  print(index);
                });
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
                     child:
                     //const Icon(Icons.search),
                      IconButton(
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(Icons.search),
                          onPressed: () {

                         //   Navigator.push(context, MaterialPageRoute(builder:( context)=>const SearchScreen()));
                            // GoRouter.of(context).push(AppRouter.searchScreen);
                          }
                      ),
                    ),
                    label: 'Search'),
                BottomNavigationBarItem(
                    icon: Container(
                      height: 25,
                      padding: const EdgeInsets.all(0),
                      //decoration: BoxDecoration,
                      child:
                      //const Icon(Icons.favorite_border),
                      IconButton(
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(Icons.favorite_border),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:( context)=>const WishListScreen()));
                            //GoRouter.of(context).push(AppRouter.searchScreen);
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
                            Navigator.push(context, MaterialPageRoute(builder:( context)=>const CartScreen()));

                          //  GoRouter.of(context).push(AppRouter.searchScreen);
                          }
                      ),
                    ),
                    label: 'Cart'),
              ]
          ),
        ),
      ),
    );

  }
}