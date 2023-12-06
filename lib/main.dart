import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implment.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/api_services.dart';
import 'features/Drawer/presentation/view/our_book_screen.dart';
import 'features/home/data/repos/home_repo.dart';
import 'features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'features/home/presentation/view/home_screen.dart';
import 'features/Drawer/presentation/widgets/drawer_widget.dart';
import 'features/search/presentation/view/search_screen.dart';

void main() {
  runApp(const BooklyApp());
}


class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(providers:[
      BlocProvider(
      create: ( context)=>HomeCubit(HomeRepoImplement(ApiServices(
        Dio()
      ),
      ),
      )..fetchBestSellerBooks(),
      ),
    ],
      child: MaterialApp(
        home:const OurBookScreen(),
          //.router(
        //routerConfig: AppRouter.router,
        theme:ThemeData.light().copyWith(
         // scaffoldBackgroundColor: AppColors.kPrimaryColor

        //textTheme:GoogleFonts
        ),
        debugShowCheckedModeBanner:false,

      ),


    );
  }
}

