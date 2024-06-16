part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> books;

  NewestBooksSuccess(this.books);
}

final class NewestBooksFailure extends NewestBooksState {
  final Failure failure;

  NewestBooksFailure(this.failure);


}
