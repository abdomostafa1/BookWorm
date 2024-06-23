import 'package:book_worm/app_router.dart';
import 'package:book_worm/constants.dart';
import 'package:book_worm/features/home/data/services/home_service.dart';
import 'package:book_worm/features/home/presentation/viewmodels/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_worm/features/home/presentation/viewmodels/newest_books_cubit/newest_books_cubit.dart';
import 'package:book_worm/simple_bloc_observer.dart';
import 'package:book_worm/core/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  setUpServiceLocator();
  Bloc.observer=SimpleBlocObserver();
  runApp(const BookWorm());
}

class BookWorm extends StatelessWidget {
  const BookWorm({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FeaturedBooksCubit(getIt.get<HomeService>())),
        BlocProvider(create: (context) => NewestBooksCubit(getIt.get<HomeService>())),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router ,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: primaryColor,
            textTheme:GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
