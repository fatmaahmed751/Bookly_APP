import 'package:flutter/cupertino.dart';

import 'search_category_Items.dart';

class GridViewWidget extends StatelessWidget{
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: SizedBox(
        // color: Colors.yellow,
       // height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(right: 12.0,left: 12),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio : 2/2.5,
              mainAxisSpacing : 6.0,
              crossAxisSpacing : 5.0,
            ),

            itemBuilder: (context,index)=>CategoryItemsWidget(),
            itemCount:8,

          ),
        ),
      ),
    );
  }

}