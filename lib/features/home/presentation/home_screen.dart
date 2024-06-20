import 'package:book_worm/app_router.dart';
import 'package:book_worm/constants.dart';
import 'package:book_worm/features/home/data/services/home_service.dart';
import 'package:book_worm/features/home/presentation/widgets/newest_books_listview.dart';
import 'package:book_worm/features/home/presentation/widgets/newest_book_listview_item.dart';
import 'package:book_worm/features/home/presentation/widgets/featured_books_listview.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: (){
              context.push(AppRouter.searchScreen);
            }, icon: const Icon(Icons.search))
          ],
        ),
        body: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 16),
                  FeaturedBooksListview(),
                  SizedBox(height: 32),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.0, right: 16.0, bottom: 16.0),
                        child: Text('Best Seller',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600))),
                  ),
                ],
              ),
            ),
            NewestBooksListview()
          ],
        ),
      ),
    );
  }
}
