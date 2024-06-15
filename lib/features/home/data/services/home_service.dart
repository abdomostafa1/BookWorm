import 'package:book_worm/features/home/data/models/book_model/BookModel.dart';
import 'package:book_worm/utiils/api_service.dart';
import 'package:book_worm/utiils/failures.dart';
import 'package:dio/dio.dart';

class HomeService {
  final apiService = ApiService(Dio());

  Future<List<BookModel>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
          '/?q=subject:programming&flowers&filter=free-ebooks');
      final List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return books;
    } on DioException catch (e) {
      final failure = Failure.fromDioException(e);
      print(failure);
      print('statusCode=${failure.statusCode}');
      print('errorMessage=${failure.errorMessage}');
      throw failure;
    } catch (e) {
      print(e.toString());
      throw Failure(null,e.toString());
    }
  }

  Future<List<BookModel>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              '/?q=subject:programming&flowers&filter=free-ebooks&sorting=newest');
      final List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return books;
    } on DioException catch (e) {
      final failure = Failure.fromDioException(e);
      print(failure);
      print('statusCode=${failure.statusCode}');
      print('errorMessage=${failure.errorMessage}');
      throw failure;
    } catch (e) {
      print(e.toString());
      throw Failure(null,e.toString());
    }
  }
}
