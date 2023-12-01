import 'package:flutter/material.dart';

import 'constants.dart';

Widget screenSubText({
  required String text,
  textAlign = TextAlign.start,
})=>Text(
  text,
style:  TextStyle(
  fontFamily: 'Bacute Regular',
  fontSize: 14,
  fontWeight:FontWeight.w400 ,
    color: AppColors.primaryColor

),

);

Widget defaultButton({
  required String text,
  required Function function,
}) => Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: const EdgeInsets.all(8.0),
      width: 307,
      height: 56,
      decoration: BoxDecoration(
        color:AppColors.primaryColor,
        // const Color.fromRGBO(252,96 ,17 ,80 ) ,
        borderRadius: BorderRadius.circular(100.0),
      ),
      clipBehavior: Clip.hardEdge,
      child: TextButton(
        onPressed: (){function();},
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.w400),
        ),
      ),
    );

Widget screenText({
  required String text,
})=>Text(
  textAlign:TextAlign.center,
  text,
  //maxLines: 2,
  style:  TextStyle(
   // overflow: TextOverflow.ellipsis,

    decoration: TextDecoration.none,
    fontFamily: 'Bacute Regular',
    fontSize: 30,
    fontWeight:FontWeight.w500 ,
    color: AppColors.primaryColor
  ),

);

Widget defaultFormField({
  required String hintText,
  required TextEditingController controller,
  required TextInputType type,
  String? Function(String?)? validator,
  void Function(String)? onChanged,
  String? labelText,
  //required Widget prefixIcon,
  Widget?suffixIcon,
  bool obscureText = false,
  String? value
}) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
      child: Container(

        width: 300,
        height: 60,
        // padding: EdgeInsets.all(8),

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
            fillColor: Colors.blueGrey[50] ,
            filled: true,
             border: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Colors.transparent),
              borderRadius: BorderRadius.circular(101),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Colors.transparent),
              borderRadius: BorderRadius.circular(201),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Colors.transparent),
              borderRadius: BorderRadius.circular(201),
            ),
            hintText: hintText,
            labelText: labelText,
            labelStyle: TextStyle(
              color:Colors.grey[700],
            ),

            contentPadding: const EdgeInsets.only(left: 25),

          ),
        ),
      ),
    );
