import 'package:bookly_app/core/exceptions/failure.dart';
import 'package:bookly_app/features/home/data/models/GenresBooks.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/utils/api_services.dart';
import '../models/BestSellerBooks.dart';
import 'home_repo.dart';

class HomeRepoImplement implements HomeRepo {
  ApiServices apiServices;
  HomeRepoImplement(this.apiServices);
  @override
  Future<Either<Failure, List<BestSellerBooks>>> fetchBestSellerBooks() async {
    try {
      var data = await apiServices.get(
         endPoint:
             '/volumes?Filtering=bestseller-ebooks&q=general&key=AIzaSyCIkHI6uZojdquASCFCXlZk1m9Leob3HQU'
      );
      List<BestSellerBooks> bookList = [];
      for (var book in data['items']) {
        bookList.add(BestSellerBooks.fromJson(book));
      }
      print('llllllllllllllllllllllllll');
      print(bookList);
      print('llllllllllllllllllllllllll');
      return right(bookList);
    } catch (e) {
      if (e is DioException) {
        print(e.toString());
        return left(ServerFailure('Opps There was an Error, Please try again'));
      //  return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure.fromDioException(e.toString() as DioException));
    }
  }

  @override
  Future<Either<Failure, List<BestSellerBooks>>> fetchSearchBooks(
      String value) async {
    try {
     Map<String,dynamic> data = await apiServices.get(value: value,
     endPoint: '/volumes?q=$value+terms&key=AIzaSyCIkHI6uZojdquASCFCXlZk1m9Leob3HQU');
        // endPoint: '/volumes?q:$value&Pagination=full');

      List<BestSellerBooks> searchBookList = List.from(data['items'] as List)
          .map((item) => BestSellerBooks.fromJson(item as Map<String, dynamic>))
          .toList();
      // List<BookModel> searchBookList =
      //     BookModel.fromJson(data as Map<String, dynamic>) as List<BookModel>;
      //BookModel.fromJson(data as Map<String, dynamic>) as List<BookModel>;
      // BookModel bookModel= BookModel.fromJson(searchBookList)
      //  // searchBookList = data.values as List<BookModel>;
      //   // for(var book in data['items']){
      //   //   bookList.add(BestSellerBooks.fromJson(book));
      //   // }
     print('uuuuuuuuuuuuuuuuuuuuuuuuuuuuu');
      print(data);
      print('uuuuuuuuuuuuuuuuuuuuuuuuuuuuu');
      print(searchBookList);
      return right(searchBookList);
    } catch (e) {
      if (e is DioException) {
        print(e.toString());
        return left(ServerFailure.fromDioException(e));
      }
      // If it's not a DioException, handle it accordingly
      return left(ServerFailure('Opps There was an Error, Please try again'));
    }
  }

  Future<Either<Failure, List<GenresBooks>>> fetchGenresBooks() async {
    try {
      var data = await apiServices.get(
        value: '',
        endPoint:
           'volumes?Filtering=bestseller-ebooks&q=subject:genres&Pagination =full&key=AIzaSyCIkHI6uZojdquASCFCXlZk1m9Leob3HQU');
      List<GenresBooks> genresBookList = [];
      for (var book in data['items']) {
        genresBookList.add(GenresBooks.fromJson(book));
      }
      print(genresBookList);
      return right(genresBookList);
    } catch (e) {
      if (e is DioException) {
        print(e.toString());
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure.fromDioException(e.toString() as DioException));
    }
  }

  @override
  Future<Either<Failure, List<BestSellerBooks>>> fetchTopPickBooks()  async {
    try {
      var data = await apiServices.get(
        //  value: '',
          endPoint:
          '/volumes?Filtering=bestseller-ebooks&q=subject:programming&key=AIzaSyCIkHI6uZojdquASCFCXlZk1m9Leob3HQU');
          //    '//&key=AIzaSyCIkHI6uZojdquASCFCXlZk1m9Leob3HQU');
      List<BestSellerBooks> topPickBookList = [];
      for (var book in data['items']) {
        topPickBookList.add(BestSellerBooks.fromJson(book));
      }
      print(topPickBookList);
      return right(topPickBookList);
    } catch (e) {
      if (e is DioException) {
        print(e.toString());
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure('Opps There was an Error, Please try again'));
    //  return left(ServerFailure.fromDioException(e.toString() as DioException));
    }
  }
}
