import 'package:flutter/material.dart';

import 'list_of_purchases.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 160,
          height: 165,
          decoration: const BoxDecoration(
              color: Color(0xffFF5957),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
              )),

        ),
        Container(
          height:200,
          padding: const EdgeInsets.only(left: 19,bottom: 20),
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => purchasesBook(context),
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              itemCount: 5),
        ),
      ],
    );
  }
}