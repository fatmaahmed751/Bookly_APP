import '../../../../data/models/BestSellerBooks.dart';


class BestSellerStates{}

class BstSellerInitialState extends BestSellerStates{}

class BestSellerLoadingState extends BestSellerStates{}

class BestSellerSuccessState extends BestSellerStates{
  final List<BestSellerBooks> books;
 BestSellerSuccessState(this.books);
}
class BestSellerFailureState extends BestSellerStates{
  final String errorMessage;

BestSellerFailureState(this.errorMessage);
}