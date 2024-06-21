import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../viewmodels/similar_books_cubit/similar_books_cubit.dart';
import 'custom_book_image.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.20,
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
          if (state is SimilarBooksSuccess) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return CustomBookImage(
                  imageUrl:
                      state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',
                  borderRadius: 8,
                );
              },
            );
          } else if (state is SimilarBooksFailure) {
            return Center(child: Text(state.failure.errorMessage));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

//
// ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount: state.books.length,
// itemBuilder: (context, index) {
// SizedBox(
// height: MediaQuery.of(context).size.height * 0.15,
// width: MediaQuery.of(context).size.height * 0.15,
// child: Container(
// color: Colors.yellowAccent,
// child: CustomBookImage(
// imageUrl:
// state.books[index].volumeInfo.imageLinks?.thumbnail ??
// ''),
// ),
// );
// },
// );
