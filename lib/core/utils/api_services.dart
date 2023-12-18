import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:dio/dio.dart';

class ApiServices{
  final baseUrl = 'https://www.googleapis.com/books/v1';
  final Dio dio;
  ApiServices(this.dio);

  Future<Map<String,dynamic>> get({ String? value, required String endPoint})async{
   Response response =
   await dio.get(
       '$baseUrl$endPoint');
           //volumes?q=$value+terms&key=AIzaSyCIkHI6uZojdquASCFCXlZk1m9Leob3HQU');
    // ('$baseUrl/$endPoint');
       //{required String endPoint, required String value}
   return response.data;
  }

  Future<BookModel> getSearch({ String? value,required String endPoint})async{
    try{
    Response response = await  dio.get(
        '$baseUrl/$endPoint'
    );

    if (response.statusCode == 200) {
      // Parse the response data into a BookModel object
      final BookModel bookModel = BookModel.fromJson(response.data);
      print(bookModel);
      return bookModel;

    } else {
      // Handle non-200 status codes
      throw Exception('Failed to load data. Status Code: ${response.statusCode}');
    }
  } catch (error) {
  // Handle Dio errors
  throw Exception('Dio error: $error');
  }
}
    // final BookModel bookModel = BookModel.fromJson(response.data);
    // return bookModel;
    // //dio.get('$baseUrl/volumes?q=$value&Pagination=full');
    // //BookModel bookModel= BookModel.fromJson(response.data);
    // //return response.data;
  }
