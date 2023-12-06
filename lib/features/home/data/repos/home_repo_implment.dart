import 'package:bookly_app/core/exceptions/failure.dart';
import 'package:bookly_app/features/home/data/models/GenresBooks.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/utils/api_services.dart';
import '../models/BestSellerBooks.dart';
import 'home_repo.dart';


class HomeRepoImplement implements HomeRepo{
  ApiServices apiServices;
  HomeRepoImplement(this.apiServices);
  @override
  Future<Either<Failure, List<BestSellerBooks>>> fetchBestSellerBooks() async {
 try{
   var data = await  apiServices.get(endPoint:'volumes?Filtering=bestseller-ebooks&q=subject:general&Pagination =full');
   List<BestSellerBooks> bookList =[];
   for(var book in data['items']){
     bookList.add(BestSellerBooks.fromJson(book));
   }
   print(bookList);
   return right(bookList);
 }catch(e){
   if(e is DioException) {
     print(e.toString());
     return left(ServerFailure.fromDioException(e));
   }
   return left(ServerFailure.fromDioException(e.toString() as DioException));
 }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<GenresBooks>>> fetchGenresBooks()async {
    try{
      var data = await  apiServices.get(endPoint:'volumes?Filtering=bestseller-ebooks&q=subject:genres&Pagination =full');
      List<GenresBooks> genresBookList =[];
      for(var book in data['items']){
        genresBookList.add(GenresBooks.fromJson(book));
      }
      print(genresBookList);
      return right(genresBookList);
    }catch(e){
      if(e is DioException) {
        print(e.toString());
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure.fromDioException(e.toString() as DioException));
    }
  }

}