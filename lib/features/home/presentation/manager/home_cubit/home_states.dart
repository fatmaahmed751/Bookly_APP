import '../../../data/models/BestSellerBooks.dart';
import '../../../data/models/GenresBooks.dart';

class HomeStates{}

class HomeInitialState extends HomeStates{}
class HomeBestSellerLoadingState extends HomeStates{}
class HomeBestSellerSuccessState extends HomeStates{
  final List<BestSellerBooks> books;
   HomeBestSellerSuccessState(this.books);
}
class HomeBestSellerFailureState extends HomeStates{
  final String errorMessage;

  HomeBestSellerFailureState(this.errorMessage);
}

class HomeGenresLoadingState extends HomeStates{}
class HomeGenresSuccessState extends HomeStates{
  final List<GenresBooks> books;
  HomeGenresSuccessState(this.books);
}
class HomeGenresFailureState extends HomeStates{
  final String errorMessage;

  HomeGenresFailureState(this.errorMessage);
}