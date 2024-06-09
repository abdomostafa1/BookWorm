import 'package:book_worm/features/home/presentation/widgets/bestseller_listview_item.dart';
import 'package:book_worm/features/home/presentation/widgets/books_horizontal_listview.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 16),
          const BooksHorizontalListview(),
          const SizedBox(height: 32),
          const Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
              child: Text('Best Seller',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600))),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                child: BestsellerListviewItem(),
                height: MediaQuery.of(context).size.height * 0.20,
              ))
        ],
      )),
    );
  }
}
