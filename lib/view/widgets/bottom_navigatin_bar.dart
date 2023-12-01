import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../../features/screens/test.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final DrawerController _drawerController =  const DrawerController(
    alignment: DrawerAlignment.start,
    child:Drawer()
  //  duration: Duration(milliseconds: 300),
   // vsync: NavigatorState(),
  );
  @override
  Widget build(BuildContext context) {
    int currentIndex= 0 ;
    return BottomNavigationBar(
        elevation: 1.0,
        selectedItemColor: AppColors.kPrimaryColor,
        unselectedItemColor: AppColors.kPrimaryColor,
        backgroundColor: AppColors.primaryColor,
        type: BottomNavigationBarType.fixed,
        onTap:(index) {
          if (index == 0) {
            _drawerController.drawerCallback!(true);
          }
        },
        items:   [
          BottomNavigationBarItem(
              icon: IconButton(icon: const Icon(Icons.home_outlined),
              onPressed: (){
                //endDrawer: ClipPath(

                  //clipper: BottomBorderRadiusClipper(),
                //  child:
                  Drawer(
                    // shape: ShapeBorder.lerp( Border.symmetric( vertical = BorderSide.none,), Border.symmetric(), 40),
                    child: ListView(
                      padding: const EdgeInsets.only(top:100),
                      children: <Widget>[
                        ListTile(
                          selected: true,
                          enabled: true,
                          // selectedColor: AppColors.kPrimaryColor,
                          title: const Text('Home'),
                          // leading: const Icon(Icons.home),
                          onTap: () {
                            // Handle navigation to home
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          // leading: Icon(Icons.settings),
                          title: Row(
                            children: [
                              Text('Settings'),
                              Text('Settings'),
                            ],
                          ),
                          onTap: () {
                            // Handle navigation to settings
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),

                );
                //const TopPicksPage();
              }), label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'WishList'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
        ]);
  }
}
class BottomBorderRadiusClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(size.width - 40, 0);
    path.quadraticBezierTo(size.width, 0, size.width, 40);
    path.lineTo(size.width, size.height - 20);
    path.quadraticBezierTo(size.width, size.height, size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
