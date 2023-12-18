import 'package:bookly_app/core/exceptions/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../data/repos/home_repo.dart';
import 'best_seller_states.dart';


class BestSellerCubit extends Cubit<BestSellerStates> {
  BestSellerCubit(this.homeRepo) : super(BstSellerInitialState());
  final HomeRepo homeRepo;

  static BestSellerCubit get(context) => BlocProvider.of(context);

  Future<void> fetchBestSellerBooks() async {
    emit(BestSellerLoadingState());
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold((failure) =>
        emit(BestSellerFailureState(failure.errMessage)),
            (books) => emit(BestSellerSuccessState(books)));
  }

}