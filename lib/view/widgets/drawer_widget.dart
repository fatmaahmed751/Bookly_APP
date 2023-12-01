import 'package:flutter/material.dart';

import '../../core/constants.dart';
import 'custom_text.dart';

Widget drawerContainer(context) => Container(
      width: 300,
      height: 840,
      decoration: BoxDecoration(
        color: Colors.grey[100],
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
//mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: 100),
            Container(
//color: Colors.red,
              height: 500,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          child: const CustomText(
                            text: 'Home',
                            color: AppColors.mainColor,
                            textAlign: TextAlign.left,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
//leading: const Icon(Icons.settings),

                        CustomText(
                          text: 'Settings',
                          color: AppColors.authorColor,
                          size: 14,
                        ),
                        const SizedBox(width: 30),
                        CustomText(
                          text: 'Settings',
                          color: AppColors.primaryColor,
                          size: 14,
                        ),

// onTap: () {
//   // Handle navigation to settings
//   Navigator.pop(context);
// },
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
//leading: const Icon(Icons.settings),

                        CustomText(
                          text: 'Settings',
                          color: AppColors.authorColor,
                          size: 14,
                        ),
                        const SizedBox(width: 30),
                        CustomText(
                          text: 'Settings',
                          color: AppColors.primaryColor,
                          size: 14,
                        ),

// onTap: () {
//   // Handle navigation to settings
//   Navigator.pop(context);
// },
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
//leading: const Icon(Icons.settings),

                        CustomText(
                          text: 'Newsletter',
                          color: AppColors.authorColor,
                          size: 14,
                        ),
                        const SizedBox(width: 30),
                        CustomText(
                          text: 'newspaper',
                          color: AppColors.primaryColor,
                          size: 14,
                        ),

// onTap: () {
//   // Handle navigation to settings
//   Navigator.pop(context);
// },
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
//leading: const Icon(Icons.settings),

                        CustomText(
                          text: "Pop-up Leasing",
                          color: AppColors.authorColor,
                          size: 14,
                        ),
                        const SizedBox(width: 30),
                        CustomText(
                          text: ' external-link-alt',
                          color: AppColors.primaryColor,
                          size: 14,
                        ),

// onTap: () {
//   // Handle navigation to settings
//   Navigator.pop(context);
// },
                      ],
                    ),
                  ],
                ),
              ),
            )
          ]),
    );
