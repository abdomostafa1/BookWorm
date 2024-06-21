import 'package:book_worm/constants.dart';
import 'package:book_worm/features/home/data/models/book_model/BookModel.dart';
import 'package:book_worm/features/home/presentation/viewmodels/similar_books_cubit/similar_books_cubit.dart';
import 'package:book_worm/features/home/presentation/widgets/custom_book_image.dart';
import 'package:book_worm/features/home/presentation/widgets/custom_button.dart';
import 'package:book_worm/features/home/presentation/widgets/similar_books_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../data/services/home_service.dart';

class BookDetailsScreen extends StatefulWidget {
  const BookDetailsScreen({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  void initState() {
    super.initState();
    if (widget.bookModel.volumeInfo.categories != null) {
      print(
          'lenght of categories=${widget.bookModel.volumeInfo.categories!.length}');
    }
    // Ternary operator
    final category = widget.bookModel.volumeInfo.categories != null ||
            widget.bookModel.volumeInfo.categories!.isNotEmpty
        ? widget.bookModel.volumeInfo.categories![0]
        : 'general';
    BlocProvider.of<SimilarBooksCubit>(context)
        .fetchSimilarBooks(category: category);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(Icons.close)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined))
          ]),
        ),
        automaticallyImplyLeading: false,
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 16,
                    width: double.infinity,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .45,
                      child: CustomBookImage(
                          imageUrl: widget
                                  .bookModel.volumeInfo.imageLinks?.thumbnail ??
                              '')),
                  SizedBox(height: MediaQuery.of(context).size.height * .08),
                  Text(
                    widget.bookModel.volumeInfo.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 30, fontFamily: 'GT Sectra Fine'),
                  ),
                  Opacity(
                      opacity: 0.70,
                      child: Text(
                        widget.bookModel.volumeInfo.authors != null ||
                                widget.bookModel.volumeInfo.authors!.isNotEmpty
                            ? widget.bookModel.volumeInfo.authors![0]
                            : '',
                        style: const TextStyle(
                            fontSize: 20, fontFamily: 'GT Sectra Fine'),
                      )),
                  const SizedBox(height: 24),
                  Text(
                      'page count : ${widget.bookModel.volumeInfo.pageCount ?? 'unknown'}'),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                            text: 'Free',
                            textColor: Colors.black,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomLeft: Radius.circular(16),
                            ),
                          ),
                        ),
                        Expanded(
                          child: CustomButton(
                            text: 'Preview',
                            backgroundColor: const Color(0xffE67966),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('You can also like',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 16),
                  const SimilarBooksListview()
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
