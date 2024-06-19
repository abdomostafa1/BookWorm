import 'package:book_worm/features/home/presentation/viewmodels/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class FeaturedBooksListview extends StatelessWidget {
  const FeaturedBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.30,
      child: BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
          if(state is FeaturedBooksSuccess ) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail);
              },
            );
          }
          else if(state is FeaturedBooksFailure){
            return Center( child: Text(state.failure.errorMessage),);
          }
          else {
            return const Center(child:CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
