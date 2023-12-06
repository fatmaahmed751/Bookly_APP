import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/constants.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10,top: 50),
      child: SizedBox(
        height: 45,
        width: double.infinity,
        child: TextFormField(
          //controller: textEditingController,
            decoration: InputDecoration(
              hintText: 'Search Books, Authors, or ISBN',
              hintStyle:const TextStyle(
fontSize: 14,
                fontWeight: FontWeight.normal,
                fontFamily: 'SF Pro Text'
                // color: AppColors.grey,

              ),
              filled: true,
              fillColor: Colors.grey[200],
              suffixIcon: const Icon(Icons.filter_tilt_shift_sharp),
              prefixIcon:const Icon(FontAwesomeIcons.magnifyingGlass,
              size: 20,) ,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide:  BorderSide.none,
              ),
            ),
            // cursorColor: AppColors.grey,
            onTap: () {}),
      ),
    );
  }
}
