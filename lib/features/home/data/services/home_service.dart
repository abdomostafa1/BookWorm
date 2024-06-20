import 'package:book_worm/features/home/data/models/book_model/BookModel.dart';
import 'package:book_worm/utiils/api_service.dart';
import 'package:book_worm/utiils/failures.dart';
import 'package:dio/dio.dart';

class HomeService {
  final ApiService apiService;

  HomeService(this.apiService);

  Future<List<BookModel>> fetchFeaturedBooks() async {
    try {
      var data =
          await apiService.get(endPoint: '?q=cartoon&filter=free-ebooks');
      final List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        }
        catch(e){
          books.add(BookModel.fromJson(item));
        }
      }
      return books;
    } on DioException catch (e) {
      final failure = Failure.fromDioException(e);
      throw failure;
    } catch (e) {
      print(e.toString());
      throw Failure(null, e.toString());
    } 
  }

  Future<List<BookModel>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint: '?q=love&filter=free-ebooks&Sorting=newest');
      final List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        }
        catch(e){
          books.add(BookModel.fromJson(item));
        }
      }
      return books;
    } on DioException catch (e) {
      final failure = Failure.fromDioException(e);
      print(failure);
      throw failure;
    } catch (e) {
      print(e.toString());
      throw Failure(null, e.toString());
    }
  }

  Future<List<BookModel>> fetchSimilarBooks({required String category}) async {
    try {
      var data =
      await apiService.get(endPoint: '?q=$category&filter=free-ebooks&sorting=relevance');
      final List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        }
        catch(e){
          books.add(BookModel.fromJson(item));
        }
      }
      return books;
    } on DioException catch (e) {
      final failure = Failure.fromDioException(e);
      throw failure;
    } catch (e) {
      print(e.toString());
      throw Failure(null, e.toString());
    }
  }
}
