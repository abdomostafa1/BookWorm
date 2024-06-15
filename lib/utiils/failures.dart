import 'package:dio/dio.dart';

class Failure {
  int? statusCode;
  String errorMessage;

  Failure(this.statusCode, this.errorMessage);

  factory Failure.fromDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return Failure(e.response?.statusCode, 'connection timeout');
      case DioExceptionType.sendTimeout:
        return Failure(e.response?.statusCode, 'send timeout');
      case DioExceptionType.receiveTimeout:
        return Failure(e.response?.statusCode, 'receive timeout');
      case DioExceptionType.badCertificate:
        return Failure(e.response?.statusCode, 'bad certificate');
      case DioExceptionType.badResponse:
        return Failure.fromBadResponse(e.response!);
      case DioExceptionType.cancel:
        return Failure(e.response?.statusCode, 'request cancelled');
      case DioExceptionType.connectionError:
        return NoInternet();
      case DioExceptionType.unknown:
        return Failure(e.response?.statusCode, 'unknown');
    }
  }

  factory Failure.fromBadResponse(Response<dynamic> response) {
    if (response.statusCode == 400) {
      return BadRequest(400, response.data['error']['message']);
    } else if (response.statusCode == 401) {
      return UnAuthorizedRequest();
    } else if (response.statusCode == 404) {
      return PageNotFound();
    } else if (response.statusCode == 500) {
      return ServerFailure();
    } else {
      return Failure(response.statusCode, response.data.toString());
    }
  }
}

class UnAuthorizedRequest extends Failure {
  UnAuthorizedRequest() : super(401, 'UnAuthorized Request');
}

class BadRequest extends Failure {
  BadRequest(super.statusCode, super.errorMessage);
}

class PageNotFound extends Failure {
  PageNotFound() : super(404, 'Page Not Found Failure');
}

class ServerFailure extends Failure {
  ServerFailure() : super(500, 'Server Failure');
}

class NoInternet extends Failure {
  NoInternet():super(null,'Connection error. Please check your internet connection.');
}
