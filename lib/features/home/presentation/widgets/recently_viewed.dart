import 'package:flutter/material.dart';

class RecentlyViewed extends StatelessWidget {
  const RecentlyViewed({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height:200 ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        // color: Colors.red,
        image: const DecorationImage(
            image: AssetImage('assets/images/tree.png')),
      ),
    );
  }
}
