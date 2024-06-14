import 'package:book_worm/features/home/data/models/book_model/BookModel.dart';
import 'package:book_worm/utiils/api_service.dart';
import 'package:dio/dio.dart';

class HomeService {
  final apiService = ApiService(Dio());

  Future<List<BookModel>> fetchFeaturedBooks() {}

  Future<List<BookModel>> fetchNewestBooks() async {
    var data = await apiService.get(
        endPoint:
            '/?q=subject:programming&flowers&filter=free-ebooks&sorting=newest');
    final List<BookModel> books = [];
    for (var item in data['items']) {
      books.add(BookModel.fromJson(item));
    }
    return books;
  }
}
