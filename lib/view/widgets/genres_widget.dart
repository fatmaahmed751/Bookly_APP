import 'package:flutter/material.dart';

class GenresWidget extends StatelessWidget {
  const GenresWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return     Container(
      height:200 ,
      width: 270,
      decoration: const BoxDecoration(
        color: Color(0xff1C4A7E),
      ) ,
      child: Center(
        child: Image.asset('assets/images/group_one.png',
          height:130 ,
          width: 220,
        ),
      ),
    );
  }
}