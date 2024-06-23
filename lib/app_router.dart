import 'package:book_worm/features/home/data/services/home_service.dart';
import 'package:book_worm/features/home/presentation/book_details_screen.dart';
import 'package:book_worm/features/home/presentation/home_screen.dart';
import 'package:book_worm/features/home/presentation/viewmodels/similar_books_cubit/similar_books_cubit.dart';
import 'package:book_worm/features/search/presentation/search_screen.dart';
import 'package:book_worm/features/splash/presentation/splash_screen.dart';
import 'package:book_worm/core/service_locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'core/models/book_model/BookModel.dart';


class AppRouter {
  static String homeScreen = '/homeScreen';
  static String bookDetailsScreen = '/bookDetailsScreen';
  static String searchScreen = '/searchScreen';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const SplashScreen();
          }),
      GoRoute(
        path: homeScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: bookDetailsScreen,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeService>()),
            child: BookDetailsScreen(bookModel: state.extra as BookModel),
          );
        },
      ),
      GoRoute(
        path: searchScreen,
        builder: (BuildContext context, GoRouterState state) {
          return SearchScreen();
        },
      )
    ],
  );
}
