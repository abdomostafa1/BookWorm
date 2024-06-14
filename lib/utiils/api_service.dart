import 'package:dio/dio.dart';

class ApiService {

  String baseUrl='https://www.googleapis.com/books/v1/volumes';
  final Dio dio;
  ApiService(this.dio);

  Future<dynamic> get({required String endPoint})async {
    var response = await dio.get('$baseUrl$endPoint');
    return response.data;
  }
}