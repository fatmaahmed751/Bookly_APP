import 'package:bookly_app/features/search/presentation/widgets/search_result_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants.dart';
import '../../../../views/widgets/custom_text.dart';
import '../../../home/data/models/BestSellerBooks.dart';
import '../../../home/data/models/book_model.dart';
import '../../../home/presentation/manager/home_cubit/home_cubit.dart';
import '../../../home/presentation/manager/home_cubit/home_states.dart';
import '../../../home/presentation/widgets/custom_error_message.dart';
import '../../../home/presentation/widgets/rating_widget.dart';

Widget listOfSearchResult(context) => BlocConsumer<HomeCubit, HomeStates>(
    listener: (context, state) {},
    builder: (context, state) {
      if (state is HomeSearchSuccessState) {
        return ListView.separated(
           physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
            itemBuilder: (context, index) => searchResultItem(
                  state.resultSearchBooks[index],
                ),
            separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
            itemCount: state.resultSearchBooks.length);
      } else if (state is HomeSearchFailureState) {
        print(state.errorMessage.toString());
        return CustomErrorMessage(errorMessage: state.errorMessage);

      }
      return const Center(child: CircularProgressIndicator());
    });

Widget searchResultItem(BestSellerBooks model) => Padding(
      padding: const EdgeInsets.only(left: 10.0, right:10),
      child: Container(
        width: 435,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          textBaseline: TextBaseline.alphabetic,
          children: [
            Container(
              width: 120,
              height: 190,
              decoration: const BoxDecoration(
                  ),
              child: Image(
                image: NetworkImage(
                  model.volumeInfo.imageLinks?.thumbnail ?? ''
                      'https://i.pinimg.com/564x/36/16/08/361608b03c23800d8f8287798bf9d321.jpg',
                  //fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 22,
                    width: 185,
                    child: CustomText(
                      text: " ${model.volumeInfo.title} ",
                      size: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondTextColor,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 30,
                    width: 200,
                    child: CustomText(
                      text: model.volumeInfo.authors?.first ?? "Famous Author"
                         .substring(0,13),
                      size: 12,
                      fontWeight: FontWeight.w300,
                      color: AppColors.secondTextColor,
                 textOverflow:TextOverflow.ellipsis,
                    ),
                  ),
                  const RateWidget(),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    width: 181,
                    child: CustomText(
                      text: "${model.volumeInfo.description??''
                          'Power Query for Power BI and Excel is a book for people who are tired of copying '}.",
                      size: 10,
                      fontWeight: FontWeight.w200,
                      color: AppColors.secondTextColor,
                      heigtText: 1.8,
                    ),
                  ),
                  const SizedBox(height:5),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 3),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 30,
                            width: 90,
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                boxShadow: const [
                                  BoxShadow(color: Colors.grey, blurRadius: 20)
                                ],
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: TextButton(
                                onPressed: () {},
                                child: const CustomText(
                                  text: 'Add To Cart',
                                  color: AppColors.kPrimaryColor,
                                  fontWeight: FontWeight.normal,
                                  size: 11,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 3),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 30,
                            width: 90,
                            decoration: BoxDecoration(
                                color: AppColors.kPrimaryColor,
                                boxShadow: const [
                                  BoxShadow(color: Colors.grey, blurRadius: 20)
                                ],
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: TextButton(
                                onPressed: () {},
                                child: CustomText(
                                  text: 'Add To wishlist',
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.normal,
                                  size: 10,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
