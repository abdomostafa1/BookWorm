import 'package:book_worm/features/home/presentation/book_details_screen.dart';
import 'package:book_worm/features/home/presentation/home_screen.dart';
import 'package:book_worm/features/search/presentation/search_screen.dart';
import 'package:book_worm/features/splash/presentation/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

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
          return const BookDetailsScreen();
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
