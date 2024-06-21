import 'package:book_worm/app_router.dart';
import 'package:book_worm/features/home/presentation/viewmodels/newest_books_cubit/newest_books_cubit.dart';
import 'package:book_worm/features/home/presentation/widgets/newest_book_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class NewestBooksListview extends StatelessWidget {
  const NewestBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList.builder(
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0, left: 16.0),
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.20,
                      child: NewestBookListviewItem(
                          bookModel: state.books[index])),
                );
              });
        } else if (state is NewestBooksFailure) {
          return SliverFillRemaining(
              child: Center(
                  child: Text(state.failure.errorMessage, textAlign: TextAlign.center)));
        } else {
          return const SliverFillRemaining(
              child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}
