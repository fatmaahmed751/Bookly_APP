import 'package:bookly_app/core/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implment.dart';
import 'package:bookly_app/features/home/presentation/manager/home_cubit/best_seller_cubit/best_seller_cubit.dart';
import 'package:bookly_app/views/screens/first_screen.dart';
import 'package:bookly_app/views/screens/on_boarding_screen.dart';
import 'package:bookly_app/views/screens/splash_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/api_services.dart';
import 'core/utils/bloc_observer.dart';
import 'features/Drawer/presentation/view/our_book_screen.dart';
import 'features/auth_and_register/presentation/view/profile_screen.dart';
import 'features/home/data/repos/home_repo.dart';
import 'features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'features/home/presentation/view/home_screen.dart';
import 'features/Drawer/presentation/widgets/drawer_widget.dart';
import 'features/home/presentation/widgets/bottom_navigation.dart';
import 'features/search/presentation/view/seach_results.dart';
import 'features/search/presentation/view/search_screen.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp( const BooklyApp());
}


class BooklyApp extends StatelessWidget {
   const BooklyApp({super.key});
 final String value = '';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(providers:[
      BlocProvider(
      create: ( context)=>HomeCubit(HomeRepoImplement(ApiServices(
        Dio()),),)..fetchTopPickBooks()..fetchSearchBooks(value),
      ),
      BlocProvider(
      create: ( context)=>BestSellerCubit(HomeRepoImplement(ApiServices(
    Dio()),),)..fetchBestSellerBooks(),
      ),
    ],
      child: MaterialApp(
        home:const HomeScreen(
        ),
          //.router(
        //routerConfig: AppRouter.router,
        theme:ThemeData.light(
        ).copyWith(
        ),
        debugShowCheckedModeBanner:false,

      ),


    );
  }
}

