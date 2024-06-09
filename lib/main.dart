import 'package:book_worm/constants.dart';
import 'package:book_worm/features/splash/presentation/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const BookWorm());
}

class BookWorm extends StatelessWidget {
  const BookWorm({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: primaryColor,
          textTheme:GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      home: const SplashScreen(),
    );
  }
}
