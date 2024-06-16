import 'package:book_worm/features/home/data/services/home_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_service.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {

  getIt.registerSingleton<HomeService>(HomeService(ApiService(Dio())));
}
