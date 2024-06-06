import 'package:book_worm/constants.dart';
import 'package:book_worm/features/home/presentation/home_screen.dart';
import 'package:book_worm/features/splash/presentation/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BookWorm());
}

class BookWorm extends StatelessWidget {
  const BookWorm({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: primaryColor),
      home: const HomeScreen(),
    );
  }
}
