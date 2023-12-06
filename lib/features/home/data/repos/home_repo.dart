import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/failure.dart';
import '../models/BestSellerBooks.dart';
import '../models/GenresBooks.dart';
import '../models/book_model.dart';

abstract class HomeRepo{
 Future<Either<Failure,List<BestSellerBooks>>> fetchBestSellerBooks();
 Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
 Future<Either<Failure,List<GenresBooks>>> fetchGenresBooks();
}