
import 'package:flutter/material.dart';


import '../../../../core/constants.dart';
import '../../../../views/widgets/custom_text.dart';
import '../view/our_book_screen.dart';
import 'drawer_item_list.dart';
import 'drawer_row_item.dart';

class DrawerContainer extends StatelessWidget {
  const DrawerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 100,
        height: 840,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          border: Border.all(
            color: Colors.white,
            width: 10,
            style: BorderStyle.none,
          ),
          boxShadow: const [
            BoxShadow(color: Colors.grey, blurRadius: 20),
          ],
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(170),
            topRight: Radius.circular(10),
          ),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              SizedBox(
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child:listItemsOfDrawer(context),
                ),
              )
            ]),
      ),
    );
  }
}
