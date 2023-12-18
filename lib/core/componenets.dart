import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

Widget screenSubText({
  required String text,
  textAlign = TextAlign.start,
}) =>
    Text(
      text,
      style: TextStyle(
        fontFamily: 'Bacute Regular',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.primaryColor,
      ),
    );

Widget defaultButton({
  required String text,
  required Function function,
}) =>
    Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: const EdgeInsets.all(8.0),
      width: 307,
      height: 56,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        // const Color.fromRGBO(252,96 ,17 ,80 ) ,
        borderRadius: BorderRadius.circular(100.0),
      ),
      clipBehavior: Clip.hardEdge,
      child: TextButton(
        onPressed: () {
          function();
        },
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.w400),
        ),
      ),
    );

Widget screenText({
  required String text,
}) =>
    Text(
      textAlign: TextAlign.center,
      text,
      //maxLines: 2,
      style: TextStyle(
          // overflow: TextOverflow.ellipsis,

          decoration: TextDecoration.none,
          fontFamily: 'Bacute Regular',
          fontSize: 30,
          fontWeight: FontWeight.w500,
          color: AppColors.primaryColor),
    );

Widget backNavigation(context) => Align(
      alignment: Alignment.topLeft,
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          FontAwesomeIcons.angleLeft,
          size: 22,
          color: AppColors.primaryColor,
        ),
      ),
    );

Widget defaultFormField(
        {required String hintText,
        required TextEditingController controller,
        required TextInputType type,
        String? Function(String?)? validator,
        void Function(String)? onChanged,
        String? labelText,
        //required Widget prefixIcon,
        Widget? suffixIcon,
        bool obscureText = false,
        String? value}) =>
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Container(
        width: 300,
        height: 60,
        decoration: BoxDecoration(
          //  color: Colors.red,
          borderRadius: BorderRadius.circular(200),
          //  color: Colors.blueGrey[50]
        ),
        child: TextFormField(
          obscureText: obscureText,
          onChanged: onChanged,
          textAlign: TextAlign.justify,
          validator: validator,
          keyboardType: type,
          initialValue: value,
          controller: controller,
          decoration: InputDecoration(
            // prefixIcon:prefixIcon ,
            // suffixIcon: suffixIcon,
            fillColor: Colors.blueGrey[50],
            filled: true,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(101),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(201),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(201),
            ),
            hintText: hintText,
            hintStyle:  TextStyle(
                color: AppColors.secondTextColor,
                fontSize: 13
            ),
            labelText: labelText,
            labelStyle:
                TextStyle(fontSize: 15, color: AppColors.secondTextColor),

            contentPadding: const EdgeInsets.only(left: 25),
          ),
        ),
      ),
    );

Widget stayLoginIn({
  required String text,
  String secText = '',
}) =>
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.check_box_outline_blank_outlined,
              color: AppColors.secondTextColor,
            ),
          ),
          Text(
            textAlign: TextAlign.center,

            text,

            //maxLines: 2,

            style: TextStyle(

                // overflow: TextOverflow.ellipsis,

                decoration: TextDecoration.none,
                fontFamily: 'Bacute Regular',
                fontSize: 12,
                fontWeight: FontWeight.w200,
                color: AppColors.secondTextColor),
          ),
          const Spacer(),
          Text(
            textAlign: TextAlign.center,

            secText,

            //maxLines: 2,

            style: TextStyle(

                // overflow: TextOverflow.ellipsis,

                decoration: TextDecoration.none,
                fontFamily: 'Bacute Regular',
                fontSize: 12,
                fontWeight: FontWeight.w200,
                color: AppColors.secondTextColor),
          ),
        ],
      ),
    );

Widget signInText({
  required String text,
}) =>
    Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Text(
        textAlign: TextAlign.left,
        text,
        //maxLines: 2,
        style: const TextStyle(
            // overflow: TextOverflow.ellipsis,

            decoration: TextDecoration.none,
            fontFamily: 'Bacute Regular',
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: AppColors.textColor),
      ),
    );

Widget defaultLogInButton({
  required String text,
  required Function function,
}) =>
    Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: const EdgeInsets.all(8.0),
      width: 300,
      height: 57,
      decoration: BoxDecoration(
          color: Colors.transparent,
          //  const Color.fromRGBO(252,96 ,17 ,80 ) ,
          border: Border.all(width: 1.0, color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(200)),
      clipBehavior: Clip.hardEdge,
      child: TextButton(
        onPressed: () {
          function();
        },
        child: Text(
          text,
          style: TextStyle(color: AppColors.primaryColor, fontSize: 18),
        ),
      ),
    );
Widget bookName({
  required String text,
  FontWeight? fontWeight,
  double? fontSize,
}) =>
    Padding(
      padding: const EdgeInsets.only(left:8.0),
      child: Container(
        width: 130,
        child: Text(
          text,
          style: TextStyle(
              color: AppColors.textColor,
              fontWeight: fontWeight,
              fontSize: 13,
              fontFamily: 'Bacute Regular',
         overflow: TextOverflow.ellipsis
          ),
        ),
      ),
    );

Widget authorName({
  required String text,
  double? fontSize,
}) =>
    Padding(
      padding: const EdgeInsets.only(left:8.0),
      child: Container(
        width: 100,
        child: Text(
          text,

          style: TextStyle(
              color: AppColors.secondTextColor,
              fontWeight: FontWeight.w300,
              fontSize: 10,
              fontFamily: 'Bacute Regular',
              overflow:TextOverflow.ellipsis
          ),
        ),
      ),
    );
