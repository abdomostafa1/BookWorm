import 'package:book_worm/features/home/presentation/widgets/bestseller_listview.dart';
import 'package:book_worm/features/home/presentation/widgets/bestseller_listview_item.dart';
import 'package:book_worm/features/home/presentation/widgets/books_horizontal_listview.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 16),
                BooksHorizontalListview(),
                SizedBox(height: 32),
                Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                    child: Text('Best Seller',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600))),
              ],
            ),
          ),
          BestsellerListview()
        ],
      )),
    );
  }
}
