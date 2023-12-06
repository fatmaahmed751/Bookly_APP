import 'package:bookly_app/core/exceptions/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repos/home_repo.dart';
import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates>{
  HomeCubit(this.homeRepo) : super(HomeInitialState());
  final HomeRepo homeRepo;

  Future<void> fetchBestSellerBooks() async{
    emit(HomeBestSellerLoadingState());
   var result = await homeRepo.fetchBestSellerBooks();
    result.fold((failure) =>
        emit(HomeBestSellerFailureState(failure.errMessage)),
            (books) => emit(HomeBestSellerSuccessState(books)));
  }

  Future<void> fetchGenresBooks() async{
    emit(HomeGenresLoadingState());
    var result = await homeRepo.fetchGenresBooks();
    result.fold((failure) =>
        emit(HomeGenresFailureState(failure.errMessage)),
            (books) => emit(HomeGenresSuccessState(books)));
  }




  }

